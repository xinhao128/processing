abstract class Purine extends Pyrimidine {
  Purine(float xInitial, float yInitial) {
    super(xInitial, yInitial); // calls the parent's constructor
    Atom a4 = getAtom(4);
    Atom a5 = getAtom(5);
    
    Atom a7 = a5.createAtom(7, "N", 228, CC_BONDLEN);
    this.atomList.add(a7);
    
    Atom a8 = a7.createAtom(8, "C", 156, CC_BONDLEN);
    this.atomList.add(a8);
    
    Atom a9 = a8.createAtom(9, "N", 84, CC_BONDLEN);
    this.atomList.add(a9);
    
    Bond b7 = new Bond(a5, a7);
    this.bondList.add(b7);
    
    Bond b8 = new Bond(a7, a8);
    this.bondList.add(b8);
    
    Bond b9 = new Bond(a8, a9);
    this.bondList.add(b9);
    
    Bond b10 = new Bond(a9, a4);
    this.bondList.add(b10);
  }
}
