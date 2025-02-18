import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String input = stdin.readLineSync() ?? "";
  String reversed = reverseWords(input);
  print("Reversed: $reversed");
}

String reverseWords(String sentence) {
  List<String> words = sentence.split(" ");
  return words.reversed.join(" ");
}
