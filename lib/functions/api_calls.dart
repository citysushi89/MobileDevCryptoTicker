import 'dart:convert';
import 'package:http/http.dart' as http;

Future getCryptoQuote(String ticker, String currency, String apiKey) async {
  String uri =
      'https://rest.coinapi.io/v1/exchangerate/$ticker/$currency?apikey=7700614B-08A5-4535-9EAA-196B912749FC';
  http.Response response = await http.get(Uri.parse(uri));
  if (response.statusCode == 200) {
    String data = response.body;
    var decodedData = jsonDecode(data);
    return decodedData;
  } else {
    print(response.statusCode);
  }
}
