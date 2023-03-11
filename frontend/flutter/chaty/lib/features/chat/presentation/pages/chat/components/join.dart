import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/chat_cubit.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ChatCubit>(context);
    final ed = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Join Chat")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 150,
              child: Card(
                color: Colors.grey.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: ed,
                        decoration: const InputDecoration(
                          hintText: "Enter your name",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        cubit.joinChat(ed.text);
                      },
                      child: const Text("Enter room"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
