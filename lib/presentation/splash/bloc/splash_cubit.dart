import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> setup() async {
    try {
      emit(SplashLoading());
      Future.delayed(const Duration(seconds: 2), () => emit(SplashLoaded()));
    } catch (e) {
      emit(SplashFailed(error: e.toString()));
    }
  }
}
