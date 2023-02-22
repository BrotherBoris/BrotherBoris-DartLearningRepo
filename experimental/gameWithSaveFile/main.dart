import 'dart:io';
import 'fileManager.dart';
import 'xmlManager.dart';

void main() {
  // Run the 'cmd /k' command to open a command prompt window
  Process.start('cmd', ['/k']).then((Process process) {
    // Set up stdout and stderr streams to print the output of the command
    process.stdout.listen((data) => print(String.fromCharCodes(data)));
    process.stderr.listen((data) => print(String.fromCharCodes(data)));


    XMLManager fileManager = XMLManager();
    

    //fileManager.readSave();
    // Run the other Dart program in the new command prompt window
    //process.stdin.writeln('dart experimental/gameWithSaveFile/fileManager.dart a');

    // Wait for 5 seconds
    //sleep(Duration(seconds: 5));
    
  
    
    
    exitProgramWithPropt(process);
    // Wait for the process to exit
    process.exitCode.then((int exitCode) {
      print('Process exited with code $exitCode');
    });
  });
}

void exitProgramWithPropt(Process process){
  do {
    stdout.writeln("Exit program(y/n)? (There is no option this time)");
    String? line = stdin.readLineSync();
    if(line!.contains("y") || line.contains("Y")){
      process.kill();
      break;
    }
  } while (true);
}