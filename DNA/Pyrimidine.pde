abstract class Pyrimidine extends Molecule {

  // CONSTRUCTOR
  Pyrimidine(float xInitial, float yInitial) {
    super(xInitial, yInitial); // calls the parent's constructor

      Atom a1 = new Atom(1, "N", 0, 0);
    this.atomList.add(a1); 

    Atom a2 = new Atom(2, "C", CC_BONDLEN * -0.5, CC_BONDLEN * sqrt(3)/2);
    this.atomList.add(a2);

    Atom a3 = new Atom(3, "N", CC_BONDLEN * -1.5, CC_BONDLEN * sqrt(3)/2);
    this.atomList.add(a3);

    Atom a4 = new Atom(4, "C", CC_BONDLEN * -2, 0);
    this.atomList.add(a4);

    Atom a5 = new Atom(5, "C", CC_BONDLEN * -1.5, CC_BONDLEN * -sqrt(3)/2);
    this.atomList.add(a5);

    Atom a6 = new Atom(6, "C", CC_BONDLEN * -0.5, CC_BONDLEN * -sqrt(3)/2);
    this.atomList.add(a6);

    Bond b1 = new Bond(a1, a2);
    this.bondList.add(b1);

    Bond b2 = new Bond(a2, a3);
    this.bondList.add(b2);

    Bond b3 = new Bond(a3, a4);
    this.bondList.add(b3);

    Bond b4 = new Bond(a4, a5);
    this.bondList.add(b4);

    Bond b5 = new Bond(a5, a6);
    this.bondList.add(b5);

    Bond b6 = new Bond(a6, a1);
    this.bondList.add(b6);
  }

  float getAtomAngle(int pyrAtomNumber) {
    return 60 * pyrAtomNumber - 60;
  }

  Atom addFG(int pyrAtomNumber, String element, float distance) {
    Atom aFrom = this.getAtom(pyrAtomNumber);
    float angle = this.getAtomAngle(pyrAtomNumber);
    int newAtomNumber = this.atomList.size() + 1;
    Atom aNew = addAtomBond(aFrom, newAtomNumber, element, angle, distance);
    return aNew;
  }

  void addAmine(int pyrAtomNumber) {
    Atom atomN = this.addFG(pyrAtomNumber, "N", CC_BONDLEN);
    float angle = this.getAtomAngle(pyrAtomNumber);
    int newAtomNumber = this.atomList.size() + 1;
    this.addAtomBond(atomN, newAtomNumber, "H", angle - 60, CH_BONDLEN);
    this.addAtomBond(atomN, newAtomNumber+1, "H", angle + 60, CH_BONDLEN);
  }
}

