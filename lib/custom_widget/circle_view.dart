import 'package:flutter/material.dart';

class Cricul extends StatelessWidget {
  const Cricul({required this.isActive,required this.color});
 final bool isActive;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      radius: 40,
      backgroundColor:  Colors.white,
      child:  CircleAvatar(
        radius: 34,
        backgroundColor:  color,
      ),
    ) : CircleAvatar(
      radius: 40,
      backgroundColor:  color,
    );
  }
}
class CriclList extends StatefulWidget {
  const CriclList();

  @override
  State<CriclList> createState() => _CriclListState();
}
int currentindex=0;
List<Color>coler=const[
  Color(0xff332A30),
   Color(0xff474044),
   Color(0xff4F5165),
   Color(0xff547AA5),
   Color(0xff50D8D7)


];

class _CriclListState extends State<CriclList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2*40,
      child: ListView.builder(
          itemCount: coler.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return  Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: (){
                  currentindex=index;
                  setState(() {

                  });
                },
                child: Cricul(
                  color: coler[index],
                  isActive: currentindex==index,
                ),
              ),
            );
          }),
    ) ;
  }
}