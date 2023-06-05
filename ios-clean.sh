#!/bin/bash

cd ios && \
rm -rf ~/Library/Developer/Xcode/DerivedData* && \
pod deintegrate && \
pod cache clean --all && \
arch -x86_64 pod install --repo-update --clean-install