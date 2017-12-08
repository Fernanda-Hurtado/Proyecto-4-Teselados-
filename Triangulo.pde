interface figura{
void mostrar();
}

class triangulo implements figura{
float x,y,b,h,deltax,deltay,a;

triangulo(float x_, float y_, float b_,float h_){
x=x_;
y=y_;
b=b_;
h=h_;
}
  
  void mostrar(){
    
  beginShape();
  vertex(x,y);
  a=degrees(atan(h/(b/2)));
  println(a);
 deltax=x+b*cos(radians(0));
 deltay=y+h*sin(radians(0));
  
  vertex(deltax,deltay);
    
  deltax=x+sqrt(h*h+b*b/2)*cos(radians(a));
  deltay=y-sqrt(h*h+b*b/2)*sin(radians(a));
  println(deltax);
   vertex(deltax,deltay);
   vertex(x,y);
    
  endShape(CLOSE);
  }//fin vertice 
}//fin clase