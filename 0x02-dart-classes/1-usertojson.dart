class User {
  String name='';
  int age=0;
  double height=0;

  User( {required String name, required int age, required double height}){
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}