# Store App 🔥🔥

## Overview
The **Store App** is a Flutter-based e-commerce application designed to showcase and sell products. It allows users to browse products, view details, and purchase items. Additionally, the app supports updating product information dynamically. The app uses **API calls** to fetch and update product data, ensuring real-time synchronization with the backend. It is built using modern Flutter practices, including state management, API integration, and custom theming.

## Features
- **Product Listing**: Display a list of products with details such as name, price, and image.
- **Product Details**: View detailed information about a specific product.
- **Update Products**: Admins can update product information (e.g., price, stock) dynamically.
- **API Integration**: Uses a dedicated API class to handle all API calls (fetching, updating, etc.).
- **State Management**: Efficiently manages app state using **Cubit**.
- **Custom Theming**: Utilizes **ThemeData** for a consistent and customizable UI.

## Technologies Used
- **State Management**: Cubit (from the `flutter_bloc` package)
- **API Integration**: Custom API class to handle all backend communication.
- **Theming**: Flutter's **ThemeData** for UI consistency.
- **Dependency Management**: Pub (Flutter's package manager)

## How It Works
1. **Fetch Products**: The app fetches a list of products from the backend using an API call.
2. **Display Products**: Products are displayed in a list or grid format with details like name, price, and image.
3. **Product Details**: Users can tap on a product to view more details.
4. **Update Products**: Admins can update product information (e.g., price, stock) via an API call.
5. **State Management**: The **Cubit** manages the app's state, ensuring smooth updates and error handling.
6. **Theming**: The app uses **ThemeData** to maintain a consistent look and feel.

