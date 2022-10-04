import 'dart:io';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;


//take arguements from CmdLine and see in output
void main(List<String> args) {
  if(args.isEmpty){
    print("Invalid Cmd Santax");
    exit(1);
  }
  print("arguments recieved : $args");
}