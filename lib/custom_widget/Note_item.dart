import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Noteitem extends StatelessWidget {
  const Noteitem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orange,
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 12,top: 32,bottom: 24),
        child: Column(
            children: [
              ListTile(
                title: const Padding(
                  padding:  EdgeInsets.only(bottom: 16),
                  child:  Text('Flutter tips',style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text('Build your Career with Ahmed yasser',style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.2),
                  ),),
                ),
                trailing: IconButton(onPressed: (){},
                  icon:const Icon(Icons.delete_rounded) ,color:Colors.black,
                iconSize: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200,top: 30,),
                child: Text('May 21,2022',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.2),
                ),),
              ),
            ],
          ),
      ),
    );
  }
}
