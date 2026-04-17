class ArithmeticModel {
  // Properties
  final int first;
  final int second;

  ArithmeticModel({required this.first, required this.second});

  // Behaviors
  int add() {
    return first + second;
  }

  int sub() {
    return first - second;
  }
}
