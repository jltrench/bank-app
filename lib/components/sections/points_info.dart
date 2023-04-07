import 'package:bank/components/box_card.dart';
import 'package:bank/components/color_dot.dart';
import 'package:bank/components/content_division.dart';
import 'package:bank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PointsInfo extends StatelessWidget {
  const PointsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Text('Pontos da conta', style: Theme.of(context).textTheme.titleMedium,),
          ),
          BoxCard(boxContent: _PointsInfoContent()),
        ],
      ),
    );
  }
}

class _PointsInfoContent extends StatelessWidget {
  const _PointsInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pontos totais:',
            
          ),
          Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 3),
            child: ContentDivision(),
          ),
          Text('Objetivos:', style: Theme.of(context).textTheme.titleMedium,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ColorDot(color: ThemeColors.recentActivity['freeDelivery']),
              ),
              Text('Entrega gratis: 1500pts')
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ColorDot(color: ThemeColors.recentActivity['freeStreaming']),
              ),
              Text('1 mes de streaming: 3000pts')
            ],
          )
        ],
      ),
    );
  }
}
