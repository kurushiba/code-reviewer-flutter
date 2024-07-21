import 'package:flutter/material.dart';

void main() async {
  runApp(
    const MaterialApp(
      title: 'Code Reviewer',
      home: CodeReviewer(),
    ),
  );
}

class CodeReviewer extends StatefulWidget {
  const CodeReviewer({
    super.key,
  });

  @override
  State<CodeReviewer> createState() => _CodeReviewerState();
}

class _CodeReviewerState extends State<CodeReviewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Code Reviewer"),
      ),
      body: Container(
        color: Colors.grey[900],
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  maxLines: null,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 0),
                backgroundColor: Colors.indigo[600],
                disabledBackgroundColor: Colors.indigo[600]!.withOpacity(0.5),
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.white.withOpacity(0.5),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text('レビューする'),
            ),
          ],
        ),
      ),
    );
  }
}
