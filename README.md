# BackOnTrack

This project is a minimal Swift macOS app and Launch Agent setup.

## Current Features
- **HelloApp**: A simple Swift macOS app that logs `hello` to the console when launched.
- **Launch Agent**: A Launch Agent plist (`com.example.helloapp.plist`) is provided to run the app automatically at user login.
- **Deployment Scripts**: Shell scripts to build the app bundle and deploy the Launch Agent for easy testing and setup.

## How it works
- When the agent is loaded, it launches the HelloApp, which prints `hello` and exits.
- Output is redirected to `/tmp/helloapp.log` for verification.

This setup is a foundation for building more advanced macOS background agents or communication services.
