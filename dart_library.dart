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
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  print(codeUnitList[0]);
}

void main() {
  dartcore();
}
