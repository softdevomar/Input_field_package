

# Custom_Text_Field Widget

A customizable text field widget designed to provide extensive control over the appearance and behavior of text input.

## Properties

- **`labelText`**: The label text displayed above the input field.
- **`controller`**: The controller to control the text field's behavior.
- **`validator`**: A function that validates the input value.
- **`onFieldSubmit`**: A function called when the user submits the field.
- **`onChanged`**: A function called when the text field's content changes.
- **`onTap`**: A function called when the text field is tapped.
- **`onTapSuffixIcon`**: A function called when the suffix icon is tapped.
- **`onTapPrefixIcon`**: A function called when the prefix icon is tapped.
- **`suffixIconData`**: The icon to display at the end of the input field.
- **`prefixIconData`**: The icon to display at the beginning of the input field.
- **`focusNode`**: The focus node for controlling the focus state of the text field.
- **`backgroundColor`**: The background color of the text field.
- **`hintTextColor`**: The color of the hint text.
- **`cursorColor`**: The color of the cursor.
- **`textColor`**: The color of the text.
- **`prefixIconColor`**: The color of the prefix icon.
- **`sufixIconColor`**: The color of the suffix icon.
- **`borderColor`**: The color of the text field border.
- **`prefixWidget`**: A custom widget to be used as the prefix instead of an icon.
- **`inputType`**: The type of keyboard input expected.
- **`obscureText`**: Whether the text should be obscured (e.g., for passwords).
- **`borderRadius`**: The border radius of the text field.
- **`borderWidth`**: The width of the border.
- **`borderSide`**: Whether to display the border.
- **`errorText`**: The error message to display if validation fails.
- **`initialValue`**: The initial value of the text field.
- **`readOnly`**: Whether the text field is read-only.
- **`inputFormatters`**: Formatters to be applied to the input.
- **`maxLines`**: The maximum number of lines allowed for input.
- **`textAlign`**: The alignment of the text within the field.
- **`maxLength`**: The maximum length of the input allowed.


# Getting Started with input_field

To use the `input_field` package in your Flutter project, follow these steps:

1. Open your project's `pubspec.yaml` file.
2. Add `input_field` to your dependencies:

    ```yaml
    dependencies:
      input_field: ^1.0.0  # Replace with the latest version
    ```

3. Save the `pubspec.yaml` file.

4. Run the following command to get the dependencies:

    ```bash
    flutter pub get
    ```

5. Import the package in your Dart files where you want to use it:

    ```dart
    import 'package:input_field/input_field.dart';
    ```

6. Now, you can start using the components provided by the `input_field` package in your Flutter application.

For more information about the package and its usage, refer to the [input_field package documentation](https://pub.dev/packages/input_field).

## Example Usage

Custom_Text_Field: Easy to use
```dart
Padding(
padding: const EdgeInsets.all(8.0),
    child: Custom_Text_Field(
    controller: controller,
    hintText: "Hint Text",
    borderSide: true,
    borderRadius:2,
    ),
),
```
All property Custom Text Field
```dart
Custom_Text_Field(
        controller: controller2,
        labelText: 'Label Text',
        hintText: 'Hint Text',
        validator: (value) {
        if (value == null || value.isEmpty) {
        return 'Please enter some text';
        }
        return null;
        },
        onFieldSubmit: (value) {
        print('Submitted: $value');
        },
        onChanged: (value) {
        print('Changed: $value');
        },
        onTap: () {
        print('Tapped');
        },
        onTapSuffixIcon: () {
        print('Tapped suffix icon');
        },
        onTapPrefixIcon: () {
        print('Tapped prefix icon');
        },
        suffixIconData: Icons.search,
        prefixIconData: Icons.person,
        focusNode: FocusNode(),
        backgroundColor: Colors.grey[200],
        hintTextColor: Colors.grey,
        cursorColor: Colors.blue,
        textColor: Colors.black,
        prefixIconColor: Colors.red,
        sufixIconColor: Colors.blue,
        inputType: TextInputType.emailAddress,
        obscureText: false,
        borderRadius: 10,
        borderWidth: 1,
        borderColor: Colors.grey,
        borderSide: true,
        errorText: 'Error message',
        inputFormatters: [],
        maxLines: 1,
        textAlign: TextAlign.center,
        maxLength: 20,
),
```

