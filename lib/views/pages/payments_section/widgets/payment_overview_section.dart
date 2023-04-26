import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startup_projects/consts/color_constants.dart';
import 'package:startup_projects/consts/size_constants.dart';
import 'package:startup_projects/consts/text_constants.dart';

class PaymentOverviewSection extends StatelessWidget {
  const PaymentOverviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: SizeConstants.gap02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextConst.PAYMENTOVERVIEW,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        TextConst.LIFETIME,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      DropdownButton(
                        underline: Container(),
                        items: [],
                        onChanged: (value) {},
                        icon: const Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ReusableContainer(
              color: ColorConst.orange,
              text: TextConst.AMOUNTONHOLD,
              amount: "₹0",
            ),
            SizedBox(width: SizeConstants.gap02),
            ReusableContainer(
              color: ColorConst.green,
              text: TextConst.AMOUNTRECIVED,
              amount: "₹13,322",
            ),
          ],
        )
      ],
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    required this.color,
    required this.text,
    required this.amount,
    super.key,
  });

  final String text;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(
          top: SizeConstants.gap02,
          bottom: SizeConstants.gap02,
        ),
        padding: const EdgeInsets.all(
          SizeConstants.gap03,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(fontSize: 14, color: ColorConst.white),
            ),
            Text(
              amount,
              style: GoogleFonts.poppins(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
