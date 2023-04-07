import 'package:bank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,4,16,16),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'Ações da conta',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){},
                    child: BoxCard(
                      boxContent: _AccountActionsContent(
                        icon: Icon(Icons.account_balance_wallet),
                        text: 'Depositar',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: BoxCard(
                      boxContent: _AccountActionsContent(
                        icon: Icon(Icons.cached),
                        text: 'Transferir',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: BoxCard(
                      boxContent: _AccountActionsContent(
                        icon: Icon(Icons.center_focus_strong),
                        text: 'Ler',
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      child: Column(
        children: [
          icon,
          Text(text)
        ],
      ),
    );
  }
}
