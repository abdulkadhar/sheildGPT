import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/stats_screen/widget/counter_holder_widget.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class OptionSelectionWidget extends StatelessWidget {
  final int count;
  final String title;
  final IconData iconData;
  final String subtitle;
  final VoidCallback onPress;
  const OptionSelectionWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onPress,
    this.count = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: (MediaQuery.of(context).size.height * 0.77) / 4,
          decoration: BoxDecoration(
            color: const Color(0XFF0F112C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    iconData,
                    color: Colors.white,
                    size: 22,
                  ),
                  const Spacer(),
                  count != 0
                      ? RippleAnimation(
                          minRadius: 15,
                          maxRadius: 16,
                          repeat: true,
                          color: const Color(0xFF143064),
                          child: CounterHolderWidget(
                            count: count,
                          ),
                        )
                      : CounterHolderWidget(
                          count: count,
                        ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtitle,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
