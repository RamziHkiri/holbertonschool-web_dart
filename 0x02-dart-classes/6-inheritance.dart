import '6-password.dart';

class User extends Password{
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0;
  late String user_password ='';

  User({required int id, required String name, required int age, required double height, required String user_password}): super(password: user_password) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
    this.user_password = user_password;
  }

  Map toJson() {
    return {
      'id' : id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }
  static User fromJson(Map<dynamic, dynamic> userJson){
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }
    @override
  String toString() {
    final password = Password(password: this.user_password);

    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${password.isValid()})';
  }
}
