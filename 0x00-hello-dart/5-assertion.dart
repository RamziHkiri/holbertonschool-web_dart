void main(List<String> args) {
 int number = int.parse(args[0]);
number >= 80? print("You passed"): print('Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');

}