import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/payment_option/widget/payment_header.dart';
import 'package:team_project/view/payment_option/widget/payment_option_body.dart';

class PaymentOptionScreen extends StatelessWidget {
  const PaymentOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.secondaryColor,
        appBar: AppBar(
          backgroundColor: AppColor.mainColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          actions: [
            const Text(
              'Add',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            horizontalSpace(16),
          ],
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(10),
              const PaymentHeader(),
              verticalSpace(20),
              const PaymentOptionBody(),
              verticalSpace(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Current method',
                  style: TextStyle(color: AppColor.greyColor, fontSize: 16),
                ),
              ),
              const CashPaymentContainer(),
              verticalSpace(40),
              CustomBotton(
                text: 'Done',
                textColor: AppColor.secondaryColor,
                color: AppColor.mainColor,
                onTap: () {
                  context.pushNamed('successAppointmentScreen');
                },
              ),
            ],
          ),
        ));
  }
}
