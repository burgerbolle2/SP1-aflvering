int grade = (int) random(0, 101);

float alphaValue = 255; 
boolean fading = false; 
PFont font; //Min font

void setup() {
  size(600,600);
  println ("The Lich King has fallen!");
  println ("He dropped some loot...");
  
  
//Loot drop process
if (grade >= 95) {
  println("Gul'dans Eye!");
}
  else if (grade >= 90 && grade <= 94) {
   println("Tirion's Boots!");
   
} else if (grade == 89) {
  println("INVINCIBLE REINS!");
}
  else if (grade >= 80 && grade <= 88) {
  println("Arthas Shield!");
  }
  
  else if (grade >= 70 && grade <= 79) {
  println("Axe of Lothar");
   
  }  
  else if (grade >= 65 && grade <= 69) {
  println ("Talisman of Ner'zhul");
 
  
} else if (grade >= 54 && grade <= 64) {
  println ("Kel'thuzad's Skull!");
}
  
  else if (grade >= 34 && grade <= 44) {
    println ("Morgraines Belt of Betrayal");
    
}
  else if (grade >= 23 && grade <= 33) {
  println ("Frozen Shoulderpads of Wrath!");
}

else if (grade >= 13 && grade <= 22) {
  println ("Wand of Silencing Screams");
}
else if (grade >= 0 && grade <= 12) {
  println ("Hope Ender, Hammer of Saurfang");
}

// Animation Setup
font = createFont("Georgia", 24); // 
textFont(font);
fill(255);
background(0);
}
void draw() {
 background(0); 

  // Tegn the Lich King
  drawLichKing();

  // ISODBM 
  if (fading) {
    fill(255, 255, 255, alphaValue); // 
    textAlign(CENTER);
    text("I see only darkness before me", width/2, height - 50);
  }

  // Start fading når vi har en hvis frame
  if (frameCount > 3) {
    fading = true;
    alphaValue -= 2; // 
    
    if (alphaValue < 0) {
      alphaValue = 0; // 
    }
  }
  
  // End the animation 
  if (alphaValue == 0) {
    noLoop(); // 
  }
}

void drawLichKing() {
  // Kape
  fill(50, 50, 80, alphaValue); // Kape
  rect(width/2 - 60, height/2, 120, 200); // Kape

  // Krop
  fill(100, 100, 100, alphaValue); // Grå farve
  rect(width/2 - 40, height/2 - 80, 80, 160); // Krop
  
  // Hoved
  fill(150, 150, 150, alphaValue); // lyssegrå
  ellipse(width/2, height/2 - 140, 60, 80); // Hoved

  // Hjelm
  fill(50, 50, 50, alphaValue); // Mørkegrå
  triangle(width/2 - 30, height/2 - 160, width/2 + 30, height/2 - 160, width/2, height/2 - 200); // Hjelm
  rect(width/2 - 30, height/2 - 160, 60, 30); // Hjelm
  
  // Øjne (glowing blue)
  fill(0, 200, 255, alphaValue);
  ellipse(width/2 - 15, height/2 - 140, 10, 10); // Venstre øje
  ellipse(width/2 + 15, height/2 - 140, 10, 10); // Højre øje

  // Sværd (Frostmourne)
  fill(150, 150, 150, alphaValue);  
  rect(width/2 - 10, height/2 - 40, 20, 150); 
  fill(100, 100, 100, alphaValue);  
  rect(width/2 - 30, height/2 - 40, 60, 10); 
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    alphaValue = 255;
    fading = false;
    loop();
  }
}
