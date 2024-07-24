import 'package:flutter/material.dart';
import 'package:islami_app_c11_sun_4pm/modules/hadeth/hadeth_view.dart';

class HadithDetailsView extends StatelessWidget {
  static const String routeName = "hadithDetails";

  const HadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {

    var data = ModalRoute.of(context)?.settings.arguments as HadithData;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 30,
            right: 30,
            bottom: 80,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              Text(
                data.title,
                style: theme.textTheme.bodyMedium,
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    data.body,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                  ),
                  itemCount: 6,
                ),
              ),

              // Text(
              //   content,
              //   textAlign: TextAlign.center,
              //   style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
