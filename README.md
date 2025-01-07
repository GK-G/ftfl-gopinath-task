Flutter Version: 3.13.9
Dart Version: 3.1.5

FTFL Technology - Cards and Wallet Screen
This Flutter project is an interview task for FTFL Technology. The goal is to design a Cards and Wallet Screen using reusable common widgets for an efficient and consistent UI.

Overview
This project demonstrates:

Reusability: Common widgets like FeatureCard and LimitCard are designed for consistent use across the application.
Modular Design: The Cards and Wallet screen is built with scalable and clean code practices.
Responsive UI: The widgets are flexible and adapt well to different screen sizes.
Widgets
FeatureCard
A widget designed to display features using icons and titles.

Properties:
title (String): Title text for the feature.
icon (IconData): Icon representing the feature.
Example:
dart
Copy code
FeatureCard(  
title: 'Transactions',  
icon: Icons.swap_horiz,  
)  
LimitCard
Displays key-value pair information, such as spending limits or balances.

Properties:
title (String): The key or label text.
value (String): The value to display.
Example:
dart
Copy code
LimitCard(  
title: 'Wallet Balance',  
value: '2500 USD',  
)  
Screens
Cards Screen
Displays a list of cards (credit/debit) with relevant actions.
Includes the FeatureCard for quick actions (e.g., Add Card, View Transactions).
Wallet Screen
Displays wallet details like balance, spending limit, and recent transactions.
Built using LimitCard and other reusable components.
Project Structure
plaintext
Copy code
lib/  
├── Screens/  
│   ├── CardsandWalletScreen.dart  #landing screen
├── widgets/  
│   ├── cards_screen.dart    # Reusable widgets  
│   ├── wallet_screen.dart   # Reusable widgets 
├── main.dart                 # Application entry point  
How to Run
Clone this repository:

bash
Copy code
git clone https://github.com/GK-G/ftfl-gopinath-task.git  
Navigate to the project directory:

bash
Copy code
cd ftfl-wallet-task  
Install dependencies:

bash
Copy code
flutter pub get  
Run the application:

bash
Copy code
flutter run  
Future Enhancements
Add animations for better user experience.
Implement dynamic data loading (e.g., via Firebase or REST API).
Make the UI fully responsive for different devices.
Contact
For any questions or clarifications, feel free to reach out at:
📧 gopinath_nadar@outlook.com

 🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀