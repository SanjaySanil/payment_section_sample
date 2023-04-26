import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:startup_projects/consts/color_constants.dart';
import 'package:startup_projects/consts/size_constants.dart';
import 'package:startup_projects/consts/text_constants.dart';
import 'package:startup_projects/views/widgets/reusable_button/reusable_button.dart';

class TransactionLimitSection extends StatelessWidget {
  const TransactionLimitSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: SizeConstants.gap03),
      padding: const EdgeInsets.all(SizeConstants.padding01),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConst.borderColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextConst.TRANSACTONLIMIT,
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: SizeConstants.gap01,
          ),
          Text(
            TextConst.TLIMITDESCRIPTION,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: SizeConstants.gap02,
          ),
          LinearPercentIndicator(
            lineHeight: 8,
            padding: const EdgeInsets.all(0),
            barRadius: const Radius.circular(SizeConstants.barRadius),
            percent: 0.3,
            progressColor: ColorConst.blue,
          ),
          const SizedBox(
            height: SizeConstants.gap01,
          ),
          Text(
            "36,668 left out of ₹50,000",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: SizeConstants.gap03,
          ),
          ReusableButton(
              onTap: () {}, text: TextConst.INCREASELIMIT, borderRadius: 5),
        ],
      ),
    );
  }
}
