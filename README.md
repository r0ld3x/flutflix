# Flutter Movie App - TMDB API

Welcome to the Flutter Movie App repository! This app is built using Flutter and utilizes the TMDB API to display information about movies and TV shows. In order to use this app, you'll need to obtain an API key from TMDB and configure it in the `lib/constants.dart` file.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites

Before you start, make sure you have the following tools installed on your system:

- Flutter
- Dart
- Code Editor

### Installation

1. Clone this repository to your local machine:

   ```dart
   git clone https://github.com/r0ld3x/flutflix.git
   ```

2. Change the directory to the project folder:
   `cd flutflix`
3. Install the dependencies using

   ```dart
   flutter pub get
   ```

4. Get dependencies

   ```dart
   flutter pub get
   ```

### Configuration

To make this app work with TMDB API, you need to configure your API key and other details in the `lib/constants.dart` file. Follow these steps:

1. Open the `lib/constants.dart` file in your code editor.

2. Find the following lines:

```dart
class Constants {
  static const apiKey = "YOUR_API_KEY_HERE";
  static const imagePath = "https://image.tmdb.org/t/p/w500";
}

```

3. Replace `'YOUR_API_KEY_HERE'` with your TMDB API key.

4. You can also customize other details in this file as needed.

   Now, you're ready to run the app with your TMDB API configuration.

## Deploying

To deploy this Flutter app, follow the standard deployment process for your target platform (e.g., Android Supported).

## Building

To build the Flutter app for your target platform, use the appropriate build commands. For example, to build for Android:

```bash
flutter build apk
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository to your GitHub account.

2. Create a new branch for your feature or bug fix:

   ```
   git checkout -b feature/your-feature-name
   ```

3. Make your changes and commit them with descriptive commit messages.
4. Push your branch to your GitHub repository:

   ```bash
   git push origin feature/your-feature-name
   ```

5. Create a pull request from your branch to the main repository.

Please ensure your code adheres to the project's coding standards, and include relevant tests if applicable.

## Owner

- GitHub Username: [r0ld3x](https://github.com/r0ld3x)
- Repository Name: [flutflix](https://github.com/r0ld3x/flutflix)
