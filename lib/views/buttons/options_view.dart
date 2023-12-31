import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/widgets/custom_button.dart';

import '../../providers/app_provider.dart';

class OptionsView extends StatelessWidget {
  const OptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Wrap(
      children: List.generate(54, (index) {
        return (index == 0)
           ? CustomButton(
            onPressed: (){
              provider.selectedView = provider.defaultView;
            }, 
            color: Colors.black, 
            child: const Center(child: Icon(Icons.home, size: 50, color: Colors.white,)))
            : (index == 52)
                ? CustomButton(
                    onPressed: () {},
                    color: Colors.black,
                    child: const Center(
                      child: Icon(
                        Icons.arrow_circle_left,
                        color: Colors.white,
                        size: 40,
                      ),
                    ))
                : (index == 53)
                    ? CustomButton(
                        onPressed: () {},
                        color: Colors.black,
                        child: const Center(
                          child: Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                            size: 40,
                          ),
                        ))
                    : CustomButton(
                        onPressed: () {},
                        color:const Color.fromARGB(255, 104, 1, 1),
                        child: Center(
                          child: Text('Option $index', style: TextStyle(color: Colors.white),),
                        ));
      }),
    );
  }
}