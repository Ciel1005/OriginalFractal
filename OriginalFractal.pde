public void setup(){
  size(1000, 1000);
  rectMode(CENTER);
  
}

public void draw(){

  if(Math.random()< .5){
  fill((int)(Math.random()*100)+150, 0, 0);
  background(0);
  }else{
  fill(100);
  background((int)(Math.random()*100)+150, 0, 0);
  }
  myFractal(500, 500, 500, true);
  myFractal(150, 150, 100, true);
  myFractal(850, 150, 100, true);
  myFractal(850, 850, 100, true);
  myFractal(150, 850, 100, true);
  
}

public void myFractal(int x, int y, int siz, boolean shap){
  
  if(shap == true){
   for(int i = siz; i > 0; i--){
    fill((int)(Math.random()*255)+100); 
    rect(x, y, i/2, i/2);
    }
  shap = false;
} else {
  for(int i = siz; i > 0; i--){
    fill((int)(Math.random()*255) + 100, 0, 0,(int)(Math.random()*255));
  ellipse(x, y, i*2, i*2);
  }
  shap = true;
}
  
  if(siz > 10){
  for(int i = 2; i < 5; i++){
  myFractal(x-siz/i, y, siz/i, shap);
  myFractal(x+siz/i, y, siz/i, shap);
  myFractal(x, y-siz/i,siz/i, shap);
  myFractal(x, y+siz/i, siz/i, shap);
 
  }
 }

  
}
