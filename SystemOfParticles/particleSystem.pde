class ParticleSystem {
  ArrayList particles;
  PVector origin;
  PVector acc;
  PVector vel;

  ParticleSystem(PVector l) {
    origin = l.get();
    particles = new ArrayList();
    vel = new PVector();
    acc = PVector.random2D();
  }

  void update() {
    vel.add(acc);
    origin.add(vel);
    vel.mult(0);
    acc = PVector.random2D();
    acc.mult(10);
  }

  void edges() {
    if (origin.x < 0) {
      origin.x = 0;
      acc.x *= -1;
    } else if (origin.x> width) {
      origin.x = width;
      acc.x *= -1;
    } else if (origin.y> height) {
      origin.y = height;
      acc.y *= -1;
    } else if (origin.y < 0) {
      origin.y = 0;
      acc.y *= -1;
    }
  }

  void be(){
    update();
    addParticle();
    edges();
    run();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size() -1; i > 0; i--) {
      Particle p = (Particle) particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
