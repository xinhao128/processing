PFont font1;//declared
PFont font2;
PFont font3;
PFont font4;
DynText[] t;//declaration


void setup() {
  size(800, 600);
  background(0);


  font1 = createFont("Arial", 32);
  font2 = createFont("Century Gothic", 32);
  font3 = createFont("Bookman Old Style", 32);
  font4 = createFont("Cambria", 32);
  drawBackgroundTexture();

  t = new DynText[20];// initalized
  t[0] = new DynText("white", 357, 300, 22, color(140, 138, 188), font1, 0, LEFT);
  t[1] = new DynText("Freedom", width/2, 240, 90, color(255, 0, 30), font2, 0, LEFT);
  t[2] =  new DynText("every", 340, 205, 20, color(245, 234, 20), font2, 0, LEFT);
  t[3] = new DynText("Dream", 305, 170, 80, color(135, 58, 214), font2, 0, LEFT);
  t[4] =  new DynText("must", 575, 190, 23, color(214, 252, 232), font3, 0, LEFT);
  t[5] = new DynText("nation", 85, 300, 90, color(250, 255, 5), font2, 0, LEFT);
  t[6] = new DynText("black", 473, 190, 25, color(20, 245, 232), font3, 0, LEFT);
  t[7] = new DynText("people", 220, 310, 70, color(160, 80, 90), font2, 270, RIGHT);
  t[8] = new DynText("faith", 310, 248, 35, color(34, 242, 70), font2, 90, RIGHT);
  t[9] = new DynText("justice", 445, 370, 50, color(240, 29, 216), font2, 270, LEFT);
  t[10] = new DynText("children", 230, 340, 45, color(73, 183, 57), font3, 0, LEFT);
  t[11] = new DynText("God", 410, 410, 45, color(255, 88, 10), font2, 0, LEFT);
  t[12] = new DynText("together", 450, 270, 35, color(124, 227, 184), font3, 0, LEFT);
  t[13] = new DynText("satisfied", 460, 273, 30, color(173, 184, 245), font4, 90, LEFT);
  t[14] = new DynText("negro", 55, 340, 47, color(155, 178, 224), font1, 0, LEFT);
  t[15] = new DynText("brotherhood", 300, 250, 35, color(255, 243, 173), font4, 270, LEFT);
  t[16] = new DynText("stand", 85, 315, 55, color(86, 23, 90), font3, 270, LEFT);
  t[17] = new DynText("rise", 150, 247, 30, color(180, 84, 147), font3, 0, LEFT);
  t[18] = new DynText("let", 358, 235, 25, color(239, 255, 193), font4, 0, LEFT);
  t[19] = new DynText("ring", 405, 265, 30, color(245, 25, 25), font4, 0, RIGHT);
}

void draw() {
  background(0);
  drawBackgroundTexture();

  for (int i=0; i<20; i++) {
    t[i].display();
    t[i].inc();
  }
}

void drawBackgroundTexture() {
  int sizeOfText = 24;
  String strBk = "The World As I See It The World As I See It The World As I See It The World As I See It";
  textFont(font2);
  textSize(sizeOfText);
  fill(30);
  textAlign(LEFT);
  for (int line = 1; line <= 40; line++) {
    float y = line * sizeOfText;
    text(strBk, 0, y);
  }
}


//Background Text
//pushMatrix();
//translate(width/2, height/2);
//for (int x = 0; x < 70;x++) {
//String strText = "Have you ever hear the speech I HAVE A DREAM?";
//color xclr = color(random(360), random(360), random(360), 35);
//textSize(40);
//textFont(font4);
//fill(xclr);
//rotate(radians(random(70)));
//text(strText, random(-width/2, width/2), random(-height/2, height/2) );
//}
//popMatrix(); 

//DynText[] b = new DynText [50];
//for (int line = 0; line < 50; line ++) {

//String strText = "Have you ever hear the speech I HAVE A DREAM of Martin Luther King";
//int x = width/2;
//int y = height/2;
//float angle = line *10;
//color clr = color(random(256), random(256), random(256));
//b[line] = new DynText(strText, x, y, 50, clr, font2, angle, LEFT);
//b[line].display();
//}

