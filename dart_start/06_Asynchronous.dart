import 'dart:async';
import 'dart:io';


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

void main() {
  //异步方法一
  const oneSecond = Duration(seconds: 1);
  Future<void> printWithDelay1(String message) async {
    await Future.delayed(oneSecond);
    print(message);
  }

  printWithDelay1('过了1秒钟. 1');
  print('done 1.');

  //异步方法二
  Future<void> printWithDelay2(String message) {
    return Future.delayed(oneSecond).then((_) {
      print(message);
    });
  }

  printWithDelay2('过了1秒钟.2');
  print('done 2.');

  //异步方法三
  Future<void> createDescriptions(Iterable<String> objects) async {
    for (final object in objects) {
      try {
        var file = File('$object.txt');
        if (await file.exists()) {
          var modified = await file.lastModified();
          print(
              'File for $object already exists.It was modified on $modified.');
          continue;
        }
        await file.create();
        await file.writeAsString('Start describing $object in this file.');
      } on IOException catch (e) {
        print('Cannot create description for $object:$e');
      }
    }
  }

  var first_objects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  createDescriptions(first_objects);
  Future.delayed(Duration(seconds: 5));

  //异步方法四
  Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
    for (final object in objects) {
      await Future.delayed(oneSecond);
      yield '${craft.name} files by $object';
    }
  }

  var second_objects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  report(voyager, second_objects);
  Future.delayed(Duration(seconds: 5));
}
