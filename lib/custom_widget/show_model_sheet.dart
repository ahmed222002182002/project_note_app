import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_project/cubit/create_cubit.dart';
import 'package:notes_app_project/cubit/state_cubit.dart';
import 'package:notes_app_project/custom_widget/widget_form.dart';
class ShowModelButtonSheet extends StatelessWidget {
  const ShowModelButtonSheet();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.all(25),
      child: BlocConsumer<Notecubit, Stateallt>(
          listener: (context, state) {
            if(state is failerstate){
              print('failed${state.errormessage}');
            }
            if(state is successtate){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall:state is lodingstate ? true:false,
            child:  const SingleChildScrollView(child:  FormWidget()));
          }
      ),
    );
  }
}
