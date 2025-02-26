import 'package:flutter/material.dart';

import 'task6.dart';
import 'task7.dart';

// import 'package:tasks/tasks/task6.dart';
// import 'package:tasks/tasks/task7.dart';
// 5
class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5();
}

class _Task5 extends State<Task5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_upward, size: 30, color: Colors.orange),
              SizedBox(width: 6),
              Text("Orange Money",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  prefix: Text("+962"),
                ),
                keyboardType: TextInputType.phone,
              ),
              // SizedBox(height: 20),
              // TextField(
              //   decoration: InputDecoration(
              //     labelText: "wallet Number string with 077,078, or 079",
              //     border: OutlineInputBorder(),
              //   ),
              //   keyboardType: TextInputType.number,
              // ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                  // suffix: Text("show"),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ForgotPassword()),
                    // );
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Task7()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lock_open, color: Colors.white),
                      ],
                    )),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Task6()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Icon(Icons.face, size: 50, color: Colors.black),
                  SizedBox(height: 4),
                  Text("Face ID",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              )
            ],
          ),
        ));
  }
}
