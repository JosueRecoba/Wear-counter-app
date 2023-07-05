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
          '0 ml',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'Faltan 2001 ml',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }

  Widget _indicators(){
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _percentage(),
            _smallDivider(),
            _hydration(),
          ],
        );
  }

  Widget _percentage(){
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const CircularProgressIndicator(
              strokeWidth: 6,
              value: .75,
              color: Color.fromARGB(255, 106, 255, 7),
              backgroundColor: Color.fromARGB(58, 88, 88, 88),    
            ),
            Text(
              '100%',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ]
        ),
        Text(
          'Hoy',
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }

  Widget _smallDivider(){
    return const VerticalDivider(
      color: Color.fromARGB(255, 0, 253, 13),
      width: 20,
      thickness: 2,
      indent: 10,
      endIndent: 0,
    );
  }

  Widget _hydration(){
    return Text(
            '1.0',
            style: Theme.of(context).textTheme.headlineSmall,
          );
  }

  Widget _buttonReg(){
    return Center(
          child: ElevatedButton(
              onPressed: () {},
              child: 
                const Text(
                  'Registrar',
                )
            )
          );
  }
}