class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotels/toranj-hotel.jpg',
    name: 'Toranj Marine Hotel',
    address: 'Kish Island، Persian Gulf',
    price: 450,
  ),
  Hotel(
    imageUrl: 'assets/images/hotels/jamejam.jpg',
    name: 'Jaam-e-jam Hotel',
    address: 'Fars Province, Shiraz, Roodaki St, Iran',
    price: 200,
  ),
  Hotel(
    imageUrl: 'assets/images/hotels/astara.jpg',
    name: 'Espinas Astara Hotel',
    address: 'Rasht-Astara Road, Astara 43914 Iran',
    price: 350,
  ),
  Hotel(
    imageUrl: 'assets/images/hotels/ferdowsi-grand-hotel.jpg',
    name: 'Ferdowsi Hotel',
    address: 'Tehran, No.20, Kooshk e Mesri street',
    price: 250,
  ),
];
