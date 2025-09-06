abstract class Stateallcubit{}
class initalstate extends Stateallcubit{}
class lodingstate extends Stateallcubit{

}
class successtate extends Stateallcubit{

}
class failerstate extends Stateallcubit{
   final String errormessage;
   failerstate( this.errormessage);
}