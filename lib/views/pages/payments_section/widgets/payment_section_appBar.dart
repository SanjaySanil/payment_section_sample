import 'package:flutter/material.dart';
import 'package:startup_projects/consts/text_constants.dart';

class PaymentSectionAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PaymentSectionAppBar({
    super.key,
  });

  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(TextConst.PAYMENTS,
          style: Theme.of(context).textTheme.titleLarge),
      centerTitle: true,
      leading: const Icon(Icons.arrow_back),
      actions: const [
        Icon(Icons.info_outline),
        SizedBox(width: 12),
      ],
    );
  }
}
