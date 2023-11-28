import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/generated/assets.dart';
import 'package:mobx_demo/main.dart';


@RoutePage()
class DiceRollPage extends StatefulWidget {
  const DiceRollPage({super.key});

  @override
  State<DiceRollPage> createState() => _DiceRollPageState();
}

class _DiceRollPageState extends State<DiceRollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: counter.roll,
                child: Observer(
                  builder: (_) =>
                      Image.asset('assets/image/dice${counter.left}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: counter.roll,
                child: Observer(
                  builder: (_) =>
                      Image.asset('assets/image/dice${counter.right}.jpg'),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Observer(
            builder: (_) => Text(
              'Total ${counter.total}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 16,
                  fontFamily: 'Verdana'),
            ),
          ),
        ),
      ],
    ),
    )
    );
  }
}
