final int CC_BONDLEN = 60;
final int CH_BONDLEN = 42;

abstract class Molecule {
  ArrayList<Atom> atomList;
  ArrayList<Bond> bondList;
  float x;
  float y;

  // CONSTRUCTOR 
  Molecule(float xInitial, float yInitial) {
    this.atomList = new ArrayList<Atom>();
    this.bondList = new ArrayList<Bond>();
    this.x = xInitial;
    this.y = yInitial;
  }

  void drawAtoms() {
    for (Atom a: this.atomList) {
      a.display(this);
    }
  }

  void drawBonds() {
    for (Bond b: this.bondList) {
      b.display(this);
    }
  }

  void display() {
    pushMatrix();
    translate(width/2, height/2);
    this.drawBonds();
    this.drawAtoms();
    popMatrix();
  }

  Atom getAtom(int number) {
    for (Atom a : this.atomList) {
      if (a.number == number) {
        return a;
      }
    }
    return null;
  }

  Atom addAtomBond(Atom aFrom, int number, String element, float angle, float distance) {
    Atom aTo = aFrom.createAtom(number, element, angle, distance);
    this.atomList.add(aTo);
    Bond b = new Bond(aTo, aFrom);
    this.bondList.add(b);
    return aTo;
  }
  
  void moveMol(int xAmount, int yAmount) {
    this.x += xAmount;
    this.y += yAmount;
  }
}

