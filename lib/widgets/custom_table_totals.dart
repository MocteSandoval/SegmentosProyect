import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomTableTotals extends StatelessWidget {
  const CustomTableTotals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol:"\$");
    const titlesStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black
    );
    const subtitlesStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(  
            children:  [
              const Expanded(child: Text('Total: ',style: titlesStyle,)),
              Expanded(child: Text(numberFormat.format(100),textAlign: TextAlign.right,style: titlesStyle,)),
            ],
          ),
          
          Row(
            children:  [
            const Expanded(child: Text('Impuesto: ', style: subtitlesStyle,)),
              Expanded(child: Text(numberFormat.format(20),textAlign: TextAlign.right,style: subtitlesStyle,)),
            ],
          ),
          Row(
            children:  [
            const Expanded(child: Text('Neto: ', style: subtitlesStyle,)),
              Expanded(child: Text(numberFormat.format(80),textAlign: TextAlign.right,style: subtitlesStyle,)),
            ],
          ),
         
        ],
      ),
    );
  }
}
