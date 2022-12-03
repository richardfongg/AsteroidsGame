class Asteroid extends Floater  
{ 
  protected double rotSpeed;
  public Asteroid() {
    rotSpeed = (int)(Math.random()*5);
    corners = 6;
    yCorners = new int[] {25, 25, 0, -25, -25, 0};
    xCorners = new int[]{-25, 25, 35, 25, -25, -35};
    myColor = #964B00;
    myCenterX = (int)(Math.random()*600)+100;
    myCenterY = (int)(Math.random()*600)+100;
    myXspeed = (int)(Math.random()*5)+1;
    myYspeed = (int)(Math.random()*5)+1;
    myPointDirection = 0;
}
  void move() {
    turn(rotSpeed);
    super.move();

  }
  
}
