void outer(String name, String id) {
  List<String> nameSplited = name.split(" ");
  String inner() {
    return "Hello Agent ${nameSplited[1][0]}.${nameSplited[0]} your id is ${id}";
  }
  print(inner());
}