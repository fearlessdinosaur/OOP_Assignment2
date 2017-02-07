class Resize extends Powerup
{
  Paddle affected;
  Resize(Paddle pad)
  {
    this.affected=pad;
  }
  void affect()
  {
    affected.w += 10;
  }
}