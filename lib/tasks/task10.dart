import 'package:flutter/material.dart';
// import http
import 'package:http/http.dart' as http;

class Task10 extends StatefulWidget {
  const Task10({super.key});

  @override
  State<Task10> createState() => _Task8State();
}

class _Task8State extends State<Task10> {
  String sample = "";

  void fetchAllProducts() async {
    var request = http.Request(
        'GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Async real example using postman"),
        ),
        body: const Scaffold());
  }
}
