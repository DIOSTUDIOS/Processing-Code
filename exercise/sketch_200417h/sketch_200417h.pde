// painter class
Painter newpaint;

// new layer for painting when mouse is pressed 
PGraphics bg_mark;

// the brush size variable
float d = 5;

// this variable holds the color that constantly cycles
color ctFinal;

void setup() {
  size(700, 700);
  noStroke();

  newpaint = new Painter();
  bg_mark = createGraphics(width, height);
}

void draw() {
  background(0);

  // load the function that changes color
  ctFinal = newpaint.colorChanger();
  fill(ctFinal);

  // displays the point at mousePosition with mirroring and easing
  newpaint.paint();

  // draws the point at mousePosition with mirroring and easing on a new layer > bg_mark
  if (mousePressed) {
    bg_mark.beginDraw();
    bg_mark.fill(ctFinal);
    bg_mark.noStroke();
    bg_mark.ellipse(newpaint.x, newpaint.y, d, d);
    bg_mark.ellipse(width-newpaint.x, newpaint.y, d, d);
    bg_mark.ellipse(newpaint.x, height-newpaint.y, d, d);
    bg_mark.ellipse(width-newpaint.x, height-newpaint.y, d, d);
    bg_mark.endDraw();
  }
  image(bg_mark, 0, 0);
}


//////////////


class Painter {
  //related to mousePositions and easing
  float x, y;
  float easing;

  //related to the color changer
  color c1, c2, c3;
  float counter;

  Painter() {
    x = 0;
    y = 0;
    counter = 0;

    // change easing here for different effect
    // 1   = no easing
    // .01 = extreme easing
    // .02 to .20 should work fine
    easing = .02;

    // change the 3 color here that are constantly in cycle
    // c1 is the first color >> then c2 >> then c3
    c1 = #185474;
    c2 = #ee5d84;
    c3 = #f8ac95;
  }

  color colorChanger() {
    color cF1 = lerpColor(c1, c2, counter % 1);
    color cF2 = lerpColor(c2, c3, counter % 1);
    color cF3 = lerpColor(c3, c1, counter % 1);
    color cFinal = c1;
    if (int(counter) % 3 == 0) { 
      cFinal = cF1;
    } else if (int(counter) % 3 == 1) {
      cFinal = cF2;
    } else if (int(counter) % 3 == 2) {
      cFinal = cF3;
    }
    counter += 0.005;
    return cFinal;
  }

  void paint() {
    
    // calculates easing
    float targetX = mouseX;
    x = x + (targetX - x) * easing;
    float targetY = mouseY;
    y = y + (targetY - y) * easing;
    
    // displays the points at mousePosition
    ellipse(x, y, d, d);
    ellipse(width-x, y, d, d);
    ellipse(x, height-y, d, d);
    ellipse(width-x, height-y, d, d);
  }
}
