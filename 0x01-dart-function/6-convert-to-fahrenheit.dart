List<double> convertToF(List<double> temperaturesInC){
  List<double> fehr=[];
  for(int i=0;i<temperaturesInC.length;i++){
    fehr.add(((((temperaturesInC[i] * 9/5) + 32 )* 100). round())/100) ;
  }
  return fehr;
}