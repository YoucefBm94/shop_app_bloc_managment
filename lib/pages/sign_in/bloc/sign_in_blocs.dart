import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_bloc_managment/pages/sign_in/bloc/sign_in_events.dart';
import 'package:shop_app_bloc_managment/pages/sign_in/bloc/signin_states.dart';

/// Represents the business logic component for sign-in functionality.
///
/// This BLoC handles the sign-in related events such as email and password input
/// and emits states based on the current sign-in form status.
class SignInBlocs extends Bloc<SignInEvent, SingInState> {
  /// Initializes the [SignInBlocs] with an empty [SingInState].
  SignInBlocs() : super(const SingInState()){
    // Handles email input events.
    on<EmailEvent>((event, emit) {
      // Emits a new state with the updated email.
      emit(state.copyWith(email: event.email));
    });

    // Handles password input events.
    on<PasswordEvent>((event, emit) {
      // Emits a new state with the updated password.
      emit(state.copyWith(password: event.password));
    });
  }
}