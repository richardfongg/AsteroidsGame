class Star //note that this class does NOT extend Floater
{
  private int myEllipse, myStarX, myStarY, myStarSpeed;
  public Star()
  {
    myEllipse = (int)(Math.random()*50) + 5;
    myStarX = (int)(Math.random()*800);
    myStarY = (int)(Math.random()*1000)-1000;
    myStarSpeed = 5;
  }
  public void reset()
  {
    myStarY += myStarSpeed;
     if (myStarY > 850) 
       myStarY = -100;
  }
  public void display()
  {
    fill(#808080);
    ellipse(myStarX, myStarY, myEllipse, myEllipse);
  }
}
