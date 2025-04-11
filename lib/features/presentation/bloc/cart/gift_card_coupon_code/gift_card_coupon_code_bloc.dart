import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'gift_card_coupon_code_event.dart';
part 'gift_card_coupon_code_state.dart';

class GiftCardCouponCodeBloc
    extends Bloc<GiftCardCouponCodeEvent, GiftCardCouponCodeState> {
  GiftCardCouponCodeBloc() : super(GiftCardCouponCodeInitial()) {
    on<GiftCardCouponCodeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
