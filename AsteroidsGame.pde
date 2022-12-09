Spaceship dog = new Spaceship();
Star[] cat = new Star[100];
ArrayList <Bullet> gun = new ArrayList <Bullet> ();
ArrayList <Asteroid> snake = new ArrayList <Asteroid> ();
public void setup() 
{
  size(800, 800);
  for (int i = 0; i<cat.length; i++)
    cat[i] = new Star();
  for (int i = 0; i<20; i++) 
    snake.add(new Asteroid());
}
public void draw() 
{
  background(255);
  noStroke();
  for (int i = 0; i<cat.length; i++) {
    cat[i].display();
    cat[i].reset();
  }
  for (int i = 0; i<snake.size(); i++) {
    snake.get(i).show();
    snake.get(i).move();
    float d = dist((float)dog.getX(), (float)dog.getY(), (float)snake.get(i).getX(), (float)snake.get(i).getY());
    if (d<38)
      snake.remove(i);
  }
  for(int i = 0; i < gun.size(); i++){
    gun.get(i).move();
    gun.get(i).show();
    for(int j = 0; j < snake.size(); j++){
    float d = dist((float)gun.get(i).getX(), (float)gun.get(i).getY(), (float)snake.get(j).getX(), (float)snake.get(j).getY());
    if(d<40){
      gun.remove(i);
      snake.remove(j);
      break;
      }
    }
  
  }
  dog.show();
  dog.move();
}
public void keyPressed()
{
    if (key == 'w')
      dog.accelerate(1);
    if (key == 's')
      dog.accelerate(-1);
    if (key == 'd')
      dog.turn(30);
    if (key == 'a')
      dog.turn(-30);
    if (key == 'h')
      dog.hyperSpace();
    if (key == 'f'){
      gun.add(new Bullet(dog));
  }
}
