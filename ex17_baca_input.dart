import 'dart:io';

void main(List<String> args) {
  int? a;
  double? b;
  String? c;

  stdout.write('Masukkan bilangan bulat: ');
  String? inputA = stdin.readLineSync();
  if (inputA != null) {
    try {
      a = int.parse(inputA);
    } catch (e) {
      print('Input bilangan bulat tidak valid!');
      return;
    }
  } else {
    print('Input bilangan bulat tidak boleh kosong!');
    return;
  }

  stdout.write('Masukkan bilangan riil: ');
  String? inputB = stdin.readLineSync();
  if (inputB != null) {
    try {
      b = double.parse(inputB);
    } catch (e) {
      print('Input bilangan riil tidak valid!');
      return;
    }
  } else {
    print('Input bilangan riil tidak boleh kosong!');
    return;
  }

  stdout.write('Masukkan teks: ');
  c = stdin.readLineSync();
  if (c == null) {
    print('Input teks tidak boleh kosong!');
    return;
  }

  print('\n$a bertipe ${a.runtimeType}');
  print('$b bertipe ${b.runtimeType}');
  print('\'$c\' bertipe ${c.runtimeType}');
}
