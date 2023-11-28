import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/main.dart';




class SliderValue extends StatefulWidget {
  const SliderValue({super.key});

  @override
  State<SliderValue> createState() => _SliderValueState();
}

class _SliderValueState extends State<SliderValue> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Observer(builder: (BuildContext context) {
            return Column(
              children: [
                Text("Value of slider:---- ${counter.valueOfSlider}")
              ],
            );
          },

          ),
        )

    );
  }
}
