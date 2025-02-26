# BMI Calculator App

This is a **Body Mass Index (BMI) Calculator** built with **Flutter**. The app allows users to input their height, weight, age, and gender, and calculates their BMI, displaying the result along with an interpretation.

## Features

- Select gender using custom cards  
- Adjust height using a slider  
- Increment and decrement weight and age with custom buttons  
- Calculate BMI based on user input  
- Display BMI result, category, and interpretation  
- Navigation between input and result screens  

## UI Overview

The app consists of two main screens:

1. **Input Page**  
   - Users can select their gender.  
   - A slider allows users to adjust height.  
   - Buttons allow increasing or decreasing weight and age.  
   - A "Calculate BMI" button navigates to the results page.  
![im2](imagines/im2.png


2. **Result Page**  
   - Displays the calculated BMI value.  
   - Shows the BMI category (Underweight, Normal, Overweight).  
   - Provides an interpretation of the result.  
   - A "Recalculate BMI" button navigates back to the input page.
![im1](imagines/im1.png
## File Structure
```
/lib
│── /components
│   ├── icon_content.dart
│   ├── navigator_button.dart
│   ├── reusable_card.dart
│   ├── rounded_button.dart
│── /enums
│   ├── gender_enum.dart
│── /screens
│   ├── input_page.dart
│   ├── second_screen.dart
│── bmi_data.dart
│── calculator_brain.dart
│── my_constants.dart
│── main.dart
```

## How to Run

1. Clone the repository  
   ```sh
   git clone https://github.com/VictorCraciunas/BMI_Calculator.git
   ```
2. Navigate to the project folder  
   ```sh
   cd bmi-calculator
   ```
3. Install dependencies  
   ```sh
   flutter pub get
   ```
4. Run the app  
   ```sh
   flutter run
   ```

## Dependencies

This app uses the following dependencies:

- **flutter** (Material Design framework)  
- **font_awesome_flutter** (for icons)  



