Particle[] Starfield = new Particle[100];
void setup() {
        size(700,700);
        background(0xFFFFFF);
        for(int i = 0; i < 5; i++)
        Starfield[i] = new Oddball();
        for(int i = 5; i < star.length; i++)
        star[i] = new Particle();
}
void draw() {
        for(int i = 0;i < 100; i++) {
        Starfield[i].move();
        Starfield[i].show();
        }
}
class Particle {
float starsin, starcos, angularmovement, baseposition, starcount;
int starbody, starcolor;
Particle() {
        starsin = 500;
        starcos = 500;
        angularmovement = (Math.random()*2)*PI;
        baseposition = angularmovement;
        starcount = Math.random()*10;
        starbody = 10;
        starcolor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
}
void move() {
        starsin = starsin + (Math.cos(angularmovement) * starcount);
        starcos = starcos - (Math.sin(angularmovement) * starcount);
}
void show() {
fill(starcolor);
ellipse((float)starsin, (float)starcos, starbody, starbody);
}
class OddballParticle extends Particle {
Oddball() {
    starsin = 500.0;
    starcos = 500.0;
    angularmovement = (Math.random()*2)*PI;
    baseposition = angularmovement;
    starcount = Math.random()*5;
    starbody = 50;
    starcolor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
}
}
