abstract class DataState {}

class DataInitialState extends DataState {
  //DataInitialState() : super(name: "", email: "", city: "", id: '');
  late String name;
  late String email;
  late String city;
  late String country;
  DataInitialState({
    required this.name,
    required this.email,
    required this.city,
    required this.country,
  });
}
