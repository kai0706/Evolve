class pikachu extends pichu {
  String name; 
  
  pikachu(float x, float y, String bodyColor, String cheeksColor, String name){
    super(x, y, bodyColor, cheeksColor);
    this.name = name;
  }
  
  void drawTail(){
    drawFace();
    
    // Display name
    textSize(20);
    fill(0);
    textAlign(CENTER);
    text(name, x, y + 200);
    
    // Pikachu tail
    fill(255, 255, 0 ); 
    beginShape();
    vertex(x - 20, y + 100);
    vertex(x - 20 + 40, y + 120);
    vertex(x - 20 + 20, y + 120);
    vertex(x - 20 + 40, y + 140);
    vertex(x - 20, y + 120);
    vertex(x - 20 + 20, y + 120);
    vertex(x - 20, y + 100);
    endShape(CLOSE);
  }
}
