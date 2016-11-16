class Bond {
  Atom a1;
  Atom a2;
  
  // CONSTRUCTOR 
  Bond(Atom atom1, Atom atom2) {
    this.a1 = atom1;
    this.a2 = atom2;
  }
  
  void display(Molecule m) {
    strokeWeight(3);
    stroke(0, 0, 255);
    line(this.a1.getX(m), this.a1.getY(m), this.a2.getX(m), this.a2.getY(m));
  }
}
