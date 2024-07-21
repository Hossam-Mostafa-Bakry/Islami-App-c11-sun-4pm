import 'package:flutter/material.dart';


// git & github

// 1- versioned files
     // * have no update
     // * have update
     // * have update
// 2- unVersioned files

// commit

class HadethView extends StatelessWidget {
  const HadethView({super.key});


  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    return Center(
      child: Text(
        "hadeth View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
