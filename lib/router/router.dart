import 'package:taleaiverse/features/crypto_coin/crypto_coin.dart';
import 'package:taleaiverse/features/crypto_list/crypto_list.dart';
import 'package:taleaiverse/features/onboardig/onboarding.dart';

final routes = {
  '/': (context) => const OnboardingScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};