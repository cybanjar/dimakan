part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'sarah',
    email: 'sarah@gmail.com',
    address: 'kalibata pancoran',
    houseNumber: '15',
    phoneNumber: '08783020049',
    city: 'Jakarta Selatan',
    picturePath: 'https://i.imgur.com/ZRnpCD3.jpg');
