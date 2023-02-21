import 'dart:io';

void main() {
  // Run the 'cmd /k' command to open a command prompt window
  Process.start('cmd', ['/k']).then((Process process) {
    // Set up stdout and stderr streams to print the output of the command
    process.stdout.listen((data) => print(String.fromCharCodes(data)));
    process.stderr.listen((data) => print(String.fromCharCodes(data)));

    // Run the other Dart program in the new command prompt window
    //process.stdin.writeln('dart .\\experimental\\test.dart');


    // Wait for 5 seconds
    //sleep(Duration(seconds: 5));

    stdout.writeln("whrite line");
    String? line = stdin.readLineSync();
    print('$line');


    process.kill();
    // Wait for the process to exit
    process.exitCode.then((int exitCode) {
      print('Process exited with code $exitCode');
    });
  });
}