<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

The `ht_authentication_client` is a Dart package providing a robust and flexible authentication client for the Headlines Toolkit ecosystem. It offers a streamlined interface for integrating various authentication methods into your Dart and Flutter applications, including:

*   **Email/Password Authentication:** Securely sign in users with their email address and password.
*   **Google Sign-In:** Integrate with Google's authentication services for a seamless login experience.
*   **Anonymous Authentication:** Allow users to access your app without creating an account.
*   **User Management:** Retrieve the currently authenticated user and manage their session.
*   **Account Deletion:** Provide users with the ability to delete their accounts.

This package handles the complexities of authentication, allowing you to focus on building your application's core features.

## Features

*   **Multiple Authentication Methods:** Supports email/password, Google Sign-In, and anonymous authentication.
*   **User Session Management:** Provides a stream of the current user's authentication state.
*   **Secure Authentication:** Implements best practices for secure authentication handling.
*   **Error Handling:** Defines specific exception classes for various authentication failures.
*   **Extensible Design:** Designed as an abstract class (`HtAuthenticationClient`) to allow for custom implementations.

## Getting started

To get started with the `ht_authentication_client`, you'll need:

1.  A Dart or Flutter project.
2.  An active Headlines Toolkit backend instance (see [link to backend setup documentation]).
3.  Add `ht_authentication_client` as a dependency in your `pubspec.yaml`:

    ```yaml
    dependencies:
      ht_authentication_client: ^<latest_version>
    ```

    Then run `dart pub get` or `flutter pub get`.

## Usage

```dart
import 'package:ht_authentication_client/ht_authentication_client.dart';

void main() async {
  // Initialize the authentication client (replace with your configuration).
  //  For example, you might have a concrete implementation like:
  // final client = MyConcreteAuthenticationClient(config: myConfig);
  const client = HtAuthenticationClient(); // Placeholder - Replace with your concrete implementation

  // Example: Sign in with email and password.
  try {
    await client.signInWithEmailAndPassword(
      email: 'test@example.com',
      password: 'securePassword123',
    );
    print('User signed in successfully!');
  } on EmailSignInException catch (e) {
    print('Email sign-in failed: ${e.error}');
  }

  // Example: Get the current user.
  client.user.listen((user) {
    if (user.isAnonymous) {
      print('User is anonymous');
    } else {
      print('User ID: ${user.uid}, Email: ${user.email}');
    }
  });
}

```

## Additional information

*   **Documentation:** [Link to comprehensive documentation]
*   **Issues:** [Link to issue tracker on GitHub]
*   **Contributing:** Contributions are welcome! Please see our [contributing guidelines](link to contributing guidelines).
*   **License:** [Specify the license, e.g., MIT]
