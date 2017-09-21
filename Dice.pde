int totalRoll;
int currentRoll;

void setup()
{
  PFont myFont;
  myFont = loadFont("KunstlerScript-48.vlw");
  textFont(myFont);
  size(700, 700);
	noLoop();
}
void draw()
{
  background(205, 20, 20);
  noStroke();
  fill(250, 200, 5);
  rect(30, 0, 30, 700);
  rect(640, 0, 30, 700);
  rect(640, 0, 30, 700);
  for(int y = 0; y < 500; y = y + 60)
  {
    for(int x = 70; x < 600; x = x + 60)
    {
      Die John = new Die(x, y);
      totalRoll = John.Roll + totalRoll;
      currentRoll = John.Roll + currentRoll;
      John.show();
    }
  }
  stroke(0);
  textSize(40);
  text("Total amount rolled so far: " + totalRoll, 70, 640);
  text("Current Roll: " + currentRoll, 60, 680);
  fill(0);
  textSize(60);
  text("Click Anywhere to Roll!", 120, 600);
  textSize(38);
  if(currentRoll >= 300)
  {
    text("Winner winner chicken dinner!", 300, 680);
  }
  else
  {
    text("Here , take this L.", 300, 680);
  }
}
void mousePressed()
{
  redraw();
  currentRoll = 0;
}
class Die
{
	int MyX;
  int MyY;
  int Roll;
	Die(int x, int y)
	{
     MyX = x;
     MyY = y;
     roll();
	}
	void roll()
	{
		Roll = (int)(Math.random() * 6 + 1);
	}
	void show()
	{
    fill(255);
    rect(MyX + 15, MyY + 15, 50, 50, 7.5);
    if(Roll == 1)
    {
    fill(0);
    ellipse(MyX + 40, MyY + 40, 10, 10);
    }
    else if(Roll == 2)
    {
    fill(0);
    ellipse(MyX + 25, MyY + 25, 10, 10);
    ellipse(MyX + 55, MyY + 55, 10, 10);
    }
    else if(Roll == 3)
    {
    fill(0);
    ellipse(MyX + 25, MyY + 25, 10, 10);
    ellipse(MyX + 40, MyY + 40, 10, 10);
    ellipse(MyX + 55, MyY + 55, 10, 10);
    }
    else if(Roll == 4)
    {
    fill(0);
    ellipse(MyX + 25, MyY + 25, 10, 10);
    ellipse(MyX + 55, MyY + 25, 10, 10);
    ellipse(MyX + 25, MyY + 55, 10, 10);
    ellipse(MyX + 55, MyY + 55, 10, 10);
    }
    else if(Roll == 5)
    {
    fill(0);
    ellipse(MyX + 25, MyY + 55, 10, 10);
    ellipse(MyX + 25, MyY + 25, 10, 10);
    ellipse(MyX + 40, MyY + 40, 10, 10);
    ellipse(MyX + 55, MyY + 55, 10, 10);
    ellipse(MyX + 55, MyY + 25, 10, 10);
    }
    else if(Roll == 6)
    {
    fill(0);
    ellipse(MyX + 25, MyY + 55, 10, 10);
    ellipse(MyX + 25, MyY + 25, 10, 10);
    ellipse(MyX + 25, MyY + 40, 10, 10);
    ellipse(MyX + 55, MyY + 40, 10, 10);
    ellipse(MyX + 55, MyY + 55, 10, 10);
    ellipse(MyX + 55, MyY + 25, 10, 10);
    }
	}
}