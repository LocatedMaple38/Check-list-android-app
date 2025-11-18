int intItem = 1;
float[] xItem = new float[intItem], yItem = new float[intItem];
float widthItem, heightItem;
float[] xMark = new float[intItem], yMark = new float[intItem];
float widthMark, heightMark;
float[] xMark1 = new float[intItem], yMark1 = new float[intItem], widthMark1 = new float[intItem], heightMark1 = new float[intItem];
float[] xMark2 = new float[intItem], yMark2 = new float[intItem], widthMark2 = new float[intItem], heightMark2 = new float[intItem];
boolean[] boolMark = new boolean[intItem];
float[] xName = new float[intItem], yName = new float[intItem];
float widthName, heightName;
float[] xMore = new float[intItem], yMore = new float[intItem];
float widthMore, heightMore;
String[] stringName = {"test"};
float[] xDay = new float[intItem], yDay = new float[intItem];
float widthDay, heightDay;
String[] stringDay = {"mon", "tus", "wed", "thr", "fry", "sat", "sun"};
int[] intDay = new int[intItem];
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

void setup() {
  size(9*40, 16*40);
  textAlign(CENTER, CENTER);
  for (int i = 0; i < stringNav.length; i++) {
    xNav[i] = (width/stringNav.length)*i;
    yNav[i] = 0;
    widthNav[i] = width/stringNav.length;
    heightNav[i] = 20;
  }



  for (int i = 0; i < intItem; i++) {
    xItem[i] = width*1/10;
    yItem[i] = heightNav[0]+10;
    widthItem = width*8/10;
    heightItem = 50;

    xMark[i] = xItem[i]+heightItem*1/4;
    yMark[i] = yItem[i]+heightItem*1/4;
    widthMark = heightItem*1/2;
    heightMark = heightItem*1/2;

    xMark1[i] = xMark[i]+widthMark*1/8;
    yMark1[i] = yMark[i]+heightMark*1/8;
    widthMark1[i] = xMark[i]+widthMark*7/8;
    heightMark1[i] = yMark[i]+heightMark*7/8;

    xMark2[i] = xMark[i]+widthMark*7/8;
    yMark2[i] = yMark[i]+heightMark*1/8;
    widthMark2[i] = xMark[i]+widthMark*1/8;
    heightMark2[i] = yMark[i]+heightMark*7/8;

    boolMark[i] = false;

    xName[i] = xItem[i]+heightItem;
    yName[i] = yItem[i]+heightItem*1/8;
    widthName = (xItem[i]+widthItem)-(xItem[i]+heightItem);
    heightName = heightItem*1/4;

    xDay[i] = xItem[i]+heightItem;
    yDay[i] = yItem[i]+heightItem*5/8;
    widthDay = ((xItem[i]+widthItem)-(xItem[i]+heightItem))*1/3;
    heightDay = heightItem*1/4;
    intDay[i] = 0;

    xPrice[i] = widthDay+xItem[i]+heightItem;
    yPrice[i] = yItem[i]+heightItem*5/8;
    widthPrice = widthName*1/3;
    heightPrice = heightName;

    xMore[i] = widthPrice+widthDay+xItem[i]+heightItem;
    yMore[i] = yItem[i]+heightItem*5/8;
    widthMore = widthName*1/3;
    heightMore = heightName;
  }

  xItemNew[0] = width*8/10;
  yItemNew[0] = heightNav[0]+10+(heightItem+10)*intItem;
  widthItemNew[0] = width*1/10;
  heightItemNew[0] = width*1/10;

  xItemNew[1] = xItemNew[0]+widthItemNew[0]*1/2;
  yItemNew[1] = yItemNew[0]+heightItemNew[0]*1/10;
  widthItemNew[1] = xItemNew[0]+widthItemNew[0]*1/2;
  heightItemNew[1] = yItemNew[0]+heightItemNew[0]*9/10;

  xItemNew[2] = xItemNew[0]+widthItemNew[0]*1/10;
  yItemNew[2] = yItemNew[0]+heightItemNew[0]*1/2;
  widthItemNew[2] = xItemNew[0]+widthItemNew[0]*9/10;
  heightItemNew[2] = yItemNew[0]+heightItemNew[0]*1/2;

  if (height > heightNav[0]+10+(heightItem+10)*intItem) {
    heightBackground = height;
  } else {
    heightBackground = heightNav[0]+10+(heightItem+10)*intItem+10;
  }
}

void draw() {
  fill(255);
  strokeWeight(1);
  rect(0, 0, width, heightBackground);
  for (int i = 0; i < stringNav.length; i++) {
    fill(255);
    rect(xNav[i], yNav[i], widthNav[i], heightNav[i]);
    fill(0);
    text(stringNav[i], xNav[i], yNav[i], widthNav[i], heightNav[i]);
    noFill();
  }

  for (int i = 0; i < intItem; i++) {
    fill(255);
    rect(xItem[i], yItem[i], widthItem, heightItem);
    if (boolMark[i]) {
      fill(#00FF00);
    }
    rect(xMark[i], yMark[i], widthMark, heightMark);
    if (boolMark[i]) {
      fill(0);
      line(xMark1[i], yMark1[i], widthMark1[i], heightMark1[i]);
      line(xMark2[i], yMark2[i], widthMark2[i], heightMark2[i]);
    }
    fill(255);
    rect(xName[i], yName[i], widthName, heightName);
    fill(0);
    text(stringName[i], xName[i], yName[i], widthName, heightName);

    fill(255);
    rect(xDay[i], yDay[i], widthDay, heightDay);
    rect(xPrice[i], yPrice[i], widthPrice, heightPrice);
    rect(xMore[i], yMore[i], widthMore, heightMore);
    fill(0);
    text(stringDay[intDay[i]], xDay[i], yDay[i], widthDay, heightDay);
    text("$"+stringPrice[i], xPrice[i], yPrice[i], widthPrice, heightPrice);
    text("More", xMore[i], yMore[i], widthMore, heightMore);
    noFill();
  }

  fill(255);
  rect(xItemNew[0], yItemNew[0], widthItemNew[0], heightItemNew[0]);
  fill(0);
  for (int i = 1; i < intItemNew; i++) {
    line(xItemNew[i], yItemNew[i], widthItemNew[i], heightItemNew[i]);
  }
  noFill();
}

void keyPressed() {
}

void mousePressed() {
  for (int i = 0; i < intItem; i++) {
    if (mouseX > xMark[i] && mouseX < xMark[i]+widthMark && mouseY > yMark[i] && mouseY < yMark[i]+heightMark) {
      boolMark[i] = boolMark[i] ? false : true;
    }
  }
}
