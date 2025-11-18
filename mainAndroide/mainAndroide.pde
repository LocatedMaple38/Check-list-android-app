int intItem = 1;
float[] xItem = new float[intItem], yItem = new float[intItem];
float widthItem, heightItem;
float[] xMark = new float[intItem], yMark = new float[intItem];
float widthMark, heightMark;
float[] xName = new float[intItem],  yName = new float[intItem];
float widthName, heightName;
String[] stringName = {"test"};
float[] xDay = new float[intItem], yDay = new float[intItem];
float widthDay, heightDay;
String[] stringDay = {"mon", "tus", "wed", "thr", "fry", "sat", "sun"};
float[] xPrice = new float[intItem], yPrice = new float[intItem];
float widthPrice, heightPrice;
String[] stringPrice = {"0.50"};
String[] stringNav = {"ToDo", "Dun"};
float[] xNav = new float[stringNav.length], yNav = new float[stringNav.length], widthNav = new float[stringNav.length], heightNav = new float[stringNav.length];
int intItemNew = 3;
float[] xItemNew = new float[intItemNew], yItemNew = new float[intItemNew], widthItemNew = new float[intItemNew], heightItemNew = new float[intItemNew];
int intBack = 4;
float[] xBack = new float[intBack], yBack = new float[intBack], widthBack = new float[intBack], heightBack = new float[intBack];
float heightBackground;

void setup(){
  xNav[0] = 0;
  yNav[0] = 0;
  
  for(int i = 0; i < stringNav.length; i++){
    widthNav[i] = (width/stringNav.length)*i;
  }
  
  for(int i = 0; i < stringNav.length; i++){
    heightNav[i] = 20;
  }
  
  xItem[0] = width*1/10;
  yItem[0] = yNav[0]+10;
  widthItem = width*6/10;
  heightItem = 50;
  
  
  
  if(height > yNav[0]+10+(heightItem+10)*yItem.length){
    heightBackground = height;
  }else{
    heightBackground = yNav[0]+10+(heightItem+10)*yItem.length;
  }
}

void draw(){
  rect(0, 0, width, heightBackground);
}

void keyPressed(){
  
}

void mousePressed(){
  
}
