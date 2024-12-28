class OnBoardState {
  final int currentPage;

  OnBoardState({this.currentPage = 0});

  OnBoardState copyWith({int? currentPage}) {
    return OnBoardState(
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
