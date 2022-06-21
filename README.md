# smart_slide_rule

Flutter project with FFI to Rust

## Pre Requisites

- Flutter
- Rust
- Android NDK22

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Build and Run

For Android
```
$ cp .cargo/config.example .cargo/config

... Edit .cargo/config for your environment

$ cargo build --target aarch64-linux-android --release
$ cargo build --target armv7-linux-androideabi --release
$ cargo build --target i686-linux-android --release
$ flutter run
```

## Maneuver to add Plugin

```
$ cargo new --lib native/rust/hoge
$ cargo new --lib native/rust/hoge-ffi
$ flutter create --template=plugin packages/hoge_ffi
```
Add depenency to pubspec.yaml

example:
```
dependencies:
	...
	hoge_ffi:
    path: packages/hoge_ffi

```

## analyze -> codemetrics -> test

$ flutter analyze
$ flutter pub run dart_code_metrics:metrics analyze lib
$ flutter test

## reference
https://mozilla.github.io/firefox-browser-architecture/experiments/2017-09-21-rust-on-android.html
