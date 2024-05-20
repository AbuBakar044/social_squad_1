import 'package:flutter/material.dart';
import 'package:social_squad_1/add_friend_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
       
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Bhai jan apky pass koi dost nai hy\n(+) waly button ko dabaen or life jingalala bnaen',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddFriendScreen()));
        },
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
