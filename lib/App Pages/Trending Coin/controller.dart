import '../../Services/NetworkServices.dart';

Future<dynamic> trending() async {
  final trend_coin = NetworkService();
  final response = await trend_coin.get('/api/v3/search/trending');
  final coins = response['coins'];
  return coins;
}
