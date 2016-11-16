final float TOTAL_TIME = 200.0;
class DynText {
  String strText;
  float xEnd, startX;
  float yEnd, startY;
  int t;
  int fontSize;
  color clr;
  PFont font;
  float angle;
  int align;


  // CONSTRUCTOR
  DynText(String strText1, float x1, float y1, int fSize1, color clr1, PFont font1, float angle1, int align1 ) {
    this.strText = strText1;
    this.xEnd = x1;
    this.yEnd = y1;
    this.fontSize = fSize1;
    this.clr = clr1;
    this.font = font1;
    this.angle = angle1;
    this.align = align1;
    this.init();
  }

  void display() {
    textAlign(this.align);
    textFont(this.font);
    textSize(this.fontSize);
    fill (this.clr);

    pushMatrix();
    float time = min(this.t, TOTAL_TIME);
    float x =  this.startX + (this.xEnd - this.startX) * (time/TOTAL_TIME); 
    float y =  this.startY + (this.yEnd - this.startY) * (time/TOTAL_TIME);
    translate(x, y);
    rotate (radians(this.angle));
    text(this.strText, 0, 0);
    popMatrix();
  }

  void inc() {
    println(this.t);
    if (this.t <2 * TOTAL_TIME) {
      this.t++;
    }
    else {
      this.t = 0;
    }
  }

  void init() {
    this.t = 0;
    float number = random(0, 4);
    if ( number < 1 ) {
      leftEdge();
    }
    else if (number < 2) {
      rightEdge();
    }
    else if (number < 3) {
      topEdge();
    }
    else {
      bottomEdge();
    }
  }

  void leftEdge() {
    startX = 0;
    startY = random(height);
  }

  void rightEdge() {
    startX = width;
    startY = random(height);
  }

  void topEdge() {
    startX = random(width);
    startY = 0;
  }

  void bottomEdge() {
    startX = random(width);
    startY = height;
  }
}

