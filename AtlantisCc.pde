PFont fontePixel;
PImage inicio, regras, main, derrota;
// Frame Dragao
PImage d1, d2, d3;
// Frame Bola de fogo
PImage b1, b2, b3, b4, b5, b6, b7;
// Frames Explosão
PImage e1, e2, e3, e4, e5, e6, e7;
// Frames Nuvens
PImage n1, n2, n3;

void setup() {
  size(520, 800);
  noStroke();
  fontePixel = createFont("assets/fontePixel.ttf", 20);
  textFont(fontePixel);
  inicio = loadImage("assets/inicio.jpg");
  regras = loadImage("assets/regras.jpg");
  main = loadImage("assets/main.jpg");
  derrota = loadImage("assets/derrota.jpg");
  colorMode(HSB, 360, 100, 100);
  d1 = loadImage("assets/d1.png");
  d2 = loadImage("assets/d2.png");
  d3 = loadImage("assets/d3.png");
  b1 = loadImage("assets/b1.png");
  b2 = loadImage("assets/b2.png");
  b3 = loadImage("assets/b3.png");
  b4 = loadImage("assets/b4.png");
  b5 = loadImage("assets/b5.png");
  b6 = loadImage("assets/b6.png");
  b7 = loadImage("assets/b7.png");
  e1 = loadImage("assets/e1.png");
  e2 = loadImage("assets/e2.png");
  e3 = loadImage("assets/e3.png");
  e4 = loadImage("assets/e4.png");
  e5 = loadImage("assets/e5.png");
  e6 = loadImage("assets/e6.png");
  e7 = loadImage("assets/e7.png");
  n1 = loadImage("assets/n1.png");
  n2 = loadImage("assets/n2.png");
  n3 = loadImage("assets/n3.png");
}

int dificuldade = 500; // Quanto maior, mais fácil
int pontos = 0;
int y = int(random(170, 210));
int y1 = int(random(170, 210));
int y2 = int(random(170, 210));
int y3 = int(random(170, 210));

// Variáveis das Telas
int tela = 0;
int telaMenu = 0;
int telaJogo = 1;
int telaRegras = 2;
int telaDerrota = 3;
int rand = int(random(width*0.1, width*4.2));
int rand1 = int(random(width*0.1, width*4.2));
int rand2 = int(random(width*0.1, width*4.2));
int rand3 = int(random(width*0.1, width*4.2));

int xn1 = int(random(width*0.1, width*0.9));
int xn2 = int(random(width*0.1, width*0.9));
int xn3 = int(random(width*0.1, width*0.9));

void draw() {
  if (tela == telaMenu) {
    menu();
  } else if (tela == telaJogo) {
    jogo();
  } else if (tela == telaRegras) {
    regras();
  } else if (tela == telaDerrota) {
    derrota();
  }
}

void menu() {
  image(inicio, 0, 0, width, height);
  pontos = 0;
}

void regras() {
  image(regras, 0, 0, width, height);
}

void derrota() {
  int seg = millis();
  dificuldade = 500;
  image(derrota, 0, 0, width, height);
  if ((seg/200) % 4 == 0) {
    image(d1, width*0.25, height*0.01, width*0.5, height*0.19);
  } else if ((seg/200) % 4 == 1) {
    image(d2, width*0.25, height*0.01, width*0.5, height*0.19);
  } else if ((seg/200) % 4 == 2) {
    image(d3, width*0.25, height*0.01, width*0.5, height*0.19);
  } else if ((seg/200) % 4 == 3) {
    image(d2, width*0.25, height*0.01, width*0.5, height*0.19);
  }
  if (pontos < 10) {
    fill(233, 36, 27);
    textSize(width*0.042);
    text("Seus pontos: " + pontos, width*0.355, height*0.78);
    fill(233, 0, 100);
    text("Seus pontos: " + pontos, width*0.355, height*0.778);
  } else if (pontos < 100) {
    fill(233, 36, 27);
    textSize(width*0.042);
    text("Seus pontos: " + pontos, width*0.345, height*0.78);
    fill(233, 0, 100);
    text("Seus pontos: " + pontos, width*0.345, height*0.778);
  } else {
    fill(233, 36, 27);
    textSize(width*0.042);
    text("Seus pontos: " + pontos, width*0.34, height*0.78);
    fill(233, 0, 100);
    text("Seus pontos: " + pontos, width*0.34, height*0.778);
  }
  // Animações das explosões da tela de derrota:
  if ((seg/100) % 7 == 0) {
    image(e1, width*0.04, height*0.85, width*0.2, height*0.17);
    image(e1, width*0.29, height*0.85, width*0.2, height*0.17);
    image(e1, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e1, width*0.75, height*0.85, width*0.2, height*0.17);
  } else if ((seg/100) % 7 == 1) {
    image(e2, width*0.04, height*0.85, width*0.2, height*0.19);
    image(e2, width*0.29, height*0.851, width*0.2, height*0.17);
    image(e2, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e2, width*0.75, height*0.85, width*0.2, height*0.17);
  } else if ((seg/100) % 7 == 2) {
    image(e3, width*0.04, height*0.85, width*0.2, height*0.19);
    image(e3, width*0.29, height*0.85, width*0.2, height*0.17);
    image(e3, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e3, width*0.75, height*0.85, width*0.2, height*0.17);
  } else if ((seg/100) % 7 == 3) {
    image(e4, width*0.04, height*0.85, width*0.2, height*0.19);
    image(e4, width*0.29, height*0.85, width*0.2, height*0.17);
    image(e4, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e4, width*0.75, height*0.85, width*0.2, height*0.17);
  } else if ((seg/100) % 7 == 4) {
    image(e5, width*0.04, height*0.85, width*0.2, height*0.19);
    image(e5, width*0.29, height*0.85, width*0.2, height*0.17);
    image(e5, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e5, width*0.75, height*0.85, width*0.2, height*0.17);
  } else if ((seg/100) % 7 == 5) {
    image(e6, width*0.04, height*0.85, width*0.2, height*0.19);
    image(e6, width*0.29, height*0.85, width*0.2, height*0.17);
    image(e6, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e6, width*0.75, height*0.85, width*0.2, height*0.17);
  } else if ((seg/100) % 7 == 6) {
    image(e7, width*0.04, height*0.85, width*0.2, height*0.19);
    image(e7, width*0.29, height*0.85, width*0.2, height*0.17);
    image(e7, width*0.52, height*0.85, width*0.2, height*0.17);
    image(e7, width*0.75, height*0.85, width*0.2, height*0.17);
  }
}

void jogo() {

  int seg = millis();
  image(main, 0, 0, width, height);

  tint(360, 70);
  image(n1, xn1, 100, width*0.54, height*0.09);
  xn1 = xn1 + 3;
  if (xn1 > width) xn1 = -280;

  image(n2, xn2, 240, width*0.39, height*0.06);
  xn2 = xn2 + 2;
  if (xn2 > width) xn2 = -230;

  image(n3, xn3, 350, width*0.25, height*0.038);
  xn3 = xn3 + 1;
  if (xn3 > width) xn3 = -230;

  noTint();
  // Animação dos sprites do Dragão:
  if ((seg/200) % 4 == 0) {
    image(d1, width*0.25, height*0.01, width*0.5, height*0.19);
  } else if ((seg/200) % 4 == 1) {
    image(d2, width*0.25, height*0.01, width*0.5, height*0.19);
  } else if ((seg/200) % 4 == 2) {
    image(d3, width*0.25, height*0.01, width*0.5, height*0.19);
  } else if ((seg/200) % 4 == 3) {
    image(d2, width*0.25, height*0.01, width*0.5, height*0.19);
  }

  // Incremento da dificuldade em função do tempo:
  if (seg % 4 == 0) dificuldade--;

  // Bolas de fogo caindo, animação aqui.
  for (int i = 0; i < height; i = i + dificuldade) { // Nem eu sei o que esse for() tá fazendo...
    if ((seg/150) % 7 == 0) {
      image(b1, rand, y, width*0.1, height*0.08);
      image(b1, rand1, y1, width*0.1, height*0.08);
      image(b1, rand2, y2, width*0.1, height*0.08);
      image(b1, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/150) % 7 == 1) {
      image(b2, rand, y, width*0.1, height*0.08);
      image(b2, rand1, y1, width*0.1, height*0.08);
      image(b2, rand2, y2, width*0.1, height*0.08);
      image(b2, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/150) % 7 == 2) {
      image(b3, rand, y, width*0.1, height*0.08);
      image(b3, rand1, y1, width*0.1, height*0.08);
      image(b3, rand2, y2, width*0.1, height*0.08);
      image(b3, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/150) % 7 == 3) {
      image(b4, rand, y, width*0.1, height*0.08);
      image(b4, rand1, y1, width*0.1, height*0.08);
      image(b4, rand2, y2, width*0.1, height*0.08);
      image(b4, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/150) % 7 == 4) {
      image(b5, rand, y, width*0.1, height*0.08);
      image(b5, rand1, y1, width*0.1, height*0.08);
      image(b5, rand2, y2, width*0.1, height*0.08);
      image(b5, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/150) % 7 == 5) {
      image(b6, rand, y, width*0.1, height*0.08);
      image(b6, rand1, y1, width*0.1, height*0.08);
      image(b6, rand2, y2, width*0.1, height*0.08);
      image(b6, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/150) % 7 == 6) {
      image(b7, rand, y, width*0.1, height*0.08);
      image(b7, rand1, y1, width*0.1, height*0.08);
      image(b7, rand2, y2, width*0.1, height*0.08);
      image(b7, rand3, y3, width*0.1, height*0.08);
    }
    y = y + int(random(0, 5));
    y1 = y1 + int(random(0, 5));
    y2 = y2 + int(random(0, 5));
    y3 = y3 + int(random(0, 5));
  }

  // Se as bolas de fogo passarem da área do escudo:
  if (y > height*0.85 || y1 > height*0.85 || y2 > height*0.85 || y3 > height*0.85 ) {

    if ((seg/100) % 7 == 0) {
      image(e1, rand, height*0.85, width*0.1, height*0.08);
      image(e1, rand1, height*0.85, width*0.1, height*0.08);
      image(e1, rand2, height*0.85, width*0.1, height*0.08);
      image(e1, rand3, height*0.85, width*0.1, height*0.08);
    } else if ((seg/100) % 7 == 1) {
      image(e2, rand, y, width*0.1, height*0.08);
      image(e2, rand1, y1, width*0.1, height*0.08);
      image(e2, rand2, y2, width*0.1, height*0.08);
      image(e2, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/100) % 7 == 2) {
      image(e3, rand, y, width*0.1, height*0.08);
      image(e3, rand1, y1, width*0.1, height*0.08);
      image(e3, rand2, y2, width*0.1, height*0.08);
      image(e3, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/100) % 7 == 3) {
      image(e4, rand, y, width*0.1, height*0.08);
      image(e4, rand1, y1, width*0.1, height*0.08);
      image(e4, rand2, y2, width*0.1, height*0.08);
      image(e4, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/100) % 7 == 4) {
      image(e5, rand, y, width*0.1, height*0.08);
      image(e5, rand1, y1, width*0.1, height*0.08);
      image(e5, rand2, y2, width*0.1, height*0.08);
      image(e5, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/100) % 7 == 5) {
      image(e6, rand, y, width*0.1, height*0.08);
      image(e6, rand1, y1, width*0.1, height*0.08);
      image(e6, rand2, y2, width*0.1, height*0.08);
      image(e6, rand3, y3, width*0.1, height*0.08);
    } else if ((seg/100) % 7 == 6) {
      image(e7, rand, y, width*0.1, height*0.08);
      image(e7, rand1, y1, width*0.1, height*0.08);
      image(e7, rand2, y2, width*0.1, height*0.08);
      image(e7, rand3, y3, width*0.1, height*0.08);
    }
    println(seg/1000 % 7);
    if ((seg/1000) % 7 > 2) {
      tela = 3;
      y = int(random(170, 210));
      y1 = int(random(170, 210));
      y2 = int(random(170, 210));
      y3 = int(random(170, 210));
    }
  }

  fill(0, 255, 30, 50);
  rect(0, height*0.5, width, 100);
  textSize(18);
  fill(210, 70, 30);
  text("Pontos: " + pontos, width*0.01, height*0.58);
  fill(210, 0, 100);
  text("Pontos: " + pontos, width*0.01, height*0.578);
  textSize(10);
  fill(210, 70, 30);
  text("E\nS\nC\nU\nD\nO", width*0.97, height*0.53);
  fill(210, 0, 100);
  text("E\nS\nC\nU\nD\nO", width*0.97, height*0.528);
}

void mousePressed() {
  if (y > height*0.5 - 50 && y < height*0.5 + 50) {
    y = int(random(170, 210));
    rand = int(random(0, width - 50));
    pontos++;
  }
  if (y1 > height*0.5 - 50 && y1 < height*0.5 + 50) {
    y1 = int(random(170, 210));
    rand1 = int(random(0, width - 50));
    pontos++;
  }
  if (y2 > height*0.5 - 50 && y2 < height*0.5 + 50) {
    y2 = int(random(170, 210));
    rand2 = int(random(0, width - 50));
    pontos++;
  }
  if (y3 > height*0.5 - 50 && y3 < height*0.5 + 50) {
    y3 = int(random(170, 210));
    rand3 = int(random(0, width - 50));
    pontos++;
  }
  // Tela Inicial
  if (mouseX > width*0.375 && mouseX < width*0.625 && mouseY > height*0.407 && mouseY < height*0.467 && tela == 0) {
    tela = 1;
  } else if (mouseX > width*0.365 && mouseX < width*0.635 && mouseY > height*0.488 && mouseY < height*0.548 && tela == 0) {
    tela = 2;
  } else if (mouseX > width*0.365 && mouseX < width*0.635 && mouseY > height*0.568 && mouseY < height*0.628 && tela == 0) {
    exit();
  }
  // Tela regras
  if (mouseX > width*0.422 && mouseX < width*0.578 && mouseY > height*0.755 && mouseY < height*0.842 && tela == 2) {
    tela = 0;
  }
  // Tela Derrota
  if (mouseX > width*0.325 && mouseX < width*0.675 && mouseY > height*0.44 && mouseY < height*0.528 && tela == 3) {
    tela = 0;
  } else if (mouseX > width*0.325 && mouseX < width*0.675 && mouseY > height*0.55 && mouseY < height*0.632 && tela == 3) {
    exit();
  }
}
