import 'package:flutter/material.dart';
import 'package:startup_projects/consts/color_constants.dart';
import 'package:startup_projects/consts/size_constants.dart';
import 'package:startup_projects/consts/text_constants.dart';

class DefaultMethodPaymentProfile extends StatelessWidget {
  const DefaultMethodPaymentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultPaymentProfile(
            onTap: () {},
            text: TextConst.DEFAULTMETHOD,
            subText: TextConst.ONLINEPAYMENTS),
        const SizedBox(
          height: SizeConstants.gap03,
        ),
        DefaultPaymentProfile(
            onTap: () {},
            text: TextConst.PAYMENTPROFILE,
            subText: TextConst.BANKACCOUNT),
        const SizedBox(
          height: SizeConstants.gap02,
        ),
        Divider(
          thickness: 2,
          color: ColorConst.borderColor,
        ),
      ],
    );
  }
}

//Refactored section for Default Method and Payment Profile
class DefaultPaymentProfile extends StatelessWidget {
  const DefaultPaymentProfile({
    required this.text,
    required this.onTap,
    required this.subText,
    super.key,
  });

  final String text;
  final String subText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                subText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Icon(Icons.arrow_forward_ios_sharp, size: 20),
            ],
          ),
        ),
      ],
    );
  }
}
