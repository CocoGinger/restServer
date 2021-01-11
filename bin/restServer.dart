import 'package:shelf/shelf_io.dart' as shelf_io;

import 'service.dart';

void main() async{
  final service = Service();
  final server = await shelf_io.serve(service.handler, 'localhost', 8080);
  print('Server running on localhost:${server.port}');
}


