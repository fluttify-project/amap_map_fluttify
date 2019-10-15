import 'dart:convert';
import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

typedef void MACustomCalloutViewCreatedCallback(MACustomCalloutView controller);

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MACustomCalloutView_iOS extends StatefulWidget {
  const MACustomCalloutView_iOS({
    Key key,
    this.onViewCreated,
  }) : super(key: key);

  final MACustomCalloutViewCreatedCallback onViewCreated;

  @override
  _MACustomCalloutView_iOSState createState() => _MACustomCalloutView_iOSState();
}

class _MACustomCalloutView_iOSState extends State<MACustomCalloutView_iOS> {
  MACustomCalloutView _controller;

  @override
  Widget build(BuildContext context) {
    final gestureRecognizers = <Factory<OneSequenceGestureRecognizer>>[
      Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
    ].toSet();

    final messageCodec = StandardMessageCodec();
    return UiKitView(
      viewType: 'me.yohom/MACustomCalloutView',
      gestureRecognizers: gestureRecognizers,
      onPlatformViewCreated: _onViewCreated,
      creationParamsCodec: messageCodec,
    );
  }

  void _onViewCreated(int id) {
    _controller = MACustomCalloutView()..refId = id;
    if (widget.onViewCreated != null) {
      widget.onViewCreated(_controller);
    }
  }

  @override
  void dispose() {
    ObjectFactory_iOS.release(_controller);
    super.dispose();
  }
}
