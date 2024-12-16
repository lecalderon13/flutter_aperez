import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:animate_do/animate_do.dart'; 


class VideoButtons extends StatelessWidget {
  
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         _CustomIconButton( value: video.likes, iconColor : const Color.fromARGB(255, 7, 84, 228), iconData: Icons.favorite_outlined,),
         const SizedBox(height: 25,),
         _CustomIconButton( value: video.views, iconData: Icons.remove_red_eye_outlined ),
         const SizedBox(height: 25,),

         SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 4),
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline_outlined)
        ),
      ],
    );
  }
}

//Widget personalizado y privado

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    Color? iconColor,
    }):color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
         icon: Icon(iconData, color: color),iconSize: 50,),

          if(value >0)
          Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
