import 'package:flutter/material.dart';
import 'package:flutter_flipperkit/flutter_flipperkit.dart';

import 'app.dart';

void main() async { 
  FlipperClient flipperClient = FlipperClient.getDefault();

  flipperClient.addPlugin(new FlipperReduxInspectorPlugin());
  flipperClient.start();

  runApp(createApp());
}

