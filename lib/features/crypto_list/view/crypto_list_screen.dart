

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:taleaiverse/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:taleaiverse/features/crypto_list/widgets/widgets.dart';
import 'package:taleaiverse/repositories/crypto_coins/crypto_coins.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  final _cryptoListBloc = CryptoListBloc(
    GetIt.I<AbstractCoinsRepository>(),
  );

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("CryptoAPP"),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            _cryptoListBloc.add(LoadCryptoList());
          },
          child: BlocBuilder<CryptoListBloc, CryptoListState>(
            bloc: _cryptoListBloc,
            builder: (context, state) {
              if (state is CryptoListLoaded) {
                return ListView.separated(
                    padding: const EdgeInsets.only(top: 16),
                    itemCount: state.coinsList.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, i) {
                      final coin = state.coinsList[i];
                      return CryptoCoinsTile(coin: coin);
                    });
              }
              if (state is CryptoListLoadingFailure) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Something went wrong',
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        'Please try again later',
                        style:
                            theme.textTheme.labelSmall?.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 30),
                      TextButton(
                        onPressed: () {
                          _cryptoListBloc.add(LoadCryptoList());
                        },
                        child: const Text('Try again'),
                      ),
                    ],
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        )

        // (_cryptoCoinsList == null)
        //     ? const Center(child: CircularProgressIndicator())
        //     : ListView.separated(
        //         padding: const EdgeInsets.only(top: 16),
        //         itemCount: _cryptoCoinsList!.length,
        //         separatorBuilder: (context, index) => Divider(),
        //         itemBuilder: (context, i) {
        //           final coin = _cryptoCoinsList![i];
        //           return CryptoCoinsTile(coin: coin);
        //         }),
        );
  }
}
