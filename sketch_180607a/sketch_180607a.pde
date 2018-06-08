//variables globales
int ancla=0;
PImage fondopresentacion;
import processing.video.*;
Movie movie1;
Movie movie2;

void setup()
{
background(0);
size(600,600);

fondopresentacion = loadImage ("fondo.jpg");

movie1 = new Movie(this, "video1.mp4");
movie2 = new Movie(this, "video2.mp4");


}

void draw()
{
  image (fondopresentacion, 0,0,width,height);   

  keyPressed();
}

void movieEvent(Movie m) {
  m.read();
}


void keyPressed()
{
  switch (key)
  {
    case 'a':
    image(movie1, 0, 0, width,height);
    movie1.loop(); 
    println ('a');
    break;
    
    case 'A':
    image(movie1, 0, 0, width,height);
    movie1.loop();
    println ('a');
    break;
    
    case 'b':
    image(movie2, 0, 0, width,height);
    movie2.loop();
    println ('b');
    break;
    
    case 'B':
    image(movie2, 0, 0, width,height);
    movie2.loop();
    println ('b');
    break;
  }
}