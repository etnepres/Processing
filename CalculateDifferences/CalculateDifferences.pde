//    Copyright (c) 2013 João Fernandes
//    http://www.etnepres.com
//    etnepres@gmail.com
//    https://github.com/etnepres/Processing

int buildWidth = 320;
int buildHeight = 240;

int rectWidth = 50;
int rectHeight = 50;

void setup() {
  background(0);
  size(buildWidth, buildHeight);
  size(displayWidth, displayHeight);

  rectMode(CENTER);

  calculateDifferences();
}

void draw() {

  background(0);
  rect(width/2, height/2, rectWidth, rectHeight );
}

//Function to calculate right size
int calculateHeight(int size) {
  return size*(height/buildHeight);
}
int  calculateWidth(int size) {
  return size*(width/buildWidth);
}

void calculateDifferences() {
  rectWidth =  calculateWidth(rectWidth);
  rectHeight = calculateHeight(rectHeight);
}


