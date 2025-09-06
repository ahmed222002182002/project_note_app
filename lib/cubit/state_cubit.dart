abstract class Stateallt{}
class Noteinitalstate extends Stateallt{}
class lodingstate extends Stateallt{

}
class successtate extends Stateallt{

}
class failerstate extends Stateallt{
   final String errormessage;
   failerstate( this.errormessage);
}