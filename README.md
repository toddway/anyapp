This codebase demonstrates best practices for automating various parts of the build process for any mobile app.


## Build types
The build script defines three build types: debug, beta, and release
(similar to dev, stage, and prod environments for remote systems).

The debug build type
is used by developers when writing new code.  It should be kept lean and fast - likely excluding
steps like minification, automated tests, and static code analysis - since it will happen frequently.

The beta build type is meant to be uploaded to a server where a team of beta testers can install it over-the-air.
This project demonstrates this using the [Crashlytics Beta]() platform.  Ideally this build would
be generated automatically by a Continuous Integration server.

The release build type is meant to be published to the store for end users.  It includes additional
store assets like app description and screenshots.


## Build versioning
The build script uses git commands to automatically
manage the app's Version Name, Version Code and APK filename.  Leveraging git provides
descriptive values and full repository traceability for each build.

To mark a stable version of the app codebase, create a git tag (preferably one that follows
[Semantic Versioning](http://semver.org/spec/v2.0.0.html) rules).

    git tag -a 0.0.1 -m "any app version 0.0.1"

`git describe --dirty` is used to populate the version name.  If the working copy
matches a tag exactly, then the tag name will be used as is.  If it does not match exactly, git
provides a suffix that describes the state of the working copy against which the build was generated.
See [git-describe](http://git-scm.com/docs/git-describe) for details.

`git rev-list HEAD --count` is used to populate the version code.  It returns the total number of
repository commits and ensures that a new version code is always greater than the version code
of any previous build (this is required by the Google Play store).

The version name is displayed in the app (typically on a Settings or About screen) for all build
types.  For non-release builds, the build time, build type, and version code are also displayed.
These are useful to developers and beta testers during a project, but not to end users so they
are not displayed in release builds.


## Build commands
...

## Beta distribution
...

## Automated tests
...

## Build publishing
...

## Keys/passwords
...