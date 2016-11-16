class Atom {
  int number; // pyrimidine & imidazole atoms are numbered!
  String element; // symbol, e.g. "C", "N, "O", "H"
  float x;
  float y;
  
  // CONSTRUCTOR
  Atom(int num, String sym, float xInitial, float yInitial) {
    this.number = num;
    this.element = sym;
    this.x = xInitial;    
    this.y = yInitial;
  }
  
  float getX(Molecule m) {
    return m.x + this.x;
  }
  
  float getY(Molecule m) {
    return m.y + this.y;
  }
  
  void display(Molecule m) {
    displayImage(this.element, this.getX(m), this.getY(m));
  }
  
  Atom createAtom(int number, String element, float angle, float distance) {
    float x = this.x + (distance * cos(radians(angle)));
    float y = this.y + (distance * sin(radians(angle)));
    Atom aNew = new Atom(number, element, x, y);
    return aNew;
  }
}
