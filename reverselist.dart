void main() {
  List<int> numbers = [10, 20, 23, 45, 96, 10, 21, 22, 21];

  List<int> result = removeDuplicatesAndReverse(numbers);

  print(result);
}

List<int> removeDuplicatesAndReverse(List<int> numbers) {
  List<int> uniqueNumbers = numbers.toSet().toList();
  uniqueNumbers = uniqueNumbers.reversed.toList();
  return uniqueNumbers;
}
