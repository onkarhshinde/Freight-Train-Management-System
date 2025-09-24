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
- [Demo Video](#demo-video)
- [System Components](#system-components)
- [Installation](#installation)
- [Conclusion](#conclusion)
- [Contact](#contact)

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

## Demo Video
Click this link for a complete working demo video of the app: 
[demo_video](https://iitgoffice-my.sharepoint.com/:v:/g/personal/h_shinde_iitg_ac_in/Ea4UxAUC_b9Ekpw4lDlBXu4BMXLN0yM2Vx7VoO7ghrxNYw)


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


## Conclusion

The Freight Train Management System aims to streamline cargo transportation logistics with features like optimized scheduling, real-time monitoring, and enhanced customer satisfaction. The project addresses significant challenges and sets a foundation for ongoing refinement and innovation in freight logistics.

## Contact

For more information, contact Onkar Shinde at [onkarhshinde@gmail.com](mailto:onkarhshinde@gmail.com).
