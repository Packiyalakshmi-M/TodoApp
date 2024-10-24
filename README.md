# Flutter - Todo App

TThis project is a Todo application built using Flutter, which integrates Firebase Authentication for user management and a RESTful API for handling data manipulation. The app allows users to securely sign up, log in, and manage their todo items. The state of the application is managed using MobX, ensuring a reactive and scalable architecture.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Author](#author)

## Features

- **Firebase Authentication:** User sign-up, sign-in, and logout functionality using secure, real-time Firebase services.
- **Todo Management:** Users can add, update, and delete todos, with the data being stored and manipulated via a RESTful API.
- **State Management with MobX:** Reactive state management using MobX to ensure a seamless and responsive UI.
- **RESTful API Integration:** Integrated with a RESTful API to manage persistent storage of todo items.
- **User-friendly UI:** Clean, modern interface with smooth transitions and easy navigation for managing todos.
- **SVG Support:** Enhanced UI with the use of SVG images, managed via the flutter_svg package.

## Technologies Used

- **Programming Language:** Dart
- **Framework:** Flutter
- **State Management Library:** mobx, flutter_mobx (dependencies)
- **Code Generation Tools:** mobx_codegen, build_runner (dev dependencies)
- **Others:**
  - Flutter SDK
  - Android Studio / Visual Studio Code for development
  - Git for version control

## Installation

Follow these steps to get the project up and running locally:

```bash
# Clone the repository
git clone https://github.com/Packiyalakshmi-M/Flutter_Secure_Storage.git

# Navigate into the project directory
cd secure_storage_sample_app

# Install dependencies
flutter pub get

# Generate the MobX code (for observables, actions, etc.)
flutter pub run build_runner build
```

## Usage

The following snippet shows the Model class which has observables and actions:

```

import 'package:mobx/mobx.dart';
import 'package:todo_app/BOs/OnboardingScreenBO/OnboardingScreenBO.dart';

part 'OnboardingScreenModel.g.dart';

class OnboardingScreenModel = _OnboardingScreenModelBase
    with _$OnboardingScreenModel;

abstract class _OnboardingScreenModelBase with Store {
  @observable
  List<OnboardingScreenBO>? onboardingList;

  @observable
  int? currentIndex;

  @action
  void setOnboardingListValue(
      {required List<OnboardingScreenBO> onboardingList}) {
    this.onboardingList = onboardingList;
  }

  @action
  void setCurrentIndexValue({required int index}) {
    this.currentIndex = index;
  }
}

```

## License

This project is open source and available under the MIT License.

## Author

- Packiyalakshmi Murugan
- [LinkedIn Link](https://www.linkedin.com/in/packiyalakshmi-m-7a9844210/)
- [Github link](https://github.com/Packiyalakshmi-M/)
