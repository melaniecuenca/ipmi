 // alumno: Melanie Cuenca, materia:ipmi, comision: 3

PImage img1, img2, img3, img4, img5, img6, img7, img8;

PImage fondo;

int pantalla = 0;

float yTexto = -50;

boolean inicio = false;

float yImg1 = 600;
float yImg2 = 600;
float yImg3 = 600;
float yImg4 = 600;
float yImg5 = 600;

void setup() {

  size(640, 480);

  // IMAGENES
  fondo = loadImage("fondo.jpg");
  img1 = loadImage("banda.jpg");
  img2 = loadImage("integrantes.jpg");
  img3 = loadImage("Pleaser.jpg");
  img4 = loadImage("Spring.jpg");
  img5 = loadImage("album.jpg");
  img6 = loadImage("clairo.jpg");
  img7 = loadImage("coachella.jpg");
  img8 = loadImage("concierto.jpg"); 
  
  textSize(20);
}

void draw() {

  background(0);

  // PANTALLA DE INICIO
  if (inicio == false) {

    pantallaInicio();
  }

  // PRESENTACION
  else {

    // CAMBIO AUTOMATICO
    if (frameCount > 300) {
      pantalla = 1;
      yImg1 = 600;
    }

    if (frameCount > 700) {
      pantalla = 2;
      yImg2 = 600;
    }

    if (frameCount > 900) {
      pantalla = 3;
      yImg3 = 600;
    }

    if (frameCount > 1200) {
      pantalla = 4;
      yImg4 = 600;
    }

    // PANTALLAS
    if (pantalla == 0) {
      pantalla1();
    }

    if (pantalla == 1) {
      pantalla2();
    }

    if (pantalla == 2) {
      pantalla3();
    }

    if (pantalla == 3) {
      pantalla4();
    }

    if (pantalla == 4) {
      pantalla5();
    }
  }
}


// ---------------- INICIO ----------------

void pantallaInicio() {
  
  image(fondo, 0, 0, width, height);

  fill(255);
  
   textSize(60);

  // LETRAS ANIMADAS
  if (frameCount > 10) {
    text("W", 120, 170);
  }

  if (frameCount > 20) {
    text("A", 180, 170);
  }

  if (frameCount > 30) {
    text("L", 240, 170);
  }

  if (frameCount > 40) {
    text("L", 290, 170);
  }

  if (frameCount > 50) {
    text("O", 340, 170);
  }

  if (frameCount > 60) {
    text("W", 400, 170);
  }

  if (frameCount > 70) {
    text("S", 470, 170);
  }


  // BOTON
  fill(255);
  rect(234, 320, 114, 60, 10);

  fill(0);
  textSize(30);

  text("INICIAR", 245, 360);
}


// ---------------- PANTALLA 1 ----------------

void pantalla1() {

  image(fondo, 0, 0, width, height);
  
  stroke(255);
  strokeWeight(3);

  image(img1, 170, yImg1, 250, 250);
  yImg1-= 5;
  
  if (yImg1 < 170) {
  yImg1 = 170;
}

  fill(30);
  rect(40, 40, 560, 100, 20);

  fill(255);

  textSize(20);

  text("Wallows es una banda de indie pop y indie rock", 70, 80);

  text("originaria de Los Angeles, California.", 70,117);

  yTexto += 3;

  if (yTexto > 80) {
    yTexto = 80;
  }
}


// ---------------- PANTALLA 2 ----------------

void pantalla2() {
  
  image(fondo, 0, 0, width, height);

  stroke(255);
  strokeWeight(3);

  image(img2, 170,  yImg2, 290, 250);
   yImg2-= 5;
   if (yImg2 < 170) {
  yImg2 = 170;
}

  fill(30);
  rect(35, 40, 570, 100, 20);

  fill(255);

  textSize(18);

  text("La banda esta formada por Dylan Minnette, Braeden Lemasters", 50, 60);

  text("y Cole Preston, quienes se conocen desde la infancia y empezaron a tocar", 50, 84);

  text("juntos desde 2011 con diferentes nombres como The Feavery", 50, 107);
  
  text("y The Narwhals.", 50, 129);
}


// ---------------- PANTALLA 3 ----------------

void pantalla3() {
  
  image(fondo, 0, 0, width, height);

  stroke(255);
  strokeWeight(3);

  image(img3, 120,  yImg3, 200, 250);
  
  
  image(img4, 379, yImg3, 200, 250);
  yImg3-= 5;
  if (yImg3 < 170) {
  yImg3 = 170;
}

  fill(30);
  rect(30, 40, 580, 100, 20);

  fill(255);

  textSize(18);

  text("En 2017 adoptaron el nombre de Wallows y lanzaron su primer éxito:", 50, 60);

  text("Pleaser, que llegó al puesto 2 en el ranking viral mundial de Spotify,", 50, 84);

  text("firmaron con Atlantic Records en 2018, lanzaron el EP Spring. ", 50, 107);
 
}


// ---------------- PANTALLA 4 ----------------

void pantalla4() {
  
  image(fondo, 0, 0, width, height);

  stroke(255);
  strokeWeight(3);

  image(img5, 120,  yImg4, 200, 250);
  
  image(img6, 379, yImg4, 200, 250);
  yImg4-= 5;
  if (yImg4 < 170) {
  yImg4 = 170;
}

  fill(30);
  rect(25, 40, 590, 100, 20);

  textSize(18);

  // CONDICIONAL
  if (frameCount % 60 < 30) {
    fill(255);
  } else {
    fill(180, 180, 255);
  }

  text("En 2019 lanzaron 'Nothing Happens', que incluye su canción más famosa:", 50, 78);

  text("Are You Bored Yet? en colaboración con Clairo.", 50, 117);

}


// ---------------- PANTALLA 5 ----------------

void pantalla5() {
  
  image(fondo, 0, 0, width, height);

  stroke(255);
  strokeWeight(3);

  image(img7, 5,  yImg5, 400, 250);
  
  image(img8, 250,  yImg5, 400, 250);
  yImg5-= 5;
  if (yImg5 < 170) {
  yImg5 = 170;
}

  fill(30);
  rect(40, 40, 560, 100, 20);

  fill(255);

  textSize(18);

  text("En 2019 fue su primera aparicion en el festival de música y artes Coachella", 45, 75);

  text(" y luego otra en 2022, continuan realizando giras internacionales.", 50, 105);


  // BOTON REINICIAR
  fill(255);
  rect(234, 430, 109, 35, 10);

  fill(0);

  textSize(20);

  text("REINICIAR", 245, 455);
}


// ---------------- CLICK ----------------

void mousePressed() {

  // BOTON INICIO
  if (inicio == false) {

    if (mouseX > 220 && mouseX < 420 &&
      mouseY > 320 && mouseY < 380) {

      inicio = true;

      frameCount = 0;
    }
  }

  // BOTON REINICIAR
  else if (pantalla == 4) {

    if (mouseX > 220 && mouseX < 420 &&
      mouseY > 430 && mouseY < 465) {

      pantalla = 0;

      frameCount = 0;

      yTexto = -50;

      inicio = false;
    }
  }
}
