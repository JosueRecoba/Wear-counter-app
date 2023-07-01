import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _totalMl(),
          _indicators(),
          _buttonReg()
        ],
      ),
    );
  }

  Widget _totalMl(){
    return Column(
      children: [
        Text(
          '5 ml',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'Faltan 2500 ml',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }

  Widget _indicators(){
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '0 %',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              '2.5',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        );
  }

  Widget _buttonReg(){
    return Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              ),
              onPressed: () {},
              child: 
                const Text(
                  'Registrar',
                )
            )
          );
  }
}