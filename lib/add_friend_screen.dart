import 'package:flutter/material.dart';

class AddFriendScreen extends StatefulWidget {
  const AddFriendScreen({super.key});

  @override
  State<AddFriendScreen> createState() => _AddFriendScreenState();
}

class _AddFriendScreenState extends State<AddFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Add Friend'),
          centerTitle: true,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.amber,
                ),
                const SizedBox(
                  height: 60.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Add Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Add Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: 'Add Details',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Lahore da pava, akhter lava',
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.amber,
                    ),
                    fixedSize: MaterialStatePropertyAll(
                      Size(
                        MediaQuery.sizeOf(context).width,
                        45.0,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
