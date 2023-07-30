import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider =
    StateNotifierProvider<HomeScreenNotifier, HomePageState>((ref) {
  return HomeScreenNotifier();
});

class HomeScreenNotifier extends StateNotifier<HomePageState> {
  HomeScreenNotifier() : super(const HomePageState());

  Future<void> fakeLoadAndRedirect() async {
    state = const HomePageState(
      isLoading: true,
    );

    const delay = Duration(seconds: 3);
    await Future.delayed(delay);
    state = const HomePageState();
  }
}

@immutable
class HomePageState extends Equatable {
  final String? location;
  final String? service;
  final bool isLoading;

  const HomePageState({
    this.isLoading = false,
    this.location,
    this.service,
  });

  HomePageState copyWith({
    bool? isLoading,
    String? location,
    String? service,
  }) {
    return HomePageState(
      isLoading: isLoading ?? this.isLoading,
      location: location ?? this.location,
      service: service ?? this.service,
    );
  }

  @override
  List<Object?> get props => [isLoading, location, service];
}
