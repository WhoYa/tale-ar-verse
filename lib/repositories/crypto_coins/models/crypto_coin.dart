
import 'package:equatable/equatable.dart';

class CryptoCoin extends Equatable{
  const CryptoCoin({
    required this.name,
    required this.priceEURO,
    required this.imageUrl 
  });

  final String name;
  final double priceEURO;
  final String imageUrl;
  
  @override
  List<Object?> get props => [name, priceEURO, imageUrl];

}
