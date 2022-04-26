import 'package:counter_bybloc_cubit/modules/Cubit/States.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/Cubit.dart';

class Counter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context, state){
          //if(state is MinsStates){print('minusstate is  ${state.counter}');};
         // if(state is plusStates){print('pluseState is  ${state.counter} ');};
        },
        builder: (context, state)
        {
          return  Scaffold(
            backgroundColor: Colors.green.withOpacity(.6),
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.green.withOpacity(.6),
              title: Container(
                width: double.infinity,
                child: Text('Counter',style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),textAlign: TextAlign.center,),
              ),

            ),

            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.grey,
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: Icon(Icons.add,color: Colors.black),),
                  SizedBox(width: 15,),
                  Text('${CounterCubit.get(context).counter}',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    backgroundColor: Colors.grey,
                    onPressed: (){
                     CounterCubit.get(context).minus();
                    },

                    child: Icon(Icons.remove,color: Colors.black),),


                ],),
            ),
          );

        },

      ),
    );
  }
}
