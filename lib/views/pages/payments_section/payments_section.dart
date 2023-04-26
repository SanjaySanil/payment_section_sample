import 'package:flutter/material.dart';
import 'package:startup_projects/consts/size_constants.dart';
import 'widgets/default_method_payment_profile.dart';
import 'widgets/payment_overview_section.dart';
import 'widgets/payment_section_appBar.dart';
import 'widgets/transaction_limit_section.dart';
import 'widgets/transactions_section.dart';

class PaymentsSection extends StatelessWidget {
  const PaymentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaymentSectionAppBar(),
      body:SingleChildScrollView(
        child:Container(
          padding:const EdgeInsets.all(SizeConstants.padding01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TransactionLimitSection(),
              DefaultMethodPaymentProfile(),
              PaymentOverviewSection(),
              TransactionsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
