float x,y,s=1.0;
void setup(){
  size(400,300);
  background(0,255,255); // cyan
  x = 125; y=150;
  frameRate(20);
}
void draw(){ 
  if(keyPressed){  
    if(key == 'a') x -= 5;
    else if(key == 'd') x += 5;
    else if(key == 'w') y -= 5;
    else if(key == 's') y += 5;
  }  
  background(0,255,255); // cyan         
  smile(x,y,s);
  smile(x+150,y-50,s*0.5);
  textSize(15);
  text(x,50,50);
  text((int)y,50,70);
  if(x<0 || x>width || y<0 || y > height){
         textSize(40);
         fill(0);
         text("game over",width/2-150, height/2);
  }
}
