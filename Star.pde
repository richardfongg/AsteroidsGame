class Star //note that this class does NOT extend Floater
{
  private int myEllipse, myStarX, myStarY, myStarSpeed, myStarColor1, myStarColor2, myStarColor3;
  public Star()
  {
    myEllipse = (int)(Math.random()*20) + 5;
    myStarX = (int)(Math.random()*800);
    myStarY = (int)(Math.random()*800);
    myStarSpeed = 5;
    myStarColor1 = (int)(Math.random()*256);
    myStarColor2 = (int)(Math.random()*256);
    myStarColor3 = (int)(Math.random()*256);
  }
  public void reset()
  {
    myStarY += myStarSpeed;
     if (myStarY > 850) 
       myStarY = -100;
  }
  public void display()
  {
    fill(myStarColor1, myStarColor2, myStarColor3);
    ellipse(myStarX, myStarY, myEllipse, myEllipse);
  }
}
