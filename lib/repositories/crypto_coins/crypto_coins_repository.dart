
import 'package:dio/dio.dart';
import 'package:taleaiverse/repositories/crypto_coins/crypto_coins.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({
    required this.dio
  });

  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,MATIC,TON,BNB,SOl&tsyms=EUR');

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;

    final cryptoCoinsList = dataRaw.entries
        .map((e) {
          final eurData = (e.value as Map<String, dynamic>)['EUR'] as Map<String, dynamic>;
          final price = eurData['PRICE'];
          final imageUrl = eurData['IMAGEURL'];
          return CryptoCoin(
              name: e.key,
              priceEURO: price,
              imageUrl: 'https://www.cryptocompare.com$imageUrl',
            );})
        .toList();
    return cryptoCoinsList;
  }
}
