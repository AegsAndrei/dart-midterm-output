import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Bato-Bato Pik!\nType 'exit' to stop the game.");
  final random = Random();

  Map<String, String> rules = {
    "bato": "gunting",
    "gunting": "papel",
    "papel": "bato"
  };

  int user = 0;
  int comp = 0;

  List<String> options = ["bato", "papel", "gunting"];

  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nPapel, Gunting, Bato! What's your Pick?  ");
    String userChoice = stdin.readLineSync().toLowerCase();

    if (userChoice == "exit") {
      print("\nYou: $user Bot: $comp\nGood Game!");
      break;
    }

    if (!options.contains(userChoice)) {
      print("Incorrect choice");
      continue;
    } else if (compChoice == userChoice) {
      print("We have a tie!");
    } else if (rules[compChoice] == userChoice) {
      print("Bot wins: $compChoice beats $userChoice");
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print("You win: $userChoice beats $compChoice");
      user += 1;
    }
  }
}
