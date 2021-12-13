import 'dart:io';
import 'dart:math';
//ignore_for_file: avoid_print
void main(){

  var num = (Random().nextInt(100))+1;
  var count = 0;
  while (true) {
    stdout.write('Try guess  number between 1 and 100 : ');
    var n = stdin.readLineSync();
    var g = int.tryParse(n!);
    if(g!=null){
      count++;
      if (g == num) {
        print('✔ Good jobs! $g is correct ,total guesses : $count');
        break;
      } else if(g > num) {
        //ทายมากไป
        print("✘ That's wrong! $g is too high ⇧");
        }else if(g < num) {
        //ทายน้อยไป
        print("✘ That's wrong! $g is too low ⇩");
      }
      print('――――――――――――――――――――――');
    }
  }
  print('=======Thank you for your enjoy ☺ =========');
}