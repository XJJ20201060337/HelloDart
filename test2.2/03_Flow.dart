void main(){
  var year=DateTime.now().year;
  if(year>=2001){
    print('21st century');
  }else if(year>=1901){
    print('20th century');
  }

  flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  for(final object in flybyObjects){
    print(object);
  }
  for(int month=1;month <= 12;month++){
    print(month);
  }
  
  while(year<2016){
    year+=1;
    print(year);
  }
}