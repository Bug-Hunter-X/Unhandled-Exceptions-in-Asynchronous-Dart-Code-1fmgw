# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart: insufficient error handling within asynchronous operations. The `fetchData` function makes a network request, but its error handling is incomplete.  Improperly handling exceptions can lead to silent failures or crashes, making debugging difficult.

## Bug Description
The provided `bug.dart` file contains a `fetchData` function that attempts to fetch data from a remote API.  While it includes a `try-catch` block, the exception handling is rudimentary.  The code only prints the error to the console. A robust solution would differentiate between network errors, JSON decoding errors, and API-specific errors, handling each appropriately.

## Solution
The `bugSolution.dart` file shows improved error handling.  Instead of a generic `catch (e)`, it checks the error type, providing more specific error messages and handling different scenarios gracefully.  This approach improves debugging and user experience.
