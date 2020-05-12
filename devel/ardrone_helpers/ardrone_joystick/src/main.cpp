/*
* ardrone_joystick:
*
* This software provides a connection between a PS3-Joystick and the ardrone_brown - drone-driver
*
* It receives the joystick state from the joy-node and publishes the corresponding commands to the driver
*
* Author: Nikolas Engelhard
*
*
*/


#include "ros/ros.h"
#include "sensor_msgs/Joy.h"
#include "geometry_msgs/Twist.h"
#include "std_msgs/Empty.h"
#include "std_srvs/Empty.h"

const int PUBLISH_FREQ = 50;

using namespace std;

struct TeleopArDrone
{
  ros::Subscriber joy_sub;
  ros::Publisher pub_takeoff, pub_land, pub_toggle_state, pub_vel;

  bool got_first_joy_msg;

  bool is_flying;
  bool toggle_pressed_in_last_msg;
  bool cam_toggle_pressed_in_last_msg;
  std_srvs::Empty srv_empty;

	ros::NodeHandle nh_;
	geometry_msgs::Twist twist;
	ros::ServiceClient srv_cl_cam;


	void joyCb(const sensor_msgs::JoyConstPtr joy_msg){


	 // Mapeo de la velocidad
	 float scale = 1;
	 twist.linear.x = scale*joy_msg->axes[1]; // adelante/atras
	 twist.linear.y = scale*joy_msg->axes[0]; // izquierda/derecha
   twist.linear.z = scale*joy_msg->axes[4]; // arriba/abajo
   twist.angular.z = scale*joy_msg->axes[3]; // yaw

	 // button 10 (L1): dead man switch
	 bool dead_man_pressed = joy_msg->buttons.at(4);

	 // button 11 (R1): switch emergeny state 
	 bool emergency_toggle_pressed = joy_msg->buttons.at(11);

	 // button 0 (select): switch camera mode
  	 bool cam_toggle_pressed = joy_msg->buttons.at(0);


	 if (!is_flying && dead_man_pressed){
	  ROS_INFO("L1 uuuuu nigggga was pressed, Taking off!");
	  pub_takeoff.publish(std_msgs::Empty());
	  is_flying = true;
	 }

	 if (is_flying && dead_man_pressed){
	  ROS_INFO("L1 was released, landing");
	  pub_land.publish(std_msgs::Empty());
	  is_flying = false;
	 }

	 // toggle only once!
	 if (!toggle_pressed_in_last_msg && emergency_toggle_pressed){
	  ROS_INFO("Changing emergency status");
	  pub_toggle_state.publish(std_msgs::Empty());
	 }
	 toggle_pressed_in_last_msg = emergency_toggle_pressed;


	 if (!cam_toggle_pressed_in_last_msg && cam_toggle_pressed){
	  ROS_INFO("Changing Camera");
	  if (!srv_cl_cam.call(srv_empty))  ROS_INFO("Failed to toggle Camera");
	 }
	 cam_toggle_pressed_in_last_msg = cam_toggle_pressed;



	}


	TeleopArDrone(){

	 twist.linear.x = twist.linear.y = twist.linear.z = 0;
	 twist.angular.x = twist.angular.y = twist.angular.z = 0;

	 is_flying = false;
	 got_first_joy_msg = false;

	 joy_sub = nh_.subscribe("/joy", 1,&TeleopArDrone::joyCb, this);
	 toggle_pressed_in_last_msg = cam_toggle_pressed_in_last_msg = false;

	 pub_takeoff       = nh_.advertise<std_msgs::Empty>("/ardrone/takeoff",1);
	 pub_land          = nh_.advertise<std_msgs::Empty>("/ardrone/land",1);
	 pub_toggle_state  = nh_.advertise<std_msgs::Empty>("/ardrone/reset",1);
	 pub_vel           = nh_.advertise<geometry_msgs::Twist>("/cmd_vel",1);
	 srv_cl_cam        = nh_.serviceClient<std_srvs::Empty>("/ardrone/togglecam",1);
	}

	void send_cmd_vel(){
    pub_vel.publish(twist);
  }


};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "ardrone_teleop"); //Inicializacion del nodo

  ROS_INFO("Started ArDrone joystick-Teleop");
  ROS_INFO("Press L1 to toggle emergency-state");//Impresion de inicializacion
  ROS_INFO("Press and hold L2 for takeoff");
  ROS_INFO("Press 'select' to choose camera");

  TeleopArDrone teleop;//Creacion del modelo
  ros::Rate pub_rate(PUBLISH_FREQ);//velocidad de publicacion 50Hz

  while (teleop.nh_.ok())
  {
    ros::spinOnce();
    teleop.send_cmd_vel();
    pub_rate.sleep();//CALBACK
  }

  return 0;
}
