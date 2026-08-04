import 'package:flutter/material.dart';
import 'package:foodie/utils/colors.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}): super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;

  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState(){
    super.initState();
    _prepareText();
  }

  @override
  void didUpdateWidget(covariant ExpandableTextWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.text != oldWidget.text){
      _prepareText();
    }
  }

  void _prepareText() {
    // 1. Convert block tags to newlines
    // 2. Remove all other HTML
    // 3. Decode common entities
    String cleanedText = widget.text
        .replaceAll(RegExp(r'<(p|br|div|h[1-6])[^>]*>'), '\n') 
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&#39;', "'")
        .replaceAll('&quot;', '"')
        .replaceAll('&amp;', '&')
        .trim();

    if(cleanedText.length > textHeight.toInt()){
      firstHalf = cleanedText.substring(0, textHeight.toInt());
      secondHalf = cleanedText.substring(textHeight.toInt(), cleanedText.length);
    }else{
      firstHalf=cleanedText;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty? SmallText(color: AppColors.paraColor, size: Dimensions.font16, text: firstHalf):Column(
        children: [
          // Use the flexible SmallText (no more maxLines:1 limit)
          SmallText(
              height: 1.8, 
              color: AppColors.paraColor, 
              size: Dimensions.font16, 
              text: hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
          ),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: hiddenText? "Show more": "Show less", color: AppColors.mainColor,),
                Icon(hiddenText? Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,),
              ],
            )
          )
        ],
      ),
    );
  }
}
