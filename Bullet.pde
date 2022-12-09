class Bullet extends Floater
{
  public Bullet(Spaceship dog){
    myCenterX = dog.getX();
    myCenterY = dog.getY();
    myXspeed = dog.getXspeed();
    myYspeed = dog.getYspeed();
    accelerate(100);
    myPointDirection = dog.getPointDirection();
  }
  public void show(){
    fill(0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    double dRadians = myPointDirection*(Math.PI/180);        
    myXspeed = ((10) * Math.cos(dRadians));    
    myYspeed = ((10) * Math.sin(dRadians));
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
       
  }
}
