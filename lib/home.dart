import 'package:flutter/material.dart';

import 'screens/components/ticket_view.dart';
// Import your TicketView widget

// Assuming this is where you're using the TicketView widget
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Assuming ticketList is initialized and contains valid data
    final List<Map<String, dynamic>> ticketList = [
      {
        'from': {'code': "Sfax", 'name': "Sfax"},
        'to': {'code': "TN", 'name': "Tunisia"},
        'flying_time': '2H 20M',
        'date': "20 MAY",
        'departure_time': "08:20 AM",
        "number": 20
      },
      {
        'from': {'code': "SC", 'name': "Sfax center"},
        'to': {'code': "SZ", 'name': "Sakkiet Ezziet"},
        'flying_time': '20min',
        'date': "20 MAY",
        'departure_time': "09:20 AM",
        "number": 45
      },
    ]; // Your ticket list data

    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Booking'),
      ),
      body: ListView.builder(
        itemCount: ticketList.length,
        itemBuilder: (context, index) {
          final tickets =
              ticketList[index]; // Get the tickets for the current index
          return TicketView(tickets: tickets); // Pass tickets to TicketView
        },
      ),
    );
  }
}
