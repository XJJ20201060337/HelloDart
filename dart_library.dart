import 'dart:core';

void dartcore() {
  print('\n');
  print('*' * 40);
  print('dart:core库的使用');
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('int 和 double 的parse()方法将字符串转换为整型或双浮点型对象');
  print(int.parse('42'));
  print(int.parse('0x42'));
  print(double.parse('0.50'));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('num 的 parse()方法创建一个整型或浮点型');
  print(num.parse('42'));
  print(num.parse('0x42'));
  print(num.parse('0.50'));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('radix参数会指定整数的进制基数');
  print(int.parse('42', radix: 8));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('toString将整型或双精度浮点型转换为字符串型');
  print(42.toString());
  print(123.456.toString());
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('toStringAsFixed能够指定小数点后保留的小数位数');
  print(123.456.toStringAsFixed(2));
  assert(123.456.toStringAsFixed(2) == '123.46');
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('toStringAsPrecision指定字符串中有效数字的位数');
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);
  print(123.456.toStringAsExponential(2));
  print(double.parse(123.456.toStringAsExponential(2)));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('检查某个字符串是否包含另一个字符串');
  assert('Never odd or even'.contains('odd'));
  print('Never odd or even'.contains('odd'));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('检查某一字符串是否是另一字符串的开头');
  assert('Never odd or even'.startsWith('Never'));
  print('Never odd or even'.startsWith('Never'));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('检查某一字符串是否是另一字符串的结尾');
  assert('Never odd or even'.endsWith('even'));
  print('Never odd or even'.endsWith('even'));
  print('Do you like what you see'.endsWith('like'));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('查找子串在字符串中的位置');
  assert('Never odd or even'.indexOf('odd') == 6);
  print('Never odd or even'.indexOf('odd') == 6);
  print('Do you like what you see'.indexOf('like'));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('获取指定位置的字串');
  assert('Never odd or even'.substring(6, 9) == 'odd');
  print('Never odd or even'.substring(6, 9));
  print('举办永雏塔菲喵'.substring(2, 6));
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('利用指定的字符串模块对字符串进行划分');
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');
  print(parts.length);
  print(parts[0]);
  var example_01 = '好想做 嘉然小姐的狗 啊'.split(' ');
  print(example_01.length);
  print(example_01[1]);
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('按索引获取 UTF-16 代码单元(字符串形式)');
  assert('Never odd or even'[0] == 'N');
  print('Never odd or even'[0]);
  print('关注嘉然，顿顿解馋'[2]);
  print('关注嘉然，顿顿解馋'[3]);
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('将split()与空字符串参数一起使用可获取所有字符的列表(以字符串形式)适合迭代');
  for (final char in 'hello'.split('')) {
    print(char);
  }
  for (final char in '勇敢牛牛不怕困难'.split('')) {
    print(char);
  }
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('获取字符串中的所有 UTF-16 代码单元');
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  print(codeUnitList[0]);
  var example_02 = 'airplane'.codeUnits.toList();
  for (final char in example_02) {
    print(char);
  }
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('字母大写转换');
  assert('web apps'.toUpperCase() == 'WEB APPS');
  print('aircraft'.toUpperCase());
  assert('WEB APPS'.toLowerCase() == 'web apps');
  print('AIRCRAFT'.toLowerCase());
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('Trimming和空字符串');
  print('使用 trim() 移除首尾空格。使用 isEmpty 检查一个字符串是否为空(长度为0)，使用isNotEmpty检查字符串是否不为空');
  var example_03 = '   hello_dart   '.trim();
  var example_04 = ''.isEmpty;
  var example_05 = '   '.isNotEmpty;
  print('"   hello_dart   ".trim()==$example_03');
  if (example_04) {
    print('字符串""为空');
  } else {
    print('字符串""不为空');
  }
  if (!example_05) {
    print('字符串"    "为空');
  } else {
    print('字符串"    "不为空');
  }
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('替换部分字符串');
  var example_06_original = '翠果，打烂她的嘴';
  var example_06_1 = example_06_original.replaceAll(RegExp('翠果'), '槿汐');
  var example_06_2 = example_06_original.replaceAll(RegExp('翠果'), '宝娟');
  print('原版字符串：$example_06_original');
  print('替换后版本1：$example_06_1');
  print('替换后版本2：$example_06_2');
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('构建一个字符串');
  var sb = StringBuffer();
  sb..write('Use a StringBuffer for');
  sb..writeAll(['efficient', 'string', 'creation'], ' ');
  sb..write('.');
  var fullString = sb.toString();
  print(fullString);
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('正则表达式');
  var numbers = RegExp(r'\d+');
  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';
  //contains()能够判断字符串内是否有目标格式的字串
  print(allCharacters.contains(numbers));
  print(someDigits.contains(numbers));
  //replaceAll()能够将指定格式的字串统一替换
  var exedOut = someDigits.replaceAll(numbers, 'xx');
  print(exedOut);
  numbers.hasMatch(someDigits);
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('Lists');
  var grains = <String>[];
  if (grains.isEmpty) {
    print('列表grains为空');
  } else {
    print('列表grains不为空');
  }
  var fruits = ['apples', 'oranges'];
  print('第一版:$fruits');
  //使用add在集合里添加元素
  fruits.add('kiwis');
  print('add的使用:$fruits');
  //使用addAll添加多个元素
  fruits.addAll(['grapes', 'bananas']);
  print('addAll的使用:$fruits');
  //使用.length获得列表长度
  var length = fruits.length;
  print('列表fruits的长度为$length');
  //移除单个项目
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  var appleLength = fruits.length;
  print('列表fruits的长度为$appleLength');
  //移除列表中所有元素
  fruits.clear();
  if (fruits.isEmpty)
    print('列表为空');
  else
    print('列表不为空');
  //利用另一个方法构造List
  var vegetables = List.filled(99, 'broccoli');
  vegetables.every((v) => v == 'broccoli');
  //使用indexOf()查找一个对象在list中的下标值
  var anotherFruits = ['bananas', 'apples', 'oranges'];
  var location = anotherFruits.indexOf('apples');
  print('apple在数组中的位置为$location');
  anotherFruits.sort((a, b) => a.compareTo(b));
  var locationNext = anotherFruits.indexOf('apples');
  print('此时apple在列表中的位置为$locationNext');
  print('*' * 40);

  print('\n');
  print('*' * 40);
  print('Set');
  //创建一个空的集合
  var ingredients = <String>{};
  //向集合当中添加元素
  ingredients.addAll(['gold', 'titianium', 'xenon']);
  var atomicNumbers = Set.from([79, 22, 54]);
  //使用contains()或containsAll()检查一个或多个元素是否在集合当中
  if (ingredients.contains('titanium'))
    print('元素titanium存在于集合当中');
  else
    print('元素titanium不存在于集合当中');
  if (ingredients.containsAll(['gold', 'iron']))
    print('元素gold,iron存在于集合当中');
  else
    print('元素gold,iron不存在于集合当中');
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection);
  print('*' * 40);
}

void main() {
  dartcore();
}
