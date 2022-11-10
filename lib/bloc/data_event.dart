abstract class DataEvent {}

class DataInitialEvent extends DataEvent {
  late String name;
  late String email;
  late String city;
  late String country;
  DataInitialEvent({
    required this.name,
    required this.email,
    required this.city,
    required this.country,
  });
}
