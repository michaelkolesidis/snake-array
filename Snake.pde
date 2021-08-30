class Snake {
  int[] xpos; //Create arrays
  int[] ypos;

  Snake (int n) {
    xpos = new int[n];
    ypos = new int[n];
  }

  void update(int newX, int newY) {
    for (int i = 0; i < xpos.length-1; i++) {
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    }

    xpos[xpos.length-1] = newX;
    ypos[ypos.length-1] = newY;
  }

  void display(int shape) {
    for (int i = 0; i < xpos.length; i++) {
      noStroke();
      if (shape == 1) {
        fill(255 - i*5);
        ellipse(xpos[i], ypos[i], i, i);
      } else if (shape == 2) {
        fill(255 - i*5);
        rect(xpos[i], ypos[i], i, i);
      } else if (shape == 3) {
        fill(200, i*3, 255 - i*3);
        ellipse(xpos[i], ypos[i], i, i);
      }
    }
  }
}
