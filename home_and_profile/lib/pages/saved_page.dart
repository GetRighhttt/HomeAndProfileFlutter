import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Saved',
          ),
          centerTitle: true,
          elevation: 4,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.remove_circle_outline,
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 1000,
                      color: Colors.blueAccent.shade200,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Remove from Saved Page?',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            ElevatedButton(
                              style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(
                                  10,
                                ),
                                shadowColor:
                                    MaterialStatePropertyAll(Colors.white),
                              ),
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: const SingleChildScrollView());
  }
}
