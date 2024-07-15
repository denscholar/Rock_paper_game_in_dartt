import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main(List<String> arguments) {
  final rng = Random();
  // print the output on the console using the std library
  while (true) {
    stdout.write('Rock, Paper or Scissors? r/p/s: ');

    final input = stdin.readLineSync(); // collect input from the user

    // show the output on the console
    print(input);
    // check the input vvalues

    if (input == 'r' || input == 'p' || input == 's') {
      dynamic playerMove;
      if (input == 'r') {
        playerMove = Move.rock.toString().replaceAll('Move.', '');
      } else if (input == 'p') {
        playerMove = Move.paper.toString().replaceAll('Move.', '');
      } else {
        playerMove = Move.scissors.toString().replaceAll('Move.', '');
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random].toString().replaceAll('Move.', '');

      print('you played: $playerMove');
      print('ai played: $aiMove');

      if (playerMove == aiMove) {
        print('It\'s a draw');
      } else if (playerMove == 'rock' && aiMove == 'scissors') {
        print('You win!');
      } else if (playerMove == 'paper' && aiMove == 'rock') {
        print('You win!');
      } else if (playerMove == 'scissors' && aiMove == 'paper') {
        print('You win!');
      } else {
        print('AI win!');
      }
    } else if (input == 'q') {
      print('You exited the game');
      break;
    } else {
      print('invalid input!');
    }
  }
}
