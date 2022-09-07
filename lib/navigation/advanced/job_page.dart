import 'package:flutter/material.dart';
import 'package:roadmap/navigation/advanced/job_card.dart';

import 'package:roadmap/navigation/advanced/ScreenData.dart';


class JobForm extends StatefulWidget {
  const JobForm({Key? key}) : super(key: key);

  static const id = '/jobform';

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  final nameController = TextEditingController();
  final jobTitleController = TextEditingController();
  @override
  void dispose() {
    
    super.dispose();
    nameController.dispose();
    jobTitleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    label: const Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: jobTitleController,
                decoration: InputDecoration(
                    label: const Text('Job'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, JobCard.id,
                    arguments: ScreenArguments(
                      name: nameController.text, jobTitle: jobTitleController.text
                    ));
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
