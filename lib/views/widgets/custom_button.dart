import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? color;

  const CustomButton({
    Key? key,
    this.label = 'Continue',
    required this.onPressed,
    this.color,
  }) : super(key: key);

  bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
          onPressed: onPressed,
          child: Container(
              child: Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              )),
        ));
  }
}
