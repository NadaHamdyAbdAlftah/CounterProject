import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vanilla_contacts_curse/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
            child:BlocBuilder<CounterCubit, int>(
                 builder: (context, state) {
                     return Text('$state',
                     style: Theme.of(context).textTheme
              .displayMedium,);
        },
      ),),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().Increment(),
            key: const Key('counterCubit_increment_fab'),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().Decrement(),

            key: const Key('counterCubit_decrement_fab'),
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
