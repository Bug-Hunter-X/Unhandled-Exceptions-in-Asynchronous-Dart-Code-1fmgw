```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        return null; // Or throw a custom exception
      }
    } else {
      print('Request failed with status: ${response.statusCode}.  Response Body: ${response.body}');
      return null; // Or throw a custom exception with the status code
    }
  } on http.ClientException catch (e) {
    print('Network error: $e');
    return null; // Or throw a custom exception
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; // Rethrow for higher-level handling if needed
  }
}
```