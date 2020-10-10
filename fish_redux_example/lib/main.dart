import 'package:flutter/material.dart' hide Action, Page;
import 'package:flutter_flipperkit/flutter_flipperkit.dart';

import 'app.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  FlipperClient flipperClient = FlipperClient.getDefault();

  flipperClient.addPlugin(new FlipperReduxInspectorPlugin());
  flipperClient.start();

  runApp(createApp());
}

