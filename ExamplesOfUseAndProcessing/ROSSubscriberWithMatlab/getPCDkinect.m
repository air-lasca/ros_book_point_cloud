%Close the ROS communication 
rosshutdown;
%Open the ROS communication
rosinit;
%transfer the topic for the variable depth_registered
depth_registered = rossubscriber('/camera/depth/points');
%Receives the value of the topic
pcloud = receive(depth_registered);
%Displays data
scatter3(pcloud);
