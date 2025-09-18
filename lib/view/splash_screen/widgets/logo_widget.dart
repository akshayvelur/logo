
import 'package:flutter/material.dart';
import 'package:logo/utils/mediaquery.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/Logo.png",
        fit: BoxFit.contain,
        height: mediaqueryHeight(.05, context),
        width: mediaqueryWidth(.16, context),
      ),
    );
  }
}
