String longestUniqueSubstring(String str){
  if (str.length == 0)  
  return('');
  var set1 = str.split('').toSet();
  String str2 = set1.join();
return str2;
}