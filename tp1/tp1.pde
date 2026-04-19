// alumno: Melanie Cuenca, comision: 3, trabajo practico n1 04/2026
PImage img;

void setup(){
  size(800,400);
  img= loadImage("mural.jpg");
}
void draw() {
  background(255);
  image(img,0,0,400,400);


 
 noStroke();

  // Fondo pared
  fill(230, 190, 180); 
  rect(400, 0, 400, 400);

  // Texto
  fill(0);
  textSize(63);
  textAlign(CENTER);
  text("MADERERA", 600, 90);
  text("PLATENSE", 600, 150);


  // Cuerpo (tronco)
  fill(200, 170, 120);
  rect(530, 205, 109, 120);
  
  //cabeza
  fill(200, 170, 120);
  pushMatrix();
  translate(-23, 110);
  rotate(-0.2);
  rect(520, 200, 10, 17);
   popMatrix();
   
   pushMatrix();
  translate(48, -123);
  rotate(0.2);
  rect(635, 200, 10, 17);
   popMatrix();
  
  fill(210, 189, 150);
  ellipse(582, 200, 120, 40);
  
  //piernas
  fill(200, 170, 120);
  triangle(510, 390, 540, 320, 600, 340);
  triangle(610, 359, 716, 345, 595, 320);
  
   //brazo izquierdo
  fill(200, 170, 120);
  pushMatrix();
  translate(-30, 465);
  rotate(-0.8);
  rect(470, 269, 60, 20);
  popMatrix();
 
 fill(200, 170, 120);
  pushMatrix();
  translate(184, -135);
  rotate(13);
  rect(470, 269, 55, 19);
  popMatrix();
  
 // brazo derecho
 fill(200, 170, 120);
  pushMatrix();
  translate(323, -160);
  rotate(13);
  rect(470, 269, 55, 19);
  popMatrix();
 
   fill(200, 170, 120);
  pushMatrix();
  translate(121, 332);
  rotate(12);
  rect(470, 269, 50, 16);
  popMatrix();
  
 
  //mano
  ellipse(710, 283, 20, 20);
 

  //dedos
  fill(170, 140, 100);
  ellipse(708, 277, 7, 7);
  ellipse(715, 280, 6, 6);
  ellipse(715, 287, 6, 6);
  ellipse(707, 267, 9, 18);
  

  //ropa
  fill(50, 100, 250);
  rect(530, 306, 109, 50);
  
  //tirante izquierda
  pushMatrix();
  translate(-43, 485);
  rotate(-0.8);
  rect(543, 263 , 13, 53);
  popMatrix();
  
  //tirante derecha
  pushMatrix();
  translate(456, -294);
  rotate(0.8);
  rect(543, 263 , 13, 53);
  popMatrix();

  //botones
  fill(255);
  ellipse(555, 299, 10, 10);
  ellipse(635, 299, 10, 10);
  
  //texto arriba
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("MP", 600, 330);
  
  // Ojos
  fill(255);
  ellipse(590, 233, 20, 50);
  ellipse(615, 233, 20, 50);

  fill(0);
  ellipse(589, 246, 10, 10);
  ellipse(615, 246, 10, 10);

  // Nariz
  fill(50);
  ellipse(603, 259, 30, 18);

  // Boca
  fill(153, 80, 20);
  arc(600, 275, 50, 40, 0, PI);
  
  fill(255, 120, 120);
  ellipse(600, 289, 30, 15);
  
  //cejas
  stroke(50);
  strokeWeight(5);
  noFill();
  
  //izquierda
  arc(589, 203, 20, 20, PI, TWO_PI);
  
  // derecha 
  arc(615, 203, 20, 20, PI, TWO_PI);

  
  PFont fuente;
  
  size(800, 400);
  fuente = createFont("Arial Black", 50);
  textFont(fuente);

}
