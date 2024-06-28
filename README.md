# Freight-Train-Management-System
  This project focuses on the development of a Freight Train Management System aimed at enhancing the efficiency and logistics of cargo transportation via trains. 
  
**Key objectives include:**
- Streamlining the process of booking cargo, canceling cargo, and managing booking history.
- Tracking shipments by train schedules for users.
- Providing admins with features like scheduling new trains, adding and tracking shipments in real-time.
 
## Table of Contents
- [Features](#features)
   - [User Features](#user-features)
   - [Admin Features](#admin-features)
- [System Components](#system-components)
- [Installation](#installation)
- [Demo Video](#demo-video)
  
- [Technologies Used](#technologies-used)
- [Credits](#credits)

## Features

### User Features
- **Sign In/Up:** Secure user sign-up with email verification and password recovery options.
- **Search Trains:** Users can search for trains based on origin, destination, and date.
- **Book Cargo:** Users can book cargo, view booking history, and cancel bookings.
- **Track Shipments:** Real-time tracking of shipments.

### Admin Features
- **Manage Trains:** Admins can add new trains, schedule trains, and manage train details.
- **User Management:** Search and manage user details.
- **Station Management:** Manage station details.
- **Real-Time Updates:** Receive real-time updates on train schedules and changes.
- **Refund Processing:** Initiate refund processes for canceled bookings.

## System Components

- **Scheduling Algorithm:** Incorporates factors such as destination and train capacity to determine the most efficient schedule.
- **Administrator Control:** Allows manual adjustments to schedules and prioritization of urgent shipments.
- **Integration with Train Database:** New train details are integrated into the system's train database for scheduling and tracking.
  
## Installation

### Prerequisites

- XAMPP (for Apache server and MySQL database)
- Web Browser (Chrome, Firefox, etc.)

### Installation Steps

1. **Download and Install XAMPP:**
   - Download XAMPP from [Apache Friends](https://www.apachefriends.org/index.html).
   - Install XAMPP on your machine.
  - Open the XAMPP control panel and start the Apache and MySQL services.
2. **Clone the Repository:**
   - Clone the project repository to your local machine using the command:
     ```sh
     gh repo clone onkarhshinde/Freight-Train-Management-System
     ```

3. **Set Up the Database:**
   - Start the Apache and MySQL services in XAMPP.
   - Open phpMyAdmin by navigating to `http://localhost/phpmyadmin` in your browser.
   - Create a new database named `railway`.
   - Import the provided SQL file (`railway.sql`) to set up the necessary tables and data.

4. **Configure the Project:**
   - Place the cloned project folder inside the `htdocs` directory of your XAMPP installation.
   - Update the database configuration in the project files if necessary (e.g., in `config.php`).

5. **Run the Application:**
   - Open your web browser and navigate to `http://localhost/freight-train-management`.
   - You should see the login page of the Freight Train Management System.

## Demo Video

<iframe src="https://iitgoffice-my.sharepoint.com/:v:/g/personal/h_shinde_iitg_ac_in/Ea4UxAUC_b9Ekpw4lDlBXu4BW2TrcEBE4TTYZ3rkwKi8Mg?e=AHnZt0&download=1">
    Your browser does not support embedded videos. Click <a href="https://iitgoffice-my.sharepoint.com/:v:/g/personal/h_shinde_iitg_ac_in/Ea4UxAUC_b9Ekpw4lDlBXu4BW2TrcEBE4TTYZ3rkwKi8Mg?e=AHnZt0&download=1">here</a> to view.
</iframe>

