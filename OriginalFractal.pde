public void setup() {
  size(1000, 1000);
  rectMode(CENTER);
  noStroke();
}

public void draw() {
    
   if((int)(Math.random()*100) < 50){
   fill((int)(Math.random()*100)+150, 0, 0);
      rect(500, 500,1000, 1000);
  } else {
   fill(0, 0, 0, (int)(Math.random()*50)+50 );
       rect(500, 500,1000, 1000);
  }
  myFractal(500, 500, 100, true);
  myFractal(250, 250, 50, true);
  myFractal(750, 250, 50, true);
  myFractal(750, 750, 50, true);
  myFractal(250, 750, 50, true);

  myFractal(150, 500, 50, true);
  myFractal(850, 500, 50, true);
  myFractal(500, 150, 50, true);
  myFractal(500, 850, 50, true);
}

public void myFractal(int x, int y, int siz, boolean shap) {

  if (shap == true) {
    for (int i = siz; i > 0; i--) {
  
      pushMatrix();
      fill((int)(Math.random()*155)+100, 0, (int)(Math.random()*155)+100, (int)(Math.random()*155)+50);
      if (Math.random() < .25)
        rect(x-x/i, y+y/i, i/2, i/2);
      else if ((Math.random() < .5))
        rect(x-x/i, y-y/i, i/2, i/2);
      else if ((Math.random() < .75))
        rect(x+x/i, y-y/i, i/2, i/2);
      else
        rect(x+x/i, y+y/i, i/2, i/2);
      popMatrix();
    }
    shap = false;
  } else {

    for (int i = siz; i > 0; i--) {
      pushMatrix();
      if(Math.random()<.8)
      fill((int)(Math.random()*255) + 100, 0, 0, (int)(Math.random()*255));
      else
      fill(0);
      ellipse(x, y-y%i, i*2, i*2);
      popMatrix();
    }
    shap = true;
  }

  if (siz > 10) {
    for (int i = 2; i < 5; i++) {
      int s = (int)(Math.random()*3)+1;
      myFractal(x-siz/i*s, y, siz/i, shap);
      myFractal(x+siz/i*s, y, siz/i, shap);
      myFractal(x, y-siz/i*s, siz/i, shap);
      myFractal(x, y+siz/i*s, siz/i, shap);
    }
  }
}
