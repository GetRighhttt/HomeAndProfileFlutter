import 'package:flutter/material.dart';
import 'package:home_and_profile/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage(this.paddingVal, this.color, this.imageVariable,
      this.title, this.description,
      {super.key});

  final double paddingVal;
  final Color color;
  final String imageVariable;
  final String title;
  final String description;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;
  double fontSizeRandomText = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: true,
        primary: true,
        elevation: 4,
        shadowColor: Colors.grey.shade100,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.save,
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
                            'Save Information?',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            Image.asset(
              widget.imageVariable,
            ),
            Wrap(
              spacing: 15,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 10;
                      fontSizeRandomText = 9;
                    });
                  },
                  child: const Text(
                    'Extra Small',
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 15;
                      fontSizeRandomText = 11;
                    });
                  },
                  child: const Text(
                    'Small',
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(
                      10,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 20;
                      fontSizeRandomText = 14;
                    });
                  },
                  child: const Text(
                    'Medium',
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 40;
                      fontSizeRandomText = 20;
                    });
                  },
                  child: const Text(
                    'Large',
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 80;
                      fontSizeRandomText = 40;
                    });
                  },
                  elevation: 4,
                  child: const Text(
                    'Extra Large',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: fontSizeCustom,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Text(
              randomString,
              style: TextStyle(
                fontSize: fontSizeRandomText,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              randomString,
              style: TextStyle(
                fontSize: fontSizeRandomText,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              randomString,
              style: TextStyle(
                fontSize: fontSizeRandomText,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
