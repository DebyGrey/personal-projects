// import 'package:flutter_app/classes/vehicle.dart';
// import 'package:flutter_app/classes/bicycle.dart';
// import 'package:flutter_app/classes/car.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // Bicycle bmx = new Bicycle(numberOfTyres: 2, color: "Red", brand: "Mercedes");
  // Bicycle();
  // Car dano = new Car();
  // Vehicle batman = new Vehicle();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Widgets',
      debugShowCheckedModeBanner: false,
      home: GridViewExample(),
    );
  }
}

//GridView example class
class GridViewExample extends StatelessWidget {
  final images = [
    "https://cdn.pixabay.com/photo/2019/04/04/15/17/smartphone-4103051__340.jpg",
    "https://cdn.pixabay.com/photo/2019/04/04/15/17/smartphone-4103051__340.jpg",
    "https://cdn.pixabay.com/photo/2019/04/04/15/17/smartphone-4103051__340.jpg",
    "https://cdn.pixabay.com/photo/2019/04/04/15/17/smartphone-4103051__340.jpg",
    // "https://pixabay.com/get/g4e016d4c62ab6304a199c41ba831c43d0218fb280e583df4d9a873c8b224918153be8208304a6b851b407384910cfecb7cba01a8f37466f542cfe93b7271fe7e_1280.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
        centerTitle: true,
      ),
      body: buildGridViewBuilderExample(),
    );
  }

//GridView.builder example
  Widget buildGridViewBuilderExample() {
    return GridView.builder(
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Image.network(images[index]);
      },
    );
  }

//GridView.count example
  Widget buildGridViewCountExample() {
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 3,
      children: [
        Container(
          color: Colors.yellow,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.blue,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.greenAccent,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.red,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.teal,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.indigo,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.blue,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.black12,
          height: 90,
          width: 90,
        ),
      ],
    );
  }

  //GridViewExample Widget
  Widget buildMultipleRowsInsideAColumn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.yellow,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.greenAccent,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.red,
              height: 90,
              width: 90,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.teal,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.indigo,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.black12,
              height: 90,
              width: 90,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.yellow,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.greenAccent,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.red,
              height: 90,
              width: 90,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.teal,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.indigo,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.black12,
              height: 90,
              width: 90,
            )
          ],
        ),
      ],
    );
  }
}

//ListView example class
class ListViewExample extends StatelessWidget {
  final countryList = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas (the)",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia (Plurinational State of)",
    "Bonaire, Sint Eustatius and Saba",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "British Indian Ocean Territory (the)",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cayman Islands (the)",
    "Central African Republic (the)",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos (Keeling) Islands (the)",
    "Colombia",
    "Comoros (the)",
    "Congo (the Democratic Republic of the)",
    "Congo (the)",
    "Cook Islands (the)",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Curaçao",
    "Cyprus",
    "Czechia",
    "Côte d'Ivoire",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic (the)",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Falkland Islands (the) [Malvinas]",
    "Faroe Islands (the)",
    "Fiji",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "French Southern Territories (the)",
    "Gabon",
    "Gambia (the)",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Heard Island and McDonald Islands",
    "Holy See (the)",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran (Islamic Republic of)",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea (the Democratic People's Republic of)",
    "Korea (the Republic of)",
    "Kuwait",
    "Kyrgyzstan",
    "Lao People's Democratic Republic (the)",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands (the)",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia (Federated States of)",
    "Moldova (the Republic of)",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands (the)",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger (the)",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "Northern Mariana Islands (the)",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine, State of",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines (the)",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Republic of North Macedonia",
    "Romania",
    "Russian Federation (the)",
    "Rwanda",
    "Réunion",
    "Saint Barthélemy",
    "Saint Helena, Ascension and Tristan da Cunha",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Martin (French part)",
    "Saint Pierre and Miquelon",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Sint Maarten (Dutch part)",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Georgia and the South Sandwich Islands",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan (the)",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan",
    "Tajikistan",
    "Tanzania, United Republic of",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands (the)",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates (the)",
    "United Kingdom of Great Britain and Northern Ireland (the)",
    "United States Minor Outlying Islands (the)",
    "United States of America (the)",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela (Bolivarian Republic of)",
    "Viet Nam",
    "Virgin Islands (British)",
    "Virgin Islands (U.S.)",
    "Wallis and Futuna",
    "Western Sahara",
    "Yemen",
    "Zambia",
    "Zimbabwe",
    "Åland Islands"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Example'),
        centerTitle: true,
      ),
      body: buildListViewCustomExample(),
    );
  }

//ListView.custom()example
  Widget buildListViewCustomExample() {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, index) {
          return ListTile(title: Text(countryList[index]));
        },
        childCount: countryList.length,
      ),
    );
  }

//ListView.separated()example
  Widget buildListViewSeparatedExample() {
    return ListView.separated(
      itemCount: countryList.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(countryList[index]));
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

//ListView.builder()example
  Widget buildListViewBuilderExample() {
    return ListView.builder(
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(countryList[index]));
        });
  }

  Widget buildListViewExample() {
    return ListView(
      children: <Widget>[
        Text(
          'AppBar',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'Scaffold',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'Text',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'Container',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'SafeArea',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'SafeArea',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'SafeArea',
          style: TextStyle(fontSize: 80),
        ),
      ],
    );
  }
}
