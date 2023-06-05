#!/bin/bash

rm -rf pubspec.lock && \
flutter pub cache clean && \
flutter clean && \
flutter pub get


