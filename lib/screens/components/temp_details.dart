import 'package:flutter/material.dart';
import 'package:tesla_animated_app/screens/components/temp_button.dart';
import '../../constanins.dart';
import '../../home_controller.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    Key? key,
    required HomeController controller,
  }) : _controller = controller, super(key: key);

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempButton(
                  isActive: _controller.isCoolSelected,
                  svgSource: 'assets/icons/coolShape.svg',
                  title: 'cool',
                  press: _controller.updateCoolSelectedTab,
                ),
                const SizedBox(width: defaultPadding,),
                TempButton(
                  isActive: !_controller.isCoolSelected,
                  svgSource: 'assets/icons/heatShape.svg',
                  title: 'heat',
                  press: _controller.updateCoolSelectedTab,
                  activeColor: redColor,
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: _controller.incrementTemp,
                icon: Icon(Icons.arrow_drop_up, size: 48,),
              ),
              Text('${_controller.temp}' + "\u2103", style: TextStyle(fontSize: 86),),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: _controller.decrementTemp,
                icon: Icon(Icons.arrow_drop_down, size: 48,),
              ),
            ],
          ),

          Spacer(),
          Text('CURRENT TEMPERATURE'),
          const SizedBox(height: defaultPadding,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inside".toUpperCase(),
                  ),
                  Text(
                    "20" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              const SizedBox(width: defaultPadding,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "outside".toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    "35" + "\u2103",
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}