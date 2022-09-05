
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

 - [dio](https://pub.dev/packages/dio)
 - [freezed_annotation](https://pub.dev/packages/freezed_annotation)
 - [json_annotation](https://pub.dev/packages/json_annotation)
 - [json_serializable](https://pub.dev/packages/json_serializable)
 - [lottie](https://pub.dev/packages/lottie)
 - [flutter_svg](https://pub.dev/packages/flutter_svg)
 - [responsive_grid](https://pub.dev/packages/responsive_grid)
 - [flutter_bloc](https://pub.dev/packages/flutter_bloc)
 - [intl](https://pub.dev/packages/intl)
 - [freezed](https://pub.dev/packages/freezed)
 - [flutter_lints](https://pub.dev/packages/flutter_lints)
 - [build_runner](https://pub.dev/packages/build_runner)
 - [mockito](https://pub.dev/packages/mockito)

