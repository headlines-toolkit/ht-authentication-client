Abstract class to be implemented by all future authentication clients. It supports:

*   **Email/Password Authentication:** Securely sign in users with their email address and password.
*   **Google Sign-In:** Integrate with Google's authentication services for a seamless login experience.
*   **Anonymous Authentication:** Allow users to access your app without creating an account.
*   **User Management:** Retrieve the currently authenticated user and manage their session.
*   **Account Deletion:** Provide users with the ability to delete their accounts.

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
      ht_authentication_client:
        git:
          url: https://github.com/headlines-toolkit/ht-authentication-client.git
          ref: main
    ```

    Then run `dart pub get`.
