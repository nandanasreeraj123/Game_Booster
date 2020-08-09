PImage mountain;
Bird b;
PVector gravity = new PVector(0,0.5);
void setup(){
  size(400, 800);
  mountain = loadImage("background.jpg");
  b = new Bird();
}
void draw(){
  background(0,0,0);
  image(mountain,0,0);
  if(keyPressed){
    PVector up = new PVector(0,-5);
    b.applyForce(up);
  }
  b.update();
  b.show();

}
