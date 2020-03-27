class Particle
{
  Particle(float velocity, float col)
  {
    this.position = createvelocitytor(0,0);
    this.velocity = velocity;
    this.color = col;
    this.cnt = 0;
  }
}

Particle particles;

void setup()
{
  size(960, 540);
  particles = new ArrayList();
  noStroke();
  colorMode(HSB, 360, 100, 100);
  // blendMode(ADD);
}

void draw()
{
  background(0);
  translate(width/2, height/2);

  particles.push(new Particle(createvelocitytor(5,0).rotate(cos(frameCount*frameCount/10000)*Math.PI+Math.PI/4),color(frameCount%360,60,100)));

  particles.forEach(element =>
  {
    element.cnt++;
    element.position.add(element.velocity);
    
    if(element.cnt<600)
    {
      element.velocity.rotate(0.0097);
    }

    fill(element.color);
    ellipse(element.position.x, element.position.y, 10, 10);
  });


  if(frameCount>1200)
  {
    particles.shift();
  }

}
