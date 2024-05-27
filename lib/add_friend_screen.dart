import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class AddFriendScreen extends StatefulWidget {
  const AddFriendScreen({super.key});

  @override
  State<AddFriendScreen> createState() => _AddFriendScreenState();
}

class _AddFriendScreenState extends State<AddFriendScreen> {
  final formKey = GlobalKey<FormState>();
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        showCustomBottomSheet();
                      },
                      child: const CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Bhai jan naam ty likho';
                        }
                      },
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            value.length < 11 ||
                            value.length > 11) {
                          return 'Bhai jan sahi number add kren';
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.phone,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Bhai jan detail add kren';
                        }
                      },
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
                    // ElevatedButton(
                    //   onPressed: () {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       const SnackBar(
                    //         content: Text(
                    //           'Lahore da pava, akhter lava',
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   style: ButtonStyle(
                    //     backgroundColor: const MaterialStatePropertyAll(
                    //       Colors.amber,
                    //     ),
                    //     fixedSize: MaterialStatePropertyAll(
                    //       Size(
                    //         MediaQuery.sizeOf(context).width,
                    //         45.0,
                    //       ),
                    //     ),
                    //   ),
                    //   child: const Text(
                    //     'Save',
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),

                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Form Theek hy, Zindabad',
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Lahore da pava, akhter lava',
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 45,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void showCustomBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.sizeOf(context).height / 4,
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Text(
                    'Choose Picture From',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () async {
                              await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                            },
                            icon: const Icon(
                              Icons.camera,
                              size: 40,
                              color: Colors.amber,
                            ),
                          ),
                          const Text(
                            'Camera',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () async {
                              await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                            },
                            icon: const Icon(
                              Icons.album,
                              size: 40,
                              color: Colors.amber,
                            ),
                          ),
                          const Text(
                            'Gallery',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
