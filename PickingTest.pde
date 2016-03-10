
Picker picker;
float a = 0.0;

void setup() 
{  
  size(200,200, P3D);  
  picker = new Picker(this);
}

void draw() 
{    
  background(0,128,0);
  a += 0.01;

  picker.begin();
  
  picker.start(0);
  pushMatrix();
  translate(80, 75);
  rotateX(a);
  rotateY(a);
  fill(200,40,60);
  box(50);
  popMatrix();
  
  picker.start(1);
  pushMatrix();
  translate(140, 75);
  rotateX(a);
  rotateY(a);
  fill(60,40,200);
  box(20);
  popMatrix();
  
  picker.end();
  
}

void mousePressed()
{
  println(picker.get(mouseX, mouseY));
}


