mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts:$astronauts');
  }
}

class PilotedCraft with Piloted {}

void main() {
  PilotedCraft.describeCrew();
}
