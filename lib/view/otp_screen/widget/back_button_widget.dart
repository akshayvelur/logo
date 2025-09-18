
import 'package:flutter/material.dart';
import 'package:logo/utils/mediaquery.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: InkWell(onTap: (){
        Navigator.pop(context);
      },
        child: Container(
          height: mediaqueryHeight(.06, context),
          width: mediaqueryWidth(.06, context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [BoxShadow(blurRadius: 4,spreadRadius: BorderSide.strokeAlignInside)],
          ),child: Center(child: Icon(Icons.arrow_back,color: const Color(0xFF808080),),),
        ),
      ),
    );
  }
}
