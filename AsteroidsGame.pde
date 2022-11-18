Spaceship dog = new Spaceship();
Star[] cat = new Star[100];
public void setup() 
{
  size(800,800);
  for (int i = 0; i<cat.length; i++)
    cat[i] = new Star();
}
public void draw() 
{
  background(255);
  for (int i = 0; i<cat.length; i++) {
    cat[i].display();
    //cat[i].reset();
  }
  dog.show();
  dog.move();
}
public void keyPressed()
{
  if(keyPressed) {
    if(key == 'w')
      dog.accelerate(1);
    if(key == 's')
     dog.accelerate(-1);
    if(key == 'd')
      dog.turn(30);
    if(key == 'a')
      dog.turn(-30);
  }
}
