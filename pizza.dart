import 'dart:io';

void main() {
  print('==================================================');
  print('Pizza Price: "Small : 5 USD, Medium : 7 USD, Large : 10 USD"');
  print('Please enter your pizza size (small, medium, or large):');

  //read tge sizee
  String? size = stdin.readLineSync();

  print('How many pizzas do you want of $size?');

  //read the integer input for quantity
  int quantity = int.parse(stdin.readLineSync()!);

  int price = 0;

  //switch case for determine the price based on size chosen
  switch (size) {
    case 'small':
      price = 5;
      break;
    case 'medium':
      price = 7;
      break;
    case 'large':
      price = 10;
      break;
    default:
      print('Invalid size.');
      return; //exits the program if the size input is wrong
  }

  //calculate and print the final total
  int total = price * quantity;
  print('Your Total Payment is: \$$total');
}
