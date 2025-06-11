# Flutter Flavors Demo

A simple Flutter demo project to implement **App Flavors** using `enum` and singleton pattern.

---

## ✅ Features

- Separate configuration for Beta and Production (Running) builds.
- Easy-to-switch environments with different base URLs.
- Organized code with a clean entry point for each flavor.

---

## 📂 Project Structure

lib/
├── flavours/
│ └── flavor_config.dart # Flavor enum and configuration singleton
├── flutter_app.dart # Main app widget
├── main_common.dart # Shared app initializer for all flavors
├── main_beta.dart # Beta build entry point
└── main_running.dart # Running build entry point


---

## 🚀 Getting Started

## 🔧 Step-by-Step: Add Build Flavors in Android & iOS
reference link: https://youtu.be/EyQfuKvVUGY?si=xGVGlgZMOE01U9WF

### ✅ 1. Android: Add Flavors in build.gradle

### 🔹 Step 1: Open android/app/build.gradle

```
android {
    ...
    defaultConfig {
        applicationId "com.example.flutterflavors"
        ...
    }

    flavorDimensions "app"
    productFlavors {
        beta {
            dimension "app"
            applicationIdSuffix ".beta"
            versionNameSuffix "-beta"
            resValue "string", "app_name", "Flutter Flavors Beta"
        }
        running {
            dimension "app"
            applicationIdSuffix ".prod"
            resValue "string", "app_name", "Flutter Flavors Running"
        }
    }
}

```

### 🔹 Step 2: Use flavor-specific app_name
```
    <application
        android:label="@string/app_name"
        ...
        >
        
        ....
    </application>
```

## ✅ 2. iOS: Add Schemes and Configurations in Xcode

### 🔹 Step 1: Open iOS project in Xcode
### 🔹 Step 2: Duplicate targets and schemes
Click on Runner → TARGETS
Right-click → Duplicate → name as Runner (Beta) and Runner (Running)
Do the same in Schemes → Manage Schemes → Duplicate → Rename accordingly

### 🔹 Step 3: Create configuration files
### 🔹 Step 4: Link xcconfig files to schemes
### 🔹 Step 5: Use Info.plist to set app name
---

### 🔹 Step 1: Create a New Flutter Project

```bash
flutter create flutter_flavors
cd flutter_flavors
```

### 🔹 Step 2: Create Flavor Enum and Config Class
Create a folder lib/flavours/ and add flavor_config.dart

### 🔹 Step 3: Create main_common.dart
### 🔹 Step 4: Create Flavor-specific Entry Points
### 🔹 Step 5: Create flutter_app.dart
### 🔹 Step 6: Add flutter_launcher_icons to Change App Icons per Flavor
1. Add the package to pubspec.yaml

```yaml
dev_dependencies:
  flutter_launcher_icons: ^0.13.1

# define this at here(project pubspec.yaml) or create new flutter_launcher_icons-<flavor_name>.yaml and define in it.
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/icons/app_icon.png"
```

2. Create icons for each flavor
```base
assets/icons/
├── app_icon_beta.png
├── app_icon_running.png
```
3. Create separate config files:
flutter_launcher_icons-beta.yaml
```yaml
flutter_icons:
    android: true
    ios: true
    image_path: "assets/icons/app_icon_beta.png"
```

flutter_launcher_icons-running.yaml
```yaml
flutter_icons:
    android: true
    ios: true
    image_path: "assets/icons/app_icon_running.png"
```

4. Run the launcher icons generation for each flavor:
```base
flutter pub run flutter_launcher_icons
```