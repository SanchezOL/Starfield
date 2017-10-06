Particle[] aBunch; 
void setup()
{

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
  background(0);
  for (int i=0; i<aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].move();
  }
}
class NormalParticle implements Particle
{
  double dX, dY, dTheta, dSpeed;
  NormalParticle(){
  dX = 250;
  dY = 250;
  dTheta =  Math.PI*2*Math.random();
  dSpeed = Math.random() * 10;
  }
  public void move() {
    
    dX = dX + Math.cos(dTheta) * dSpeed;
    dY = dY + Math.sin(dTheta) *  dSpeed;
  }
  public void show() {
    fill(255,255,255);
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
  OddballParticle(){
    oX = 250;
    oY = 250;
  oTheta =  Math.PI*3*Math.random();
  oSpeed = Math.random() * 7;
  }
  public void move() {
    oX = oX + Math.cos(oTheta) * oSpeed;
    oY = oY + Math.sin(oTheta) *  oSpeed;
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)oX, (float)oY, 20, 20);
  }
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    fill(255,255,255);
    ellipse((float)dX, (float)dY, 100, 100);
  }
}