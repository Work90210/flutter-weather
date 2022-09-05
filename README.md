
# Flutter Weather Application

A weather application built using flutter. 

The application is built using the latest flutter version (v3.3.0)



## Installation

#### Step 1:
Download or clone this repo by using the link below:
```bash
git@github.com:Work90210/flutter-weather
```
#### Step 2:
Go to project root and execute the following command in console to get the required dependencies:
```bash
flutter pub get 
```
#### Step 3:
Note: For the application to work correctly, please update the WEATHER_API_KEY in the app Constants file.

Run the project on your local device
```bash
flutter run
```
## API Reference

#### Get forecasts

```http
  GET /forecast.json
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key (WEATHER_API_KEY) |
| `q` | `string` | **Required**. Location (City or Country) |
| `days` | `int` | **Required**. Number of days (6) |

Note: The first day in the forecast is the current day



## Acknowledgements

 - [freezed_annotation](https://pub.dev/packages/freezed_annotation) - HTTP client, DIO works really well for intercepting requests
 - [json_annotation](https://pub.dev/packages/json_annotation) - A package that is required to work with json_serializable
 - [json_serializable](https://pub.dev/packages/json_serializable) - A package that generates code which converts to and from JSON
 - [lottie](https://pub.dev/packages/lottie) - Used to load lottie files
 - [flutter_svg](https://pub.dev/packages/flutter_svg) - Used to load in svgs
 - [responsive_grid](https://pub.dev/packages/responsive_grid) - A package that allows items in a row to snap to a new row when screen gets small
 - [flutter_bloc](https://pub.dev/packages/flutter_bloc) - Used for Cubit state management, Cubit extends BLoC
 - [intl](https://pub.dev/packages/intl) - Used to convert epoch to a datetime or vice versa
 - [freezed](https://pub.dev/packages/freezed) - Used generate code for immutable classes
 - [flutter_lints](https://pub.dev/packages/flutter_lints) - Reminds developers not to be lazy
 - [build_runner](https://pub.dev/packages/build_runner) - Used to generate code when working with freezed, json_serializable or mockito
 - [mockito](https://pub.dev/packages/mockito) - Used to create mocks which allows to easier testing
