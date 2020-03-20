int numZombies = 5000;
Zombie[] zombies = new Zombie[numZombies];
void setup(){
  size(512, 512);
  noStroke();
  for(int i = 0; i < numZombies; i++){
    zombies[i] = new Zombie(i, random(width), random(height), random(360), zombies);
  }
}
void draw(){
  background(0);
for(int i = 0; i < numZombies; i++){
    zombies[i].move();
    zombies[i].display();
  }
}
class Zombie{
  int id; // the index of this zombie
float x, y; // current location
  float angle; // angle of zombies movement
  float lurching = 10; // Amount angle can change
  float strength = 2;
boolean dead = false; // true means zombie is dead
float diameter = 12; // How big the zombie is
  float velocity = 1.0; // How fast zombie moves
Zombie[] others; // Stores the other zombies
Zombie(int inid, float xin, float yin, float inangle, Zombie[] oin){
    id = inid;
    x = xin;
    y = yin;
    angle = inangle;
    others = oin;
  }
void move(){
    if(dead) return;
float vx = velocity * sin(radians(180-angle));
    float vy = velocity * cos(radians(180-angle));
x = x + vx;
    y = y + vy;
if(x + vx < 0 || x + vx > width || y + vy < 0 || y + vy > height){
      // Collided with wall
      angle = angle + 180;
    }
float adecide = random(3);
if(adecide < 1){
      // Move left
      angle=angle - lurching;
    }
    else if(adecide > 1 && adecide < 2){
      // Don't move x
    }
    else if(adecide > 2){
      // Move right
      angle = angle + lurching;
    }
checkFights();
  }
void checkFights(){
    for (int i=0; i < numZombies; i++) {
      if (i == id || dead || others[i].dead){
        continue;
      }
float dx = others[i].x - x;
      float dy = others[i].y - y;
      float distance = sqrt(dx*dx + dy*dy);
if (distance < diameter){
        fight(i);
      }
    }
  }
void fight(int oid){
    Zombie o = others[oid];
//println("Zombie " + id + "(s: "+ strength +") fighting " + oid + "(s: "+ o.strength +")");
if(strength < o.strength){
      kill();
      o.strength++;
    } 
    else if (strength == o.strength){
      if(random(1) > 0.5){
        kill();
        o.strength++;
      }
      else{
        o.kill();
        strength++;
      }
    }
  }
void kill(){
    dead = true;
  }
void display(){
    if(dead) return;
    ellipse(x, y, diameter, diameter);
  }
}
