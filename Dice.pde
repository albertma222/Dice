void setup()
{
	noLoop();
}
void draw()
{
  background(255);
  Die.show();
}
void mousePressed()
{
	redraw();
}
class Die
{
	int x;
  int y;
	Die(int x, int y)
	{
    
	}
	void roll(int x, int y)
	{
		//your code here
	}
	void show()
	{
		ellipse(x, y, 10, 10);
    ellipse(x, y, 20, 20);
	}
}