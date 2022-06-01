import 'dart:async';
import 'dart:io';

void main() {
  var flybyObjects = ['Mercury', 'Venus', 'Mars', 'Pluto'];
  var astronauts = 5;
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }

  Future<void> show_Descriptions(flybyObjects) async {
    try {
      for (final object in flybyObjects) {
        var description = await File('$object.txt').readAsString();
        print(description);
      }
    } on IOException catch (e) {
      print('Could not describe object:$e');
    } finally {
      flybyObjects.clear();
    }
  }

  show_Descriptions(flybyObjects);
}
