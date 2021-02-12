#! /bin/bash
echo "12333"
chmod 600 $TRAVIS_BUILD_DIR/scripts/privately
ssh -o "StrictHostKeyChecking no" -i $TRAVIS_BUILD_DIR/scripts/privately root:abc@2.50.102.0 -p 9090
abc
mkdir abc
