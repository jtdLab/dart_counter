class ApplicationError extends Error {
  final String msg;

  ApplicationError(this.msg);

  @override
  String toString() {
    return 'ApplicationError: $msg';
  }

  factory ApplicationError.unexpectedValue() => ApplicationError(
        'Value not available.',
      );

  factory ApplicationError.onlyAdvancedSettingsInGameExpected() =>
      ApplicationError(
        'AdvancedSettingsBloc did emit state other than AdvancedSettingsInGame. '
        'But only AdvancedSettingsInGame are expected.',
      );

  factory ApplicationError.keyBoardInitialExpected() => ApplicationError(
        'Expected KeyBoardInitial but KeyBoardFocused found.',
      );

  factory ApplicationError.keyBoardFocusedExpected() => ApplicationError(
        'Expected KeyBoardFocused but KeyBoardInitial found.',
      );
}
