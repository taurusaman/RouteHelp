import 'package:flutter/material.dart';

List<List<String>> routes = [
  [
    "Delhi",
    "Agra",
    "Jaipur",
    "Jodhpur",
    "Udaipur",
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Mumbai",
    "Pune"
  ],
  [
    "Mumbai",
    "Pune",
    "Goa",
    "Mangalore",
    "Kochi",
    "Thiruvananthapuram",
    "Madurai",
    "Coimbatore",
    "Tiruchirappalli",
    "Chennai"
  ],
  [
    "Chennai",
    "Bangalore",
    "Mysore",
    "Coorg",
    "Mangalore",
    "Udupi",
    "Goa",
    "Pune",
    "Mumbai",
    "Surat"
  ],
  [
    "Kolkata",
    "Bhubaneswar",
    "Puri",
    "Visakhapatnam",
    "Vijayawada",
    "Hyderabad",
    "Nagpur",
    "Bhopal",
    "Indore",
    "Ahmedabad"
  ],
  [
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Mumbai",
    "Pune",
    "Goa",
    "Mangalore",
    "Udupi",
    "Mysore",
    "Bangalore"
  ],
  [
    "Lucknow",
    "Kanpur",
    "Varanasi",
    "Allahabad",
    "Patna",
    "Gaya",
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Kolkata"
  ],
  [
    "Jaipur",
    "Udaipur",
    "Jodhpur",
    "Bikaner",
    "Jaisalmer",
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Mumbai",
    "Pune"
  ],
  [
    "Bhopal",
    "Indore",
    "Gwalior",
    "Agra",
    "Delhi",
    "Chandigarh",
    "Shimla",
    "Manali",
    "Dharamshala",
    "Amritsar"
  ],
  [
    "Patna",
    "Gaya",
    "Bhagalpur",
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Kolkata",
    "Bhubaneswar",
    "Puri",
    "Visakhapatnam"
  ],
  [
    "Guwahati",
    "Shillong",
    "Imphal",
    "Aizawl",
    "Agartala",
    "Kohima",
    "Itanagar",
    "Gangtok",
    "Darjeeling",
    "Siliguri"
  ],
  [
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Asansol",
    "Durgapur",
    "Kolkata",
    "Bhubaneswar",
    "Puri",
    "Visakhapatnam",
    "Vijayawada"
  ],
  [
    "Raipur",
    "Bilaspur",
    "Durg",
    "Nagpur",
    "Bhopal",
    "Indore",
    "Ujjain",
    "Ahmedabad",
    "Surat",
    "Vadodara"
  ],
  [
    "Dehradun",
    "Haridwar",
    "Rishikesh",
    "Mussoorie",
    "Nainital",
    "Almora",
    "Ranikhet",
    "Kausani",
    "Bageshwar",
    "Pithoragarh"
  ],
  [
    "Shimla",
    "Manali",
    "Dharamshala",
    "Dalhousie",
    "Chamba",
    "Kullu",
    "Mandi",
    "Bilaspur",
    "Una",
    "Hamirpur"
  ],
  [
    "Srinagar",
    "Leh",
    "Kargil",
    "Dras",
    "Sonamarg",
    "Gulmarg",
    "Pahalgam",
    "Anantnag",
    "Pulwama",
    "Baramulla"
  ],
  [
    "Amritsar",
    "Chandigarh",
    "Ludhiana",
    "Jalandhar",
    "Patiala",
    "Bathinda",
    "Ferozepur",
    "Pathankot",
    "Hoshiarpur",
    "Mohali"
  ],
  [
    "Kochi",
    "Thiruvananthapuram",
    "Kozhikode",
    "Kannur",
    "Thrissur",
    "Palakkad",
    "Malappuram",
    "Kollam",
    "Alappuzha",
    "Kottayam"
  ],
  [
    "Madurai",
    "Coimbatore",
    "Tiruchirappalli",
    "Salem",
    "Erode",
    "Vellore",
    "Tirunelveli",
    "Thoothukudi",
    "Nagercoil",
    "Chennai"
  ],
  [
    "Visakhapatnam",
    "Vijayawada",
    "Tirupati",
    "Nellore",
    "Kurnool",
    "Guntur",
    "Rajahmundry",
    "Kakinada",
    "Anantapur",
    "Kadapa"
  ],
  [
    "Nagpur",
    "Aurangabad",
    "Nashik",
    "Shirdi",
    "Kolhapur",
    "Solapur",
    "Latur",
    "Amravati",
    "Akola",
    "Jalgaon"
  ],
  [
    "Delhi",
    "Chandigarh",
    "Shimla",
    "Manali",
    "Dharamshala",
    "Amritsar",
    "Jalandhar",
    "Ludhiana",
    "Patiala",
    "Bathinda"
  ],
  [
    "Mumbai",
    "Surat",
    "Vadodara",
    "Ahmedabad",
    "Rajkot",
    "Bhavnagar",
    "Jamnagar",
    "Porbandar",
    "Dwarka",
    "Somnath"
  ],
  [
    "Chennai",
    "Pondicherry",
    "Cuddalore",
    "Nagapattinam",
    "Karaikal",
    "Thanjavur",
    "Kumbakonam",
    "Chidambaram",
    "Mayiladuthurai",
    "Velankanni"
  ],
  [
    "Kolkata",
    "Durgapur",
    "Asansol",
    "Dhanbad",
    "Bokaro",
    "Ranchi",
    "Jamshedpur",
    "Durg",
    "Raipur",
    "Bilaspur"
  ],
  [
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Mumbai",
    "Pune",
    "Goa",
    "Mangalore",
    "Udupi",
    "Mysore",
    "Bangalore"
  ],
  [
    "Lucknow",
    "Kanpur",
    "Varanasi",
    "Allahabad",
    "Patna",
    "Gaya",
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Kolkata"
  ],
  [
    "Jaipur",
    "Udaipur",
    "Jodhpur",
    "Bikaner",
    "Jaisalmer",
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Mumbai",
    "Pune"
  ],
  [
    "Bhopal",
    "Indore",
    "Gwalior",
    "Agra",
    "Delhi",
    "Chandigarh",
    "Shimla",
    "Manali",
    "Dharamshala",
    "Amritsar"
  ],
  [
    "Patna",
    "Gaya",
    "Bhagalpur",
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Kolkata",
    "Bhubaneswar",
    "Puri",
    "Visakhapatnam"
  ],
  [
    "Guwahati",
    "Shillong",
    "Imphal",
    "Aizawl",
    "Agartala",
    "Kohima",
    "Itanagar",
    "Gangtok",
    "Darjeeling",
    "Siliguri"
  ],
  [
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Asansol",
    "Durgapur",
    "Kolkata",
    "Bhubaneswar",
    "Puri",
    "Visakhapatnam",
    "Vijayawada"
  ],
  [
    "Raipur",
    "Bilaspur",
    "Durg",
    "Nagpur",
    "Bhopal",
    "Indore",
    "Ujjain",
    "Ahmedabad",
    "Surat",
    "Vadodara"
  ],
  [
    "Dehradun",
    "Haridwar",
    "Rishikesh",
    "Mussoorie",
    "Nainital",
    "Almora",
    "Ranikhet",
    "Kausani",
    "Bageshwar",
    "Pithoragarh"
  ],
  [
    "Shimla",
    "Manali",
    "Dharamshala",
    "Dalhousie",
    "Chamba",
    "Kullu",
    "Mandi",
    "Bilaspur",
    "Una",
    "Hamirpur"
  ],
  [
    "Srinagar",
    "Leh",
    "Kargil",
    "Dras",
    "Sonamarg",
    "Gulmarg",
    "Pahalgam",
    "Anantnag",
    "Pulwama",
    "Baramulla"
  ],
  [
    "Amritsar",
    "Chandigarh",
    "Ludhiana",
    "Jalandhar",
    "Patiala",
    "Bathinda",
    "Ferozepur",
    "Pathankot",
    "Hoshiarpur",
    "Mohali"
  ],
  [
    "Kochi",
    "Thiruvananthapuram",
    "Kozhikode",
    "Kannur",
    "Thrissur",
    "Palakkad",
    "Malappuram",
    "Kollam",
    "Alappuzha",
    "Kottayam"
  ],
  [
    "Madurai",
    "Coimbatore",
    "Tiruchirappalli",
    "Salem",
    "Erode",
    "Vellore",
    "Tirunelveli",
    "Thoothukudi",
    "Nagercoil",
    "Chennai"
  ],
  [
    "Visakhapatnam",
    "Vijayawada",
    "Tirupati",
    "Nellore",
    "Kurnool",
    "Guntur",
    "Rajahmundry",
    "Kakinada",
    "Anantapur",
    "Kadapa"
  ],
  [
    "Nagpur",
    "Aurangabad",
    "Nashik",
    "Shirdi",
    "Kolhapur",
    "Solapur",
    "Latur",
    "Amravati",
    "Akola",
    "Jalgaon"
  ]
];
