import 'package:data_transfer/bloc/data_event.dart';
import 'package:data_transfer/bloc/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc()
      : super(DataInitialState(name: '', email: '', city: '', country: '')) {
    on<DataInitialEvent>((event, emit) {
      emit(DataInitialState(
          name: event.name,
          email: event.email,
          city: event.city,
          country: event.country));
    });
  }
}
