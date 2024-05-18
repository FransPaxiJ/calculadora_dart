## Flutter Version

- Flutter 3.19.4
- Any version Java 8 or higher

## Required Software

- Android Studio : https://developer.android.com/studio
- Flutter : https://docs.flutter.dev/get-started/install/windows/mobile?tab=download
- JDK : https://www.oracle.com/pe/java/technologies/downloads/

## Configuring Software

- In Android Studio, we have installed the Flutter and Dart plugins.
- In Android Studio, go to `File -> Settings -> Languages & Frameworks -> Android SDK/SDK Tools` and install Android SDK Command-line.
- In Android Studio, create a emulator by going to `Tools -> AVD Manager` and create a new virtual device.

## Opctional Section

- Activate the developer mode in the mobile device.
- Enable USB debugging in the mobile device.
- Connect the mobile device to the computer using a USB cable.

## Getting Started

0. verify the installation of flutter and dart by running the following commands in the terminal

```bash
flutter doctor
```

1. Clone the repository

2. Connected the device or run the emulator (follow the steps Optional section)

3. Create android, ios, linux, macos, web, windows and test directories in the root of the project

```bash
flutter create .
```

4. Install the required packages

```bash
flutter pub get
```
5. Run the app

```bash
flutter run
```

## Other Useful Commands

Agree to the licenses

```bash
flutter doctor --android-licenses
```

For creating a new flutter project

```bash
flutter create project_name
```
Ctrl+Shift+P in vscode and select `Flutter: New Project` to create a new flutter project

See device list

```bash
flutter devices
```