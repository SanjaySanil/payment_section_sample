import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startup_projects/consts/color_constants.dart';
import 'package:startup_projects/consts/size_constants.dart';
import 'package:startup_projects/consts/text_constants.dart';
import 'package:startup_projects/views/widgets/reusable_button/reusable_button.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextConst.TRANSACTIONS,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: SizeConstants.gap02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableButton(
              onTap: () {},
              borderRadius: 20,
              text: TextConst.ONHOLD,
              color: Colors.grey.shade400,
            ),
            ReusableButton(
              onTap: () {},
              borderRadius: 20,
              text: "${TextConst.PAYOUTS} (15)",
              color: ColorConst.blue,
            ),
            ReusableButton(
              onTap: () {},
              borderRadius: 20,
              text: TextConst.REFUND,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        ListView.builder(
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.only(top: SizeConstants.gap03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .07,
                          width: MediaQuery.of(context).size.height * .07,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        const SizedBox(width: SizeConstants.gap03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order #1605552",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              "Jul 12, 02:06 PM",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "₹799",
                          style: TextStyle(
                              color: ColorConst.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                                backgroundColor: Colors.green, maxRadius: 6),
                            const SizedBox(width: SizeConstants.gap01),
                            Text(
                              "Successful",
                              style: GoogleFonts.poppins(
                                  color: ColorConst.textMediumColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: SizeConstants.gap01,
                ),
                Text(
                  "₹397.4 deposited to:552400056211",
                  style: GoogleFonts.poppins(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Divider(
                  thickness: 1,
                  color: ColorConst.borderColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
