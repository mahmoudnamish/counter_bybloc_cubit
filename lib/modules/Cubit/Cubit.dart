import 'package:bloc/bloc.dart';
import 'package:counter_bybloc_cubit/modules/Cubit/States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(InitialStates());
  static CounterCubit get(context)=>BlocProvider.of(context);
   int counter =0;

   void minus(){
     counter --;
     emit(MinsStates(counter));
   }
   void plus(){
     counter++;
     emit(plusStates(counter));
   }
}