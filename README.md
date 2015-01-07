This codebase demonstrates techniques to automate various build steps for any Android app.

## Versioning
The build.gradle in this project's app directory shows how git commands can be used to automatically
set an app's Version Name, Version Code and APK filename.  Using git ensures accurate and descriptive
values for each build as well as full repository traceability.

To mark a stable version of the app codebase, create a git tag (preferably one that follows
[Semantic Versioning](http://semver.org/spec/v2.0.0.html) rules).

    git tag -a 0.0.1 -m "any app version 0.0.1"

The build script uses `git describe --dirty` to generate the Version Name.
