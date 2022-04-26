abstract class CounterStates{}
class InitialStates extends CounterStates{}
class MinsStates extends CounterStates{
  final int counter ;

  MinsStates(this.counter);

}
class plusStates extends CounterStates{

  final int counter;

  plusStates(this.counter);
}