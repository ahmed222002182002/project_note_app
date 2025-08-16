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
                  padding:  EdgeInsets.only(bottom: 24),
                  child:  Text('Flutter tips',style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),),
                ),

                subtitle: Text('Build your Career with Ahmed yasser',style: TextStyle(
                  fontSize: 22,
                  color: Colors.black.withOpacity(0.2),
                ),),
                trailing: IconButton(onPressed: (){},
                  icon:const Icon(Icons.delete_rounded) ,color:Colors.black,
                iconSize: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 218,top: 30),
                child: Text('May 21,2022',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.2),
                ),),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
      ),

    );
  }
}
