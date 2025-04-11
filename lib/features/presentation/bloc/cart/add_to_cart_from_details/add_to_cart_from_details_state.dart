part of 'add_to_cart_from_details_bloc.dart';

sealed class AddToCartFromDetailsState extends Equatable {
  const AddToCartFromDetailsState();

  @override
  List<Object> get props => [];
}

final class AddToCartFromDetailsInitial extends AddToCartFromDetailsState {}
