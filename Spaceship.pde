class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -16};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = 0;
      myCenterX = myCenterY = 400;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
    }
}
