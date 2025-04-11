import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_to_cart_from_details_event.dart';
part 'add_to_cart_from_details_state.dart';

class AddToCartFromDetailsBloc
    extends Bloc<AddToCartFromDetailsEvent, AddToCartFromDetailsState> {
  AddToCartFromDetailsBloc() : super(AddToCartFromDetailsInitial()) {
    on<AddToCartFromDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
