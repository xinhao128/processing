Molecule[] mols;
Adenine a;
Cytosine c;
Guanine g;
Thymine t;

void setup() {
  size(800, 600);
  readImages();
  mols = new Molecule[4];
  mols[0] = new Adenine(-200, 100);
  mols[1] = new Cytosine(300, -150);
  mols[2] = new Guanine(300, 100);
  mols[3] = new Thymine(-200, -175);
}

void draw() {
  background(255);
  for (Molecule m : mols) {
    m.display();
  }
}

// GUI (Graphic User Interface) 
void keyPressed() {
  if (key == CODED) {
    switch(keyCode) {
      case UP: 
        moveMolecules(0, -5);
        break;
      case DOWN:
        moveMolecules(0, 5);
        break;
      case LEFT:
        moveMolecules(-5, 0);
        break;
      case RIGHT:
        moveMolecules(5, 0);
        break;
    }
  }
}

void moveMolecules(int xAmount, int yAmount) {
  for (Molecule m : mols) {
    m.moveMol(xAmount, yAmount);
  }
}



