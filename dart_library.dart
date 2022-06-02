import 'dart:core';

void dartcore() {
  print('\n');
  print('*' * 40);
  print('dart:core库的使用');
  print('*' * 40);

//int 和 double 的parse()方法将字符串转换为整型或双浮点型对象；
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);

//num 的 parse()方法创建一个整型或浮点型；
  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);

//radix参数会指定整数的进制基数；
  assert(int.parse('42', radix: 8) == 34);

//toString将整型或双精度浮点型转换为字符串型；
  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');

//toStringAsFixed能够指定小数点后保留的小数位数；
  assert(123.456.toStringAsFixed(2) == '123.46');

//toStringAsPrecision指定字符串中有效数字的位数
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);

//检查某个字符串是否包含另一个字符串
  assert('Never odd or even'.contains('odd'));

//检查某一字符串是否是另一字符串的开头
  assert('Never odd or even'.startsWith('Never'));

//检查某一字符串是否是另一字符串的结尾
  assert('Never odd or even'.endsWith('even'));

//查找子串在字符串中的位置
  assert('Never odd or even'.indexOf('odd') == 6);

  assert('Never odd or even'.substring(6, 9) == 'odd');
  var parts = 'progressive web apps'.split('');
  assert(parts.length == 3);
  assert(part[0] == 'progressive');
}

void main() {
  dartcore();
}
