class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int[]{-8, 10, -8, -16};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = 0;
      myCenterX = myCenterY = 400;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
    }
    void hyperSpace(){
      myCenterX = (int)(Math.random()*600)+100;
      myCenterY = (int)(Math.random()*600)+100;
      myXspeed = myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);
    }
    
}
