import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoInfo extends StatelessWidget {
  final int size;
  const BoletoInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.secondary, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logomini,
              color: AppColors.background,
              width: 56,
              height: 34,
            ),
            Container(
              height: 32,
              width: 1,
              color: AppColors.stroke,
            ),
            Text.rich(TextSpan(
                text: "Você tem ",
                style: TextStyles.captionBackground,
                children: [
                  TextSpan(
                    text: "$size boletos\n",
                    style: TextStyles.captionBoldBackground,
                  ),
                  TextSpan(
                      text: "cadastrados para pagar",
                      style: TextStyles.captionBoldBackground)
                ]))
          ],
        ),
      ),
    );
  }
}
