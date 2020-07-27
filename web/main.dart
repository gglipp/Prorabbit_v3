import 'dart:html';
import 'dart:math';

void main() {
  print('inner dart');
  querySelector('#submit').onClick.listen((e) => calcRabbits());
}

calcRabbits() {
  print('inner method');
  InputElement yearInput = querySelector('#years');
  LabelElement output = querySelector('#output');

  var years = int.parse(yearInput.value);
  print('years = $years');

  output.innerHtml = '${calculateRabbits(years)}';
}

int calculateRabbits(int years) => 2 * pow(e, log(15) * years).round().toInt();
