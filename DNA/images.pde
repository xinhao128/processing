Element[] elements = {
  new Element("C", "carbon.gif"), 
  new Element("N", "nitrogen.gif"), 
  new Element("O", "oxygen.gif"), 
  new Element("H", "hydrogen.gif")
  };

  void readImages() {
    for (int i = 0; i < elements.length; i++) {
      Element e = elements[i];
      e.img = loadImage(e.docName);
    }
  }

void displayImage(String symbol, float x, float y) {
  imageMode(CENTER);
  for (int i = 0; i < elements.length; i++) {
    Element e = elements[i];
    if (symbol.equals(e.symbol)) {
      image(e.img, x, y);
    }
  }
}

