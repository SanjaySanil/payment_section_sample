import 'package:flutter/material.dart';
import 'package:startup_projects/consts/color_constants.dart';
import 'package:startup_projects/consts/size_constants.dart';
import 'package:startup_projects/consts/text_constants.dart';

class TransactionLimitSection extends StatelessWidget {
  const TransactionLimitSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(SizeConstants.mainMargin),
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
          )
        ],
      ),
    );
  }
}
