import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NeoMorphismPage extends StatefulWidget {
  final Widget childWidget;
  const NeoMorphismPage({super.key, required this.childWidget});

  @override
  State<NeoMorphismPage> createState() => _NeoMorphismPageState();
}

class _NeoMorphismPageState extends State<NeoMorphismPage> {
  @override
  Widget build(BuildContext context) {
    return    Container(
      color: const Color(0xff6f1e51),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 1.sw,
          decoration: BoxDecoration(
            color: const Color(0xff6f1e51),
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff6f1e51),
                Color(0xff6f1e51),
              ],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff8d3c6f),
                offset: Offset(-20.0, -20.0),
                blurRadius: 36,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xff510033),
                offset: Offset(20.0, 20.0),
                blurRadius: 36,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: widget.childWidget,
        ),
      ),
    );

  }
}
