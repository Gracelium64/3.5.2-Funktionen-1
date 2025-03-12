import 'functions.dart';

// Implementiere folgende Funktionen:
  // Findet und gibt kleinste und größte Zahl aus
  // Zeigt auch deren Position in der Liste
void findAndPrintExtreme(List<int> numbers) {
int biggestNumber = 0;
int biggestPosition = 0;
int smallestNumber = 0;
int smallestPosition = 0;
  for (int i = 0; i < numbers.length; i++){
    if (numbers[i] > biggestNumber) {
      biggestNumber = numbers[i];
      biggestPosition = numbers.indexOf(numbers[i]);
    }
    if (numbers[i] < smallestNumber) {
      smallestNumber = numbers[i];
      smallestPosition = numbers.indexOf(numbers[i]);
    }
  }
  print('The biggest number in the list is $biggestNumber');
  print('The position of the biggest number on the list is ${biggestPosition + 1}');
  print('The smallest number in the list is $smallestNumber');
  print('The position of the smallest number on the list is ${smallestPosition + 1}');
}

  // Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie viele positive/negative Zahlen
void printNumberTypes(List<int> numbers) {
  int evenNumbers = 0;
  int oddNumbers = 0;
  int positiveNumbers = 0;
  int negativeNumbers = 0;
  int zero = 0;
  for (int i = 0; i < numbers.length; i++){
    if (numbers[i] % 2 == 0) {
      evenNumbers++;
    } else {
      oddNumbers++;
    }

    if (numbers[i] > 0) {
      positiveNumbers++;
    } else if (numbers[i] == 0){
      zero++;
      evenNumbers--;
    } else {
      negativeNumbers++;
    }
  }
  print('There are $evenNumbers even numbers in the list');
  print('There are $oddNumbers odd numbers in the list');
  print('There are $positiveNumbers positive numbers in the list');
  print('There are $negativeNumbers negative numbers in the list');
  print('The number 0 appears $zero times in the list');
}

  // Gibt eine einfache Häufigkeitsverteilung aus
  // z.B. wie oft kommt jede Zahl vor
void printDistribution(List<int> numbers) {
  int numberCheck = 0;
  int numberCheckCounter = 0;
  int loopCounter = 0;  
  for (int i = loopCounter; i < numbers.length; i = loopCounter){
    numberCheck = numbers[i];
      for (int i = 0; i < numbers.length; i++){
        if (numberCheck == numbers[i]) {
        numberCheckCounter++;
          if (numberCheckCounter >= 2) {
        numbers.removeAt(i);
         }
       }
     }
      print('The number $numberCheck appears $numberCheckCounter times in the list');
      numberCheckCounter = 0;
      loopCounter++;
      
  }
}

// Hauptfunktion:
  // Ruft alle Funktionen der Reihe nach auf
  // Gibt eine übersichtliche Gesamtanalyse
void analyzeNumbers(List<int> numbers) {
  findAndPrintExtreme(numbers);
  lineBreak();
  printNumberTypes(numbers);
  lineBreak();
  printDistribution(numbers);
}

void main(){
  
  clearConsole();
  analyzeNumbers([1, 5, 6, -8, -9, 4, 5, 7, -12, 0, 78, -130, 55, 1, -12, 0]);
  lineBreak();

}


                    //                                                   ........:                     
                    //             ...:-                               ....-*##+...-                   
                    //            ..:-...:                          ....=+-.....+:..                   
                    //            ..+#+=...:                      ...-*=........-+..:                  
                    //           ...*#*-++...:                  ...:*=...........#...                  
                    //           ...#+#*-:=+:..::              ..:*=:...=**+-:...#...                  
                    //           ..-*+*#*--:=+:..:            ..-+-:..+**+=---:..#...                  
                    //           ..=*=+*#+--::-+:..:        ...*=::.:+**+-----:..#...                  
                    //           ..=+=++*#*--:::+=..:       ..+-::..+*+=------:.-+..:                  
                    //          ...++-=+**#*-::::=*..:    ...==:::.=*++-------..+:..                   
                    //          ...++-==+**#+-::::-+..:   ..:*-::::#++=------:.:+..:                   
                    //           ..=+-==+**#*-:::::+=..: ...*=:::.+*+=------:..--..-                   
                    //           ..-*====+*##===---=#......-#-::::**+=------...+..:                    
                    //           ..:*===++*##==+*#######*=:+*-:::-*+=------:..+:.:                     
                    //           ...*==+***###+=-+++*******#+-::.+*==-----:..+:..                      
                    //           ...++==*%*+-::--=*****+**=:-::::*+==----...+:..:                      
                    //            ..-*=+*=-::::-+****+:-*+:::::.+*+**=-:...*:.:-                       
                    //             ..+#*-:::::---*++:..=+::::::::+#++-...=*..:-                        
                    //            ...+*-:::---=:--.....-::::::::::=-:::-*-..:-                         
                    //           ...+*=-:::::-+:........:::::::::::::=*:..:-                           
                    //          ...**==*#%%%*-:.........:-++::::::::+:..:-                             
                    //         ...**----**:#*#:.........::-:::::::::==..-                              
                    //        ..:**-::::#**%##*.........:+#%%%*=-:::-+..:                              
                    //      ...:#+-:::::=***#%*........:#**%--#+#-:::+:.:-                             
                    //  .......**++=::....:::-:.......-#####+#+--::::-*..:                             
                    // ........:#=-....:-:.....+-:::..:--+**+-::::::::=+..-                            
                    //   ::::...=*-:.....:::...:+=++......:::::::::::::+-.:                            
                    //     .....:+*=-.......:..:+.....:::::::...::-===+*+..:                           
                    //   ....-:...:#+-:.....:====*=:.....:=:...:-:.:-=*#-.:                            
                    //  ...:...: ...+%+-::.......::.........---....:=*+..:-                            
                    //   ....: ...=##+=+**+=::................::--=+=.:..:                             
                    //       ...-#*#+=-----====-:::::::::--==+*+++#=..:::                              
                    //      ...*#+#+=-::::::.........:::::::::::::-++..-                               
                    //     ..:*++*+::..............................:==..::                             
                    //    ..:*+=+*-:::.............................:-#*..:-                            
                    //   ...#--=+*-:::::.........        ...........-*+#-..-                           
                    //   ..*+::-+*=::::...........       .........::-+=-+-.:-                          
                    //   .:#::..=*+:::::::::........     .........::-+-::+..:                          
                    //  ..:*:...:=#-::::::::.::................:::::-+:..+-.:-                         
                    //   ..#-:..:-*+-:::::--:::..:............::::::+=...-+..:                         
                    //   ..+*-:::--#=-:::::-==--:::..::::::::--:::-+*:...-+..:                         
                    //   ...#+------*=:::::::-=*=::::::-#-==-::::-=#-:...+:.:-                         
                    //   :..:##+=---=#=-::::::-+*::::::**=-:::::-=#=--::=+..:                          
                    //    ..-#**#=--=+#+--:::::-*+-:::-#=-::::--=#+==+-++:.:-                          
                    //    ...=##=+--+-=%%+-:...:*%**##%#+:::-=+##+--+=#...-                            
                    //     .....=#*=*++#-.-:..=..-*..:*:.:-..-:.#*+**+..:-                             
                    //        .........-*-:+:.:=:++...*-:+:.:+-++......:-                              
                    //               :.....:+*+:........:-**=.....--                                   
                    //                 ...........:  :.........::                                      