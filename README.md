# Flutter Questionnaire App

A Flutter application that allows users to register, login, and fill questionnaires. The app is built using **GetX for state management**, follows a **clean architecture**, and supports **offline storage** for saving questionnaire submissions.

This project was developed as part of a Flutter development assignment and demonstrates authentication flow, questionnaire management, and offline data persistence.

---

## Features

### Authentication

* User Registration (Phone, Password, Confirm Password)
* Login functionality with input validation
* Persistent login session
* Logout functionality
* User data stored locally

### Home Screen

* Displays a list of available questionnaires
* Each questionnaire shows:

  * Title
  * Short description
* Tap on a questionnaire to start answering

### Questionnaire

* Displays **5 MCQ questions**
* Each question contains **3–4 selectable options**
* Only **one option can be selected per question**
* All questions must be answered before submission

### Submission

* Submit questionnaire responses
* Stores the following data:

  * Selected answers
  * Submission date & time
  * Latitude & Longitude
* Shows success message after submission

### Offline Storage

* All questionnaire submissions are saved locally
* Data persists even after:

  * App restart
  * Logout/Login
* Used to display submission history and counts

### Profile Screen

* Displays logged-in user phone
* Shows total questionnaires filled
* Displays submission history with date & time

---

## Architecture

The app follows a **clean and scalable architecture**:

```
lib
 ├── app
 │   ├── routes
 │   ├── modules
 │   │   ├── auth
 │   │   ├── home
 │   │   ├── questionnaire
 │   │   └── profile
 │
 ├── core
 │   ├── models
 │   ├── services
 │
 └── utils
```

---

## Technologies Used

* **Flutter (Latest Stable Version)**
* **GetX** – State Management & Navigation
* **GetStorage** – Local Storage
* **Geolocator** – Latitude & Longitude
* **Material UI**

---

## Project Highlights

* Clean GetX architecture
* Offline-first data storage
* Persistent login system
* Simple and responsive UI
* Modular code structure
* Easily scalable project

---

## Screens

* Login Screen
* Register Screen
* Home Screen
* Questionnaire Screen
* Profile Screen

---

## Installation

1. Clone the repository

```
git clone https://github.com/yourusername/flutter-questionnaire-app.git
```

2. Navigate to project folder

```
cd flutter-questionnaire-app
```

3. Install dependencies

```
flutter pub get
```

4. Run the app

```
flutter run
```

---

## Author

**Pratik Sanodiya**
Flutter Developer
