class raichu extends pichu{
  String name; 
  raichu(float x, float y, String bodyColor, String cheeksColor, String name){
    super(x,y,bodyColor,cheeksColor);
    this.name = name;
  }
  void drawEar(){
    textSize(20);
    fill(0);
    textAlign(CENTER);
    text(name, x, y + 200);
    drawFace();
    fill(150,75,0);
    // Left ear
    push();
    translate(x - 70, y - 90);
    rotate(radians(45));
    ellipse(0, 0, 120, 100);
    fill (255,255,0);
    ellipse(0,0, 80 , 60);
    pop();
    fill(150,75,0);
    // Right ear
    push();
    translate(x + 70, y - 90);
    rotate(radians(-45));
    ellipse(0, 0, 120, 100);
    fill (255,255,0);
    ellipse(0,0, 80 , 60);
    pop();
  }
}
