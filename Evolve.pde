class pichu {
  float x;
  float y;
  String bodyColor;
  String cheeksColor;
  
  pichu(float x, float y, String bodyColor, String cheeksColor) {
    this.x = x;
    this.y = y;
    this.bodyColor = bodyColor;
    this.cheeksColor = cheeksColor;
  }
  
  void drawFace() {
    fill(220);
    strokeWeight(5);
    
    // Pichu body
    if (bodyColor == "yellow" ) {
      fill(255, 255, 0);
    }
    if (bodyColor == "lightyellow"){
      fill(255,255,150);
    }
    if (bodyColor == "orange"){
      fill(255,165,0);
    }
    ellipse(x, y, 200, 200);
    
    // Pichu eyes
    fill(0); 
    circle(x - 30, y - 20, 30);
    circle(x + 30, y - 20, 30); 
    
    // Pichu pupils
    fill(255); 
    circle(x - 25, y - 25, 13); 
    circle(x + 25, y - 25, 13); 
    
    // Pichu cheeks
    if (cheeksColor == "yellow" ) {
      fill(255, 255, 0);
    }
    if (cheeksColor == "red"){
      fill(255,0,0);
    }
    if (cheeksColor == "pink"){
      fill(255, 182, 193);
    }
    circle(x - 70, y + 20, 30); 
    circle(x + 70, y + 20, 30);
    
    // Pichu nose
    fill(0);
    ellipse(x, y, 10, 5); 
    
    // Pichu mouth
    noFill();
    stroke(0); 
    arc(x - 10, y + 10, 30, 20, radians(40), radians(140));
    arc(x + 10, y + 10, 30, 20, radians(40), radians(140)); 
  }

}
pichu[] b;
void setup() {
  size(1200, 1200);
  b = new pichu[3];
  b[0] = new pichu(300, 300, "lightyellow" , "pink");
  b[1] = new pikachu(600, 300, "yellow" , "red", "Pikachu");
  b[2] = new raichu( 900, 300, "orange" , "yellow", "Raichu");
  for(int i = 1; i < 3; i++){b[i].show();}
  b[0].drawFace();
}
