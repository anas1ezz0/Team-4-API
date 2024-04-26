import 'package:flutter/material.dart';

import '../../../helpers/spacing.dart';
import '../../../theming/colors.dart';

class PaymentOptionBody extends StatelessWidget {
  const PaymentOptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentOptionBodyItem(
          image: 'assets/images/master_card.png',
          title: '**** **** **** 5967',
          subtitle: 'Expires 09/25',
        ),
        PaymentOptionBodyItem(
          image: 'assets/images/visa.png',
          title: '**** **** **** 3802',
          subtitle: 'Expires 10/27',
        ),
      ],
    );
  }
}

class PaymentOptionBodyItem extends StatelessWidget {
  const PaymentOptionBodyItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: AppColor.mainColor, width: 2.3)),
        child: Row(
          children: [
            Image.asset(image),
            horizontalSpace(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: AppColor.greyColor, fontSize: 14),
                ),
              ],
            )
          ],
        ));
  }
}

class CashPaymentContainer extends StatelessWidget {
  const CashPaymentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: AppColor.mainColor, width: 2.3)),
        child: Row(
          children: [
            Container(
              width: 65,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.circular(13),
              ),
              child: CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColor.secondaryColor,
                  child: Image.asset('assets/images/money.png')),
            ),
            horizontalSpace(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cash payment',
                  style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Default method',
                  style: TextStyle(color: AppColor.greyColor, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(Icons.check, color: AppColor.secondaryColor)),
          ],
        ));
  }
}

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor,
      this.onTap});
  final String text;
  final Color color;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
