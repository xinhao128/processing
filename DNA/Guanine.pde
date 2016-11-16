class Guanine extends Purine {
  // CONSTRUCTOR
  Guanine(float xInitial, float yInitial) {
    super(xInitial, yInitial);
    this.addFG(1, "H", CH_BONDLEN);
    this.addAmine(2);
    this.addFG(6, "O", CC_BONDLEN);
  }
}
