import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'discount_coupon_code_event.dart';
part 'discount_coupon_code_state.dart';

class DiscountCouponCodeBloc
    extends Bloc<DiscountCouponCodeEvent, DiscountCouponCodeState> {
  DiscountCouponCodeBloc() : super(DiscountCouponCodeInitial()) {
    on<DiscountCouponCodeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
