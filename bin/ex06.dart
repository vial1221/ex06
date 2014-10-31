import 'package:ex06/define_fonctions_ex06.dart';

ex01 (){
  print ('Ex 6.1');
    var sentences=["No, it is opposed, art sees trade's opposition.","Test sentence","Eva, can I stab bats in a cave?"];
    for(var i=0;i<sentences.length; i++){
      if (test_palindrome(sentences[i])==true)
            print ('${sentences[i]}: It is palindrome');
       else
            print ('${sentences[i]}:It is not palindrome');   
    }
    
}

ex02(){
  int days=0;
  DateTime date1= new DateTime(2014,01,01); 
  DateTime date2= new DateTime.now();
  
  days = date_difference(date1,date2);
  print ('\nEx 6.2');
  print('Date 1 = ${date1.year}-${date1.month.toString().padLeft(2,'0')}-${date1.day.toString().padLeft(2,'0')}');
  print('Date 2 = ${date2.year}-${date2.month.toString().padLeft(2,'0')}-${date2.day.toString().padLeft(2,'0')}');
  print('Days difference: ${days}');
}

ex03(){
  print ('\nEx 6.3');
  for(var i=57;i<=100;i+=10)
  print('number grade:${i} letter grade ${convert_number2letter(i)}');
  
}


ex04(){
  print ('\nEx 6.4');
  var names=['Catalina','Alejandro', 'Sonia', 'Luz', 'Nixon','Evangelina', 'Nicole','Angelica'];
  var list_of_list= new Map();
  print('List of names: \n ${names}');
  list_of_list=listeofnames(names);
  print('List of lists : \n ${list_of_list}');
 
}

ex05(){
  print ('\nEx 6.5');
  var names={'Catalina':'Equipe A',
             'Alejandro':'Equipe B', 
             'Sonia':'Equipe B', 
             'Luz':'Equipe A', 
             'Nixon':'Equipe C',
             'Evangelina':'Equipe A',
             'Nicole':'Equipe C',
             'Angelica':'Equipe D'};
  var clubs=['Equipe D','Equipe C','Equipe A','Equipe B'];
  var third_list=new Map();
  print('List of players and their respective club: \n${names}');
  print('List of clubs:\n${clubs}');
  
  third_list=clubs_players_list(names,clubs);
  print('List of clubs ordered and their players');
  third_list.forEach((k,v){ print('$k $v'); });
  
}

void main() {
  
  ex01();
  
  ex02();
  
  ex03();
  
  ex04();
  
  ex05();
  
 }