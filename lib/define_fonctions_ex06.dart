library define_fonctions_ex06;

//Exercice 6.1

bool test_palindrome(String text){
    var codesutf= new List();                         // Variable with the UTF-16 codes of the string used to remove punctuation and symboles 
    var aux=new List();                               // List containing only valid characteres in the string 
    bool value=true;                                  // value to be returned
    
    text=text.replaceAll(' ','');                      // All spaces are removed
    text=text.toLowerCase();                           // All characters converted to lower case
    codesutf=text.runes.toList();                      // UTF-16 (ASCII) codes of the lower case no spaces version of the string 
    for (var i=0;i<codesutf.length;i++){
      if (codesutf[i]>=97 && codesutf[i]<=122)         // Asummes there are not accents in the string
        aux.add(new String.fromCharCode(codesutf[i])); // Only characteres a to z are included in the list for comparation purpouse
    }
    
    for (var i=0;i<aux.length;i++){                   // Verifies that the List has the same characters from left to right and from right to left 
      if (aux[i]!=aux[aux.length-i-1])                // if there is mismatch value is automatically set to false
        value= false;                 
    }
    
    return value;
}

//Exercice 6.2
int date_difference(DateTime date1, DateTime date2) {
  
   Duration elapsedtime = date2.difference(date1);     // Duration type variable used to calculate the duration between two dates                              
   return elapsedtime.inDays;                           // return elapsed time in days
}

//Exercice 6.3
String convert_number2letter (num value) {
  var grade_letter = ['A+','A','A-','B+','B','B-','C+','C','C-','D+','D','E'];
  
  if(value< 60 )                  //E 0 59,99
    return grade_letter[11];
  else if(value<63.5)             //D 60  63,49
    return grade_letter[10];      
  else if(value<67)               //D+  63,5  66,99
    return grade_letter[9];
  else if(value<70.5)             //C-  67  70,49
    return grade_letter[8];
  else if(value<74)               //C 70,5  73,99
    return grade_letter[7];
  else if(value<77.5)             //C+  74  77,49
    return grade_letter[6];
  else if(value<81)               //B-  77,5  80,99
    return grade_letter[5];
  else if(value<84.5)             //B 81  84,49
    return grade_letter[4];
  else if(value<88)               //B+  84,5  87,99
    return grade_letter[3];
  else if(value<91.5)             //A-  88  91,49
    return grade_letter[2];
  else if(value<95)               //A 91,5  94,99
    return grade_letter[1];
  else                            //A+  95  100
    return grade_letter[0];
  
}

//Exercice 6.4

Map listeofnames (var names){
    var list_of_list= new Map();                     // List of list to be returned
    var names_shorter8 =new List();                  // List containing only the names shorter than 8 letters 
    var names_longer8 =new List();                   // List containing only the names longer than 8 letters  
    var names_equal8 =new List();                    // List containing only the names with 8 letter
       for (var n=0;n <names.length;n++){
          if (names[n].length >8)
            names_longer8.add(names[n]);
          else if (names[n].length<8)
            names_shorter8.add(names[n]);
          else 
            names_equal8.add(names[n]);
        }
    
     list_of_list['Names longer than 8']= names_longer8;
     list_of_list['Names shorter than 8']=names_shorter8;
     list_of_list['Names equal to 8']=names_equal8;
       
    return list_of_list;
}

//Exercice 6.5


Map clubs_players_list (var names, var clubs){
  var list2return = new Map();
  var list_aux= new List() ; // Working list used to extraxt the list of players for each club

  clubs.sort((a,b){ return a.compareTo(b);});                 // Order clubs by their name
  
  for (var i=0;i<clubs.length;i++){                           // loop for each clubs in the list
      
      names.forEach(
                     (k,v){                                   // for each element in the names list 
                          if(v==clubs[i])                     // verifiy if value == club's name
                            list_aux.add(k);                  // if it is add to the list of players for that club
                          }
                    );
 
      list2return[ clubs[i] ]= new List.from(list_aux);      // list of players for club[i] is copied and added to the list with name of the club as key
      list_aux.clear();                                      // clear working list for next iterartion  
    }
  
  return list2return;
  
}





   