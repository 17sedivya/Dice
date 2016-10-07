void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
Die one;
int dieTotal, myValue;
void setup()
{
  noLoop();
  size(300, 400);
  
}
void draw()
{
  dieTotal = 0;
  background(255); 
  for(int y = 1; y<= 250; y+= 75)
  {
    
    for(int x = 1; x<= 250; x+= 75)
      {    
        one = new Die(x, y);
        one.show();
        one.roll();
        dieTotal = dieTotal + myValue;
      }
  }
 fill(0);
 text("Total" + dieTotal, 125, 300);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
   myValue = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    fill(0);
    rect(myX, myY, 60, 60);
    if (myValue == 1)
    {
      fill(255);
      ellipse(myX + 60/2, myY + 60/2, 8, 8);
    }
    else if (myValue == 2)
    {
      fill(255);
      ellipse(myX + 60/4, myY + 60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 3*60/4, 8, 8);
    }
    else if (myValue == 3)
    {
      fill(255);
      ellipse(myX + 60/4, myY + 60/4, 8, 8);
      ellipse(myX + 60/2, myY + 60/2, 8, 8);
      ellipse(myX + 3*60/4, myY + 3*60/4, 8, 8);
    }
    else if (myValue == 4)
    { 
     fill(255);
      ellipse(myX + 60/4, myY + 60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 3*60/4, 8, 8);
      ellipse(myX + 60/4, myY + 3*60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 60/4, 8, 8);
    }
    else if ( myValue == 5)
    {
      fill(255);
      ellipse(myX + 60/4, myY + 60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 3*60/4, 8, 8);
      ellipse(myX + 60/4, myY + 3*60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 60/4, 8, 8);
      ellipse(myX + 60/2, myY + 60/2, 8, 8);
    }
    else if (myValue == 6)
    {
     fill(255);
      ellipse(myX + 60/4, myY + 60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 3*60/4, 8, 8);
      ellipse(myX + 60/4, myY + 3*60/4, 8, 8);
      ellipse(myX + 3*60/4, myY + 60/4, 8, 8);
     ellipse(myX + 60/4, myY + 2*60/4 ,8, 8);
     ellipse(myX + 3*60/4, myY + 2*60/4, 8, 8);
    }
  }
}
