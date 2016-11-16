class Cytosine extends Pyrimidine {
  // CONSTRUCTOR
  Cytosine(float xInitial, float yInitial) {
    super(xInitial, yInitial);
    this.addFG(2, "O", CC_BONDLEN);
    this.addAmine(4);
  }
}
