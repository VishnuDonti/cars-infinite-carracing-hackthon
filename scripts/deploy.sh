#! /bin/bash
echo "12333"
chmod 600 $TRAVIS_BUILD_DIR/scripts/privately
ssh -o "StrictHostKeyChecking no" -i $TRAVIS_BUILD_DIR/scripts/privately root@5.107.89.225 -p 9090 <<EOF
mkdir abc
cp $TRAVIS_BUILD_DIR/python.py python.py
pwd
EOF
