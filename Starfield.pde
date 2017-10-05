Particle[] aBunch; 
void setup()
{
  background(0);
  size(500, 500);
  aBunch = new Particle [500];
  for (int i=0; i<aBunch.length; i++)
  {
    aBunch[i] = new NormalParticle();
    aBunch[0] = new OddballParticle();
    aBunch[1] = new JumboParticle();
  }
}
void draw()
{
}
class NormalParticle implements Particle
{
  double dX, dY, dTheta, dSpeed;
  NormalParticle(){
  dX = 250;
  dY = 250;
  }
  public void move() {
    dTheta =  Math.PI*2;
    dSpeed = Math.random() * 10;
    dX = dX + Math.cos(dTheta) * dSpeed;
    dY = dY + Math.sin(dTheta) *  dSpeed;
  }
  public void show() {
    ellipse((float)dX, (float)dY, 20, 20);
  }
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle
{
  double oX, oY, oTheta, oSpeed;
  public void move() {
    oTheta =  Math.PI*3;
    oSpeed = Math.random() * 7;
    oX = oX + Math.cos(oTheta) * oSpeed;
    oY = oY + Math.sin(oTheta) *  oSpeed;
  }
  public void show() {
    fill((int)Math.random() * 256, (int)Math.random() * 256, (int)Math.random() * 256);
    ellipse((float)oX, (float)oY, 20, 20);
  }
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    ellipse((float)dX, (float)dY, 50, 50);
  }
}