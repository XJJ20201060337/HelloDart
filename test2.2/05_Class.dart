class Spacecraft {
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;
  Spacecraft(this.name, this.launchDate) {}
  Spacecraft.unlaunched(String name) : this(name, null);
  void describe() {
    print('Spacecraft:$name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched:$launchYear($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts:$astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  var ptl = PilotedCraft('Voyager II', DateTime(1977, 8, 20));
  ptl.describe();
  ptl.describeCrew();
}
