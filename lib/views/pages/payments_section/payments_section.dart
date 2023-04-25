import 'package:flutter/material.dart';
import 'package:startup_projects/views/pages/payments_section/widgets/transaction_limit_section.dart';
import 'widgets/payment_section_appBar.dart';

class PaymentsSection extends StatelessWidget {
  const PaymentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaymentSectionAppBar(),
      body:SingleChildScrollView(
        child:Column(
          children: const [
            TransactionLimitSection(),
          ],
        ),
      ),
    );
  }
}
