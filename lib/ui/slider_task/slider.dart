import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/main.dart';
import 'package:mobx_demo/ui/slider_task/slider_value.dart';




class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Observer(builder: (BuildContext context) {
          return Column(
            children: [
              Slider( min: 0,
                max: 100,
                label: counter.valueOfSlider.toString(),
                value: counter.valueOfSlider.toDouble(), onChanged: (value) {
                counter.onChangedValue(value);
              },),
              Text("${counter.valueOfSlider}"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SliderValue()),
                  );

                },
                child: const Text('Next page'),
              ),

            ],
          );
        },

        ),
      )

    );
  }
}
