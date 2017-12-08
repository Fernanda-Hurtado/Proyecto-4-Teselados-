
import processing.video.*;

figura triang;

ArrayList <figura> figuras;

int numPixelsWide, numPixelsHigh;
int blockSize = 10;
Movie mov;
color movColors[];

void setup() {
  size(940, 660);
  noStroke();
   figuras = new ArrayList<figura> ();
   figuras.add(triang);
   
  mov = new Movie(this, "video1_4.mp4");
  mov.loop();
  numPixelsWide = width / blockSize;
  numPixelsHigh = height / blockSize;
  println(numPixelsWide);
  movColors = new color[numPixelsWide * numPixelsHigh];
}

// Display values from movie
void draw() {
  if (mov.available() == true) {
    mov.read();
    mov.loadPixels();
    int count = 0;
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = mov.get(i*blockSize, j*blockSize);
        count++;
      }
    }
  }

  background(255);
  for (int j = 0; j < numPixelsHigh; j++) {
    for (int i = 0; i < numPixelsWide; i++) {
      fill(movColors[j*numPixelsWide + i]);
      //rect(i*blockSize, j*blockSize, blockSize, blockSize);
      triang=new triangulo(i*blockSize, j*blockSize, blockSize, blockSize);
      triang.mostrar();
    }
  }

}



/*import processing.video.*;

figura triang;

ArrayList <figura> figuras;

 void setup(){
   
   size(400,300);
   figuras = new ArrayList<figura> ();
   figuras.add(triang);
   
  triang=new triangulo(mouseX-15,mouseY+30*sqrt(3)/4,30);
  
 }//cierre setup

 
 void draw(){

  // background(#71B1E0);

  
 triang.mostrar();
 }//cierre draw
*/
 