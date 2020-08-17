/// @description Fall
y+=spd;
x-=spd/4;
spd+=accel;
image_angle+=spd/3;
image_alpha-=.04;
if (image_alpha<=0) instance_destroy();