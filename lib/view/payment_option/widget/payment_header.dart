import 'package:flutter/widgets.dart';

import '../../../theming/colors.dart';

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment methods',
            style: TextStyle(
                color: AppColor.textColor,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Choose desired vehicle type. We offer cars suitable for most every day needs.',
            style: TextStyle(color: AppColor.textColor, fontSize: 17),
          )
        ],
      ),
    );
  }
}
