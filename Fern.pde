double x = 0, y = 0, a, b, b2, c, d;
void setup() {
  size (900, 900);
}

void draw() {
  b2 = (mouseX-450)/1500.0;
  if (pmouseX != mouseX || keyPressed) {
    background(139, 141, 122);
    fill(76, 206, 74);
    textSize(50);
    text("Barnsley Fern by Rocky Zhang", 100, 50);
    for (int i = 0; i < 300000; i++) {
      int t = p();
      if (t == 4) {
        a = 0.85*x + b2*y;
        b = -b2*x + 0.85*y + 1.6;
        x = a; 
        y = b;
      } else if (t == 3) {
        a = -0.15*x + 0.28*y;
        b = 0.44 + 0.24*y + 0.26*x;
        x = a; 
        y = b;
      } else if (t ==2) {
        a = 0.2*x - 0.26*y;
        b = 1.6 + 0.22*y + 0.23*x;
        x = a; 
        y = b;
      } else {
        b = y*0.16;
        a = 0;
        x = a; 
        y = b;
      }
      set((int)(x*60+width/2+c), (int)(y*-60+700+d), color(76, 206, 74));
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      d -= 5;
    } else if (keyCode == DOWN) {
      d += 5;
    } else if (keyCode == LEFT) {
      c -= 5;
    } else if (keyCode == RIGHT) {
      c += 5;
    }
  }
}

int p() {
  double r = random(0, 1);
  if (r>=.15) return 4;
  else if (r>=.08) return 3;
  else if (r>=.01) return 2;
  else return 1;
}