import 'package:flutter/material.dart';
import 'package:taleaiverse/repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinsTile extends StatelessWidget {
  const CryptoCoinsTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading:
          Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "${coin.priceEURO} €",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
      ),
      onTap: () {
        Navigator.of(context).pushNamed("/coin", arguments: coin);
      },
    );
  }
}