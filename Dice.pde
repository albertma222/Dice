void setup()
{
  size(500, 500);
	noLoop();
}
void draw()
{
  background(205);
  Die John = new Die(0, 0);
  John.show();
}
void mousePressed()
{
	redraw();
}
class Die
{
	int MyX;
  int MyY;
  int Roll;
	Die(int x, int y)
	{
    int MyX = x;
    int MyY = y;
    roll();
	}
	void roll()
	{
		Roll = (int)(Math.random() * 6 + 1);
	}
	void show()
	{
    fill(255);
    rect(MyX + 30, MyY + 30, 100, 100, 15);
    if(Roll == 1)
    {
    fill(0);
    ellipse(MyX + 80, MyY + 80, 20, 20);
    }
    else if(Roll == 2)
    {
    fill(0);
    ellipse(MyX + 50, MyY + 50, 20, 20);
    ellipse(MyX + 110, MyY + 110, 20, 20);
    }
    else if(Roll == 3)
    {
    fill(0);
    ellipse(MyX + 50, MyY + 50, 20, 20);
    ellipse(MyX + 80, MyY + 80, 20, 20);
    ellipse(MyX + 110, MyY + 110, 20, 20);    
    }
    else if(Roll == 4)
    {
    fill(0);
    ellipse(MyX + 50, MyY + 50, 20, 20);
    ellipse(MyX + 110, MyY + 50, 20, 20);
    ellipse(MyX + 50, MyY + 110, 20, 20);
    ellipse(MyX + 110, MyY + 110, 20, 20);
    }
    else if(Roll == 5)
    {
    fill(0);
    ellipse(MyX + 50, MyY + 110, 20, 20);
    ellipse(MyX + 50, MyY + 50, 20, 20);
    ellipse(MyX + 80, MyY + 80, 20, 20);
    ellipse(MyX + 110, MyY + 110, 20, 20);
    ellipse(MyX + 110, MyY + 50, 20, 20);
    }
    else if(Roll == 6)
    {
    fill(0);
    ellipse(MyX + 50, MyY + 110, 20, 20);
    ellipse(MyX + 50, MyY + 50, 20, 20);
    ellipse(MyX + 50, MyY + 80, 20, 20);
    ellipse(MyX + 110, MyY + 80, 20, 20);
    ellipse(MyX + 110, MyY + 110, 20, 20);
    ellipse(MyX + 110, MyY + 50, 20, 20);
    }
	}
}