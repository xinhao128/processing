class Thymine extends Pyrimidine {
  // CONSTRUCTOR
  Thymine(float xInitial, float yInitial) {
    super(xInitial, yInitial);
    this.addFG(2, "O", CC_BONDLEN);
    this.addFG(3, "H", CH_BONDLEN);
    this.addFG(4, "O", CC_BONDLEN);
    this.addFG(5, "C", CC_BONDLEN);
  }
}
