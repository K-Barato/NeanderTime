if (!physics_enable) exit;

if (vel_x < 0)
{
	image_xscale = -1;
}
else if (vel_x > 0)
{
	image_xscale = 1;
}