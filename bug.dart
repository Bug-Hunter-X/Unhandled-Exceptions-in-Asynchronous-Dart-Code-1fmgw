```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the JSON response
      final jsonData = jsonDecode(response.body);
      // Access and use the data from jsonData
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions comprehensively
    print('Error fetching data: $e');
    // Consider rethrowing or handling based on specific error types.
    rethrow; // Rethrow to allow higher-level handling
  }
}
```