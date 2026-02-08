# flutter_modular_clean_demo

---

## Introduction  

Preparing...

---

## Preview  

<p align="left">
  <img src="" width="460"/>
</p> 

<p align="left">
  <img src="" width="460"/>
</p> 

---

## Features   

---

## Tech Stack  

- Modular Monorepo Architecture  
  Scalable multi-package structure (Physical decoupling, feature-driven isolation, and cross-project code reuse)    
- Clean Architecture  
  Layered software design (Independent domain logic, high testability, and strict separation of concerns)    
- Melos  
  Enterprise-grade monorepo management (Automated bootstrapping, cross-package script execution, and versioning)  
- Freezed  
  Robust Data Modeling & Immutability (Automated copyWith, union types for state handling, and compile-time data safety)    
- BLoC  
  Predictable State Management (Unidirectional data flow, strict separation of UI from business logic, and event-driven architecture)    
- Get_it  
  Centralized Service Locator (Decoupled component lifecycles, global instance management, and highly testable dependency access)  

---

## Credits  

This project is created for independent learning and demonstration purposes.
Special thanks to the original author for their open-source contribution.

---

## Notes  

Image resources are for learning and purposes only. Please do not use them for commercial purposes. 

If there is any infringement, please contact me for removal. Thank you.  

---

## License  

This repository is intended for learning and demonstration.  

If you plan to open-source it, please choose a license and confirm third-party asset usage rights.  

---

## Project Structure  

```
flutter_modular_clean_demo
├─ .metadata
├─ analysis_options.yaml
├─ app
│  └─ root
│     ├─ .metadata
│     ├─ analysis_options.yaml
│     ├─ android
│     │  ├─ .kotlin
│     │  │  └─ sessions
│     │  ├─ app
│     │  │  ├─ build.gradle.kts
│     │  │  └─ src
│     │  │     ├─ debug
│     │  │     │  └─ AndroidManifest.xml
│     │  │     ├─ main
│     │  │     │  ├─ AndroidManifest.xml
│     │  │     │  ├─ java
│     │  │     │  │  └─ io
│     │  │     │  │     └─ flutter
│     │  │     │  │        └─ plugins
│     │  │     │  ├─ kotlin
│     │  │     │  │  └─ com
│     │  │     │  │     └─ example
│     │  │     │  │        └─ root
│     │  │     │  │           └─ MainActivity.kt
│     │  │     │  └─ res
│     │  │     │     ├─ drawable
│     │  │     │     │  └─ launch_background.xml
│     │  │     │     ├─ drawable-v21
│     │  │     │     │  └─ launch_background.xml
│     │  │     │     ├─ mipmap-hdpi
│     │  │     │     │  └─ ic_launcher.png
│     │  │     │     ├─ mipmap-mdpi
│     │  │     │     │  └─ ic_launcher.png
│     │  │     │     ├─ mipmap-xhdpi
│     │  │     │     │  └─ ic_launcher.png
│     │  │     │     ├─ mipmap-xxhdpi
│     │  │     │     │  └─ ic_launcher.png
│     │  │     │     ├─ mipmap-xxxhdpi
│     │  │     │     │  └─ ic_launcher.png
│     │  │     │     ├─ values
│     │  │     │     │  └─ styles.xml
│     │  │     │     └─ values-night
│     │  │     │        └─ styles.xml
│     │  │     └─ profile
│     │  │        └─ AndroidManifest.xml
│     │  ├─ build.gradle.kts
│     │  ├─ gradle
│     │  │  └─ wrapper
│     │  │     ├─ gradle-wrapper.jar
│     │  │     └─ gradle-wrapper.properties
│     │  ├─ gradle.properties
│     │  ├─ gradlew
│     │  ├─ gradlew.bat
│     │  └─ settings.gradle.kts
│     ├─ ios
│     │  ├─ Flutter
│     │  │  ├─ AppFrameworkInfo.plist
│     │  │  ├─ Debug.xcconfig
│     │  │  ├─ flutter_export_environment.sh
│     │  │  ├─ Generated.xcconfig
│     │  │  └─ Release.xcconfig
│     │  ├─ Runner
│     │  │  ├─ AppDelegate.swift
│     │  │  ├─ Assets.xcassets
│     │  │  │  ├─ AppIcon.appiconset
│     │  │  │  │  ├─ Contents.json
│     │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│     │  │  │  │  ├─ Icon-App-20x20@1x.png
│     │  │  │  │  ├─ Icon-App-20x20@2x.png
│     │  │  │  │  ├─ Icon-App-20x20@3x.png
│     │  │  │  │  ├─ Icon-App-29x29@1x.png
│     │  │  │  │  ├─ Icon-App-29x29@2x.png
│     │  │  │  │  ├─ Icon-App-29x29@3x.png
│     │  │  │  │  ├─ Icon-App-40x40@1x.png
│     │  │  │  │  ├─ Icon-App-40x40@2x.png
│     │  │  │  │  ├─ Icon-App-40x40@3x.png
│     │  │  │  │  ├─ Icon-App-60x60@2x.png
│     │  │  │  │  ├─ Icon-App-60x60@3x.png
│     │  │  │  │  ├─ Icon-App-76x76@1x.png
│     │  │  │  │  ├─ Icon-App-76x76@2x.png
│     │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│     │  │  │  └─ LaunchImage.imageset
│     │  │  │     ├─ Contents.json
│     │  │  │     ├─ LaunchImage.png
│     │  │  │     ├─ LaunchImage@2x.png
│     │  │  │     ├─ LaunchImage@3x.png
│     │  │  │     └─ README.md
│     │  │  ├─ Base.lproj
│     │  │  │  ├─ LaunchScreen.storyboard
│     │  │  │  └─ Main.storyboard
│     │  │  ├─ Info.plist
│     │  │  └─ Runner-Bridging-Header.h
│     │  ├─ Runner.xcodeproj
│     │  │  ├─ project.pbxproj
│     │  │  ├─ project.xcworkspace
│     │  │  │  ├─ contents.xcworkspacedata
│     │  │  │  └─ xcshareddata
│     │  │  │     ├─ IDEWorkspaceChecks.plist
│     │  │  │     └─ WorkspaceSettings.xcsettings
│     │  │  └─ xcshareddata
│     │  │     └─ xcschemes
│     │  │        └─ Runner.xcscheme
│     │  ├─ Runner.xcworkspace
│     │  │  ├─ contents.xcworkspacedata
│     │  │  └─ xcshareddata
│     │  │     ├─ IDEWorkspaceChecks.plist
│     │  │     └─ WorkspaceSettings.xcsettings
│     │  └─ RunnerTests
│     │     └─ RunnerTests.swift
│     ├─ lib
│     │  ├─ core
│     │  │  ├─ di
│     │  │  │  ├─ injection_container.config.dart
│     │  │  │  ├─ injection_container.dart
│     │  │  │  └─ injection_module.dart
│     │  │  ├─ event
│     │  │  │  └─ app_event_listener.dart
│     │  │  └─ route
│     │  │     ├─ app_router.dart
│     │  │     ├─ app_router.gr.dart
│     │  │     └─ app_routes.dart
│     │  └─ main.dart
│     ├─ linux
│     │  ├─ CMakeLists.txt
│     │  ├─ flutter
│     │  │  ├─ CMakeLists.txt
│     │  │  ├─ generated_plugins.cmake
│     │  │  ├─ generated_plugin_registrant.cc
│     │  │  └─ generated_plugin_registrant.h
│     │  └─ runner
│     │     ├─ CMakeLists.txt
│     │     ├─ main.cc
│     │     ├─ my_application.cc
│     │     └─ my_application.h
│     ├─ macos
│     │  ├─ Flutter
│     │  │  ├─ Flutter-Debug.xcconfig
│     │  │  ├─ Flutter-Release.xcconfig
│     │  │  └─ GeneratedPluginRegistrant.swift
│     │  ├─ Runner
│     │  │  ├─ AppDelegate.swift
│     │  │  ├─ Assets.xcassets
│     │  │  │  └─ AppIcon.appiconset
│     │  │  │     ├─ app_icon_1024.png
│     │  │  │     ├─ app_icon_128.png
│     │  │  │     ├─ app_icon_16.png
│     │  │  │     ├─ app_icon_256.png
│     │  │  │     ├─ app_icon_32.png
│     │  │  │     ├─ app_icon_512.png
│     │  │  │     ├─ app_icon_64.png
│     │  │  │     └─ Contents.json
│     │  │  ├─ Base.lproj
│     │  │  │  └─ MainMenu.xib
│     │  │  ├─ Configs
│     │  │  │  ├─ AppInfo.xcconfig
│     │  │  │  ├─ Debug.xcconfig
│     │  │  │  ├─ Release.xcconfig
│     │  │  │  └─ Warnings.xcconfig
│     │  │  ├─ DebugProfile.entitlements
│     │  │  ├─ Info.plist
│     │  │  ├─ MainFlutterWindow.swift
│     │  │  └─ Release.entitlements
│     │  ├─ Runner.xcodeproj
│     │  │  ├─ project.pbxproj
│     │  │  ├─ project.xcworkspace
│     │  │  │  └─ xcshareddata
│     │  │  │     └─ IDEWorkspaceChecks.plist
│     │  │  └─ xcshareddata
│     │  │     └─ xcschemes
│     │  │        └─ Runner.xcscheme
│     │  ├─ Runner.xcworkspace
│     │  │  ├─ contents.xcworkspacedata
│     │  │  └─ xcshareddata
│     │  │     └─ IDEWorkspaceChecks.plist
│     │  └─ RunnerTests
│     │     └─ RunnerTests.swift
│     ├─ pubspec.yaml
│     ├─ README.md
│     ├─ web
│     │  ├─ favicon.png
│     │  ├─ icons
│     │  │  ├─ Icon-192.png
│     │  │  ├─ Icon-512.png
│     │  │  ├─ Icon-maskable-192.png
│     │  │  └─ Icon-maskable-512.png
│     │  ├─ index.html
│     │  └─ manifest.json
│     └─ windows
│        ├─ CMakeLists.txt
│        ├─ flutter
│        │  ├─ CMakeLists.txt
│        │  ├─ generated_plugins.cmake
│        │  ├─ generated_plugin_registrant.cc
│        │  └─ generated_plugin_registrant.h
│        └─ runner
│           ├─ CMakeLists.txt
│           ├─ flutter_window.cpp
│           ├─ flutter_window.h
│           ├─ main.cpp
│           ├─ resource.h
│           ├─ resources
│           │  └─ app_icon.ico
│           ├─ runner.exe.manifest
│           ├─ Runner.rc
│           ├─ utils.cpp
│           ├─ utils.h
│           ├─ win32_window.cpp
│           └─ win32_window.h
├─ dev
├─ docs
│  └─ bloc_pattern_guide.md
├─ packages
│  ├─ features
│  │  ├─ app_shell
│  │  │  ├─ .metadata
│  │  │  ├─ analysis_options.yaml
│  │  │  ├─ CHANGELOG.md
│  │  │  ├─ lib
│  │  │  │  ├─ app_shell.dart
│  │  │  │  └─ src
│  │  │  │     ├─ core
│  │  │  │     │  ├─ di
│  │  │  │     │  │  ├─ injection.dart
│  │  │  │     │  │  └─ injection.module.dart
│  │  │  │     │  └─ router
│  │  │  │     │     ├─ app_shell_router.dart
│  │  │  │     │     ├─ app_shell_router.gr.dart
│  │  │  │     │     ├─ app_shell_routes.dart
│  │  │  │     │     └─ tab_routers.dart
│  │  │  │     └─ presentation
│  │  │  │        ├─ bloc
│  │  │  │        │  ├─ app_bloc.dart
│  │  │  │        │  ├─ app_bloc.freezed.dart
│  │  │  │        │  ├─ app_event.dart
│  │  │  │        │  └─ app_state.dart
│  │  │  │        └─ pages
│  │  │  │           └─ app_page.dart
│  │  │  ├─ LICENSE
│  │  │  ├─ pubspec.yaml
│  │  │  └─ README.md
│  │  ├─ auth
│  │  │  ├─ .metadata
│  │  │  ├─ analysis_options.yaml
│  │  │  ├─ CHANGELOG.md
│  │  │  ├─ lib
│  │  │  │  ├─ auth.dart
│  │  │  │  └─ src
│  │  │  │     ├─ core
│  │  │  │     │  ├─ di
│  │  │  │     │  │  ├─ injection.dart
│  │  │  │     │  │  └─ injection.module.dart
│  │  │  │     │  ├─ errors
│  │  │  │     │  │  └─ failures.dart
│  │  │  │     │  └─ route
│  │  │  │     │     ├─ auth_router.dart
│  │  │  │     │     ├─ auth_router.gr.dart
│  │  │  │     │     └─ auth_routes.dart
│  │  │  │     └─ feature
│  │  │  │        ├─ data
│  │  │  │        │  ├─ datasources
│  │  │  │        │  │  ├─ auth_local_datasource.dart
│  │  │  │        │  │  └─ auth_remote_datasource.dart
│  │  │  │        │  ├─ models
│  │  │  │        │  │  ├─ auth_response_model.dart
│  │  │  │        │  │  ├─ auth_response_model.freezed.dart
│  │  │  │        │  │  ├─ auth_response_model.g.dart
│  │  │  │        │  │  ├─ auth_token_model.dart
│  │  │  │        │  │  ├─ auth_token_model.freezed.dart
│  │  │  │        │  │  ├─ auth_token_model.g.dart
│  │  │  │        │  │  ├─ user_model.dart
│  │  │  │        │  │  ├─ user_model.freezed.dart
│  │  │  │        │  │  └─ user_model.g.dart
│  │  │  │        │  └─ repositories
│  │  │  │        │     └─ auth_repository_impl.dart
│  │  │  │        ├─ domain
│  │  │  │        │  ├─ entities
│  │  │  │        │  │  ├─ auth_token_entity.dart
│  │  │  │        │  │  └─ user_entity.dart
│  │  │  │        │  ├─ repositories
│  │  │  │        │  │  └─ auth_repository.dart
│  │  │  │        │  └─ usecases
│  │  │  │        │     ├─ check_auth_status_usecase.dart
│  │  │  │        │     ├─ get_current_user_usecase.dart
│  │  │  │        │     ├─ login_usecase.dart
│  │  │  │        │     ├─ logout_usecase.dart
│  │  │  │        │     └─ register_usecase.dart
│  │  │  │        └─ presentation
│  │  │  │           ├─ bloc
│  │  │  │           │  ├─ auth_bloc.dart
│  │  │  │           │  ├─ auth_bloc.freezed.dart
│  │  │  │           │  ├─ auth_event.dart
│  │  │  │           │  └─ auth_state.dart
│  │  │  │           └─ pages
│  │  │  │              └─ login_page.dart
│  │  │  ├─ LICENSE
│  │  │  ├─ pubspec.yaml
│  │  │  └─ README.md
│  │  ├─ home
│  │  │  ├─ .metadata
│  │  │  ├─ analysis_options.yaml
│  │  │  ├─ CHANGELOG.md
│  │  │  ├─ lib
│  │  │  │  ├─ home.dart
│  │  │  │  └─ src
│  │  │  │     ├─ core
│  │  │  │     │  ├─ di
│  │  │  │     │  │  ├─ injection.dart
│  │  │  │     │  │  └─ injection.module.dart
│  │  │  │     │  └─ route
│  │  │  │     │     ├─ home_router.dart
│  │  │  │     │     ├─ home_router.gr.dart
│  │  │  │     │     └─ home_routes.dart
│  │  │  │     └─ feature
│  │  │  │        └─ presentation
│  │  │  │           └─ pages
│  │  │  │              └─ home_page.dart
│  │  │  ├─ LICENSE
│  │  │  ├─ pubspec.yaml
│  │  │  └─ README.md
│  │  └─ profile
│  │     ├─ .metadata
│  │     ├─ analysis_options.yaml
│  │     ├─ CHANGELOG.md
│  │     ├─ lib
│  │     │  ├─ profile.dart
│  │     │  └─ src
│  │     │     ├─ core
│  │     │     │  ├─ di
│  │     │     │  │  ├─ injection.dart
│  │     │     │  │  └─ injection.module.dart
│  │     │     │  └─ route
│  │     │     │     ├─ profile_router.dart
│  │     │     │     ├─ profile_router.gr.dart
│  │     │     │     └─ profile_routes.dart
│  │     │     └─ feature
│  │     │        └─ presentation
│  │     │           ├─ bloc
│  │     │           │  ├─ profile_bloc.dart
│  │     │           │  ├─ profile_bloc.freezed.dart
│  │     │           │  ├─ profile_event.dart
│  │     │           │  └─ profile_state.dart
│  │     │           └─ pages
│  │     │              └─ profile.pages.dart
│  │     ├─ LICENSE
│  │     ├─ pubspec.yaml
│  │     └─ README.md
│  ├─ infrastructure
│  │  ├─ event_bus
│  │  │  ├─ lib
│  │  │  │  ├─ event_bus.dart
│  │  │  │  └─ src
│  │  │  │     ├─ base_event.dart
│  │  │  │     ├─ events
│  │  │  │     │  ├─ app_lifecycle_events.dart
│  │  │  │     │  └─ navigation_events.dart
│  │  │  │     └─ event_bus.dart
│  │  │  ├─ pubspec.yaml
│  │  │  └─ README.md
│  │  ├─ network
│  │  │  ├─ .metadata
│  │  │  ├─ analysis_options.yaml
│  │  │  ├─ CHANGELOG.md
│  │  │  ├─ lib
│  │  │  │  ├─ network.dart
│  │  │  │  └─ src
│  │  │  │     ├─ client
│  │  │  │     │  ├─ client.dart
│  │  │  │     │  ├─ http_client.dart
│  │  │  │     │  └─ http_client_config.dart
│  │  │  │     ├─ connectivity
│  │  │  │     │  ├─ connectivity.dart
│  │  │  │     │  └─ network_info.dart
│  │  │  │     ├─ exceptions
│  │  │  │     │  ├─ exceptions.dart
│  │  │  │     │  └─ network_exception.dart
│  │  │  │     ├─ interceptors
│  │  │  │     │  ├─ auth_interceptor.dart
│  │  │  │     │  ├─ connectivity_interceptor.dart
│  │  │  │     │  ├─ error_interceptor.dart
│  │  │  │     │  ├─ interceptors.dart
│  │  │  │     │  └─ retry_interceptor.dart
│  │  │  │     ├─ models
│  │  │  │     │  ├─ api_response.dart
│  │  │  │     │  ├─ models.dart
│  │  │  │     │  └─ paginated_response.dart
│  │  │  │     └─ utils
│  │  │  │        ├─ network_logger.dart
│  │  │  │        └─ utils.dart
│  │  │  ├─ LICENSE
│  │  │  ├─ pubspec.yaml
│  │  │  ├─ README.md
│  │  │  └─ test
│  │  │     └─ src
│  │  │        ├─ client
│  │  │        │  └─ http_client_test.dart
│  │  │        ├─ connectivity
│  │  │        │  └─ network_info_test.dart
│  │  │        ├─ exceptions
│  │  │        │  └─ network_exception_test.dart
│  │  │        ├─ interceptors
│  │  │        │  ├─ connectivity_interceptor_test.dart
│  │  │        │  └─ error_interceptor_test.dart
│  │  │        └─ models
│  │  │           ├─ api_response_test.dart
│  │  │           └─ paginated_response_test.dart
│  │  └─ storage
│  │     ├─ .metadata
│  │     ├─ analysis_options.yaml
│  │     ├─ CHANGELOG.md
│  │     ├─ lib
│  │     │  ├─ objectbox-model.json
│  │     │  ├─ objectbox.g.dart
│  │     │  ├─ src
│  │     │  │  ├─ core
│  │     │  │  │  └─ base_db_model.dart
│  │     │  │  ├─ models
│  │     │  │  │  ├─ auth
│  │     │  │  │  │  └─ auth_token_db_model.dart
│  │     │  │  │  └─ settings
│  │     │  │  │     └─ settings_db_model.dart
│  │     │  │  ├─ objectbox
│  │     │  │  │  └─ open_store_impl.dart
│  │     │  │  ├─ services
│  │     │  │  │  └─ storage_service.dart
│  │     │  │  └─ utils
│  │     │  │     └─ storage_helper.dart
│  │     │  └─ storage.dart
│  │     ├─ LICENSE
│  │     ├─ pubspec.yaml
│  │     └─ README.md
│  └─ shared
│     ├─ assets
│     │  ├─ .metadata
│     │  ├─ analysis_options.yaml
│     │  ├─ assets
│     │  │  └─ images
│     │  │     └─ profile.jpg
│     │  ├─ CHANGELOG.md
│     │  ├─ lib
│     │  │  ├─ assets.dart
│     │  │  └─ gen
│     │  │     └─ assets.gen.dart
│     │  ├─ LICENSE
│     │  ├─ pubspec.yaml
│     │  ├─ README.md
│     │  └─ test
│     │     └─ assets_test.dart
│     ├─ config
│     │  ├─ .env.dev
│     │  ├─ .env.example
│     │  ├─ .env.prod
│     │  ├─ .env.staging
│     │  ├─ .metadata
│     │  ├─ analysis_options.yaml
│     │  ├─ CHANGELOG.md
│     │  ├─ lib
│     │  │  ├─ config.dart
│     │  │  └─ src
│     │  │     ├─ constants
│     │  │     │  ├─ api_endpoints.dart
│     │  │     │  ├─ app_constants.dart
│     │  │     │  └─ constants.dart
│     │  │     ├─ enums
│     │  │     │  └─ flavor.dart
│     │  │     └─ env
│     │  │        ├─ app_env.dart
│     │  │        ├─ app_env.g.dart
│     │  │        └─ env.dart
│     │  ├─ LICENSE
│     │  ├─ pubspec.yaml
│     │  ├─ README.md
│     │  ├─ test
│     │  │  └─ src
│     │  │     ├─ constants
│     │  │     │  ├─ api_endpoints_test.dart
│     │  │     │  └─ app_constants_test.dart
│     │  │     └─ env
│     │  │        └─ app_env_test.dart
│     │  └─ TESTING.md
│     ├─ core
│     │  ├─ .metadata
│     │  ├─ analysis_options.yaml
│     │  ├─ CHANGELOG.md
│     │  ├─ lib
│     │  │  ├─ core.dart
│     │  │  └─ src
│     │  │     ├─ base
│     │  │     │  ├─ failure.dart
│     │  │     │  └─ usecase.dart
│     │  │     └─ di
│     │  │        └─ di_helper.dart
│     │  ├─ LICENSE
│     │  ├─ pubspec.yaml
│     │  └─ README.md
│     ├─ design_system
│     │  ├─ .metadata
│     │  ├─ analysis_options.yaml
│     │  ├─ CHANGELOG.md
│     │  ├─ DESIGN_SYSTEM_GUIDE.md
│     │  ├─ FONT_SIZE_GUIDE.md
│     │  ├─ lib
│     │  │  ├─ design_system.dart
│     │  │  └─ src
│     │  │     ├─ components
│     │  │     │  └─ theme_switch
│     │  │     │     ├─ app_theme_switch.dart
│     │  │     │     ├─ app_theme_switch_tile.dart
│     │  │     │     ├─ app_theme_switch_variant.dart
│     │  │     │     └─ parts
│     │  │     │        ├─ _theme_icon_button.dart
│     │  │     │        ├─ _theme_segmented_control.dart
│     │  │     │        └─ _theme_toggle_switch.dart
│     │  │     ├─ foundation
│     │  │     │  ├─ app_colors.dart
│     │  │     │  ├─ app_responsive.dart
│     │  │     │  ├─ app_spacing.dart
│     │  │     │  ├─ app_spacing_responsive.dart
│     │  │     │  ├─ app_typography.dart
│     │  │     │  └─ app_typography_responsive.dart
│     │  │     ├─ theme
│     │  │     │  └─ app_theme.dart
│     │  │     ├─ utils
│     │  │     │  └─ extensions.dart
│     │  │     └─ widgets
│     │  │        ├─ app_button.dart
│     │  │        ├─ app_card.dart
│     │  │        └─ app_text_field.dart
│     │  ├─ LICENSE
│     │  ├─ pubspec.yaml
│     │  └─ README.md
│     ├─ session
│     │  ├─ .metadata
│     │  ├─ analysis_options.yaml
│     │  ├─ CHANGELOG.md
│     │  ├─ lib
│     │  │  ├─ session.dart
│     │  │  └─ src
│     │  │     ├─ core
│     │  │     │  └─ di
│     │  │     │     ├─ injection.dart
│     │  │     │     └─ injection.module.dart
│     │  │     └─ feature
│     │  │        ├─ domain
│     │  │        │  └─ entity
│     │  │        │     ├─ session_data.dart
│     │  │        │     ├─ session_data.freezed.dart
│     │  │        │     ├─ user_session.dart
│     │  │        │     └─ user_session.freezed.dart
│     │  │        └─ presentation
│     │  │           └─ bloc
│     │  │              ├─ session_bloc.dart
│     │  │              ├─ session_bloc.freezed.dart
│     │  │              ├─ session_event.dart
│     │  │              └─ session_state.dart
│     │  ├─ LICENSE
│     │  ├─ pubspec.yaml
│     │  └─ README.md
│     └─ theming
│        ├─ .metadata
│        ├─ analysis_options.yaml
│        ├─ CHANGELOG.md
│        ├─ lib
│        │  ├─ src
│        │  │  ├─ core
│        │  │  │  └─ di
│        │  │  │     ├─ injection.dart
│        │  │  │     └─ injection.module.dart
│        │  │  └─ feature
│        │  │     ├─ application
│        │  │     │  └─ theme_manager.dart
│        │  │     ├─ data
│        │  │     │  ├─ datasources
│        │  │     │  │  └─ theme_local_datasource.dart
│        │  │     │  └─ repository
│        │  │     │     └─ theme_repository.dart
│        │  │     └─ domain
│        │  │        └─ repository
│        │  │           └─ i_theming_repository.dart
│        │  └─ theming.dart
│        ├─ LICENSE
│        ├─ pubspec.yaml
│        └─ README.md
├─ pubspec.yaml
├─ README.md
├─ scripts
│  ├─ cli.sh
│  ├─ common
│  │  └─ functions.sh
│  ├─ generators
│  │  ├─ create_app_shell.sh
│  │  ├─ create_bloc.sh
│  │  └─ create_package.sh
│  ├─ README.md
│  └─ utils
│     └─ list_packages.sh
└─ SCRIPTS_README.md
```
