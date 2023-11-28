import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stream_mafazan/stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Mafazan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({Key? key}) : super(key: key);

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.cyan;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamSubscription<int> subscription;
  late StreamSubscription subscription2;
  String values = '';

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream<int> stream = numberStreamController.stream.asBroadcastStream();

    subscription = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
      // super.initState();
    });
    subscription2 = stream.listen(
      (event) {
        setState(() {
          values += '$event -';
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1;
        });
      },
      onDone: () {
        print('onDone was called');
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void stopStream() {
    numberStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Mafazan'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(values),
            ElevatedButton(
              onPressed: addRandomNumber,
              child: const Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: stopStream,
              child: const Text('Stop Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}
