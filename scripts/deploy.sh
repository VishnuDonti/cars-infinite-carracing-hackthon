#! /bin/bash
chmod 600 $TRAVIS_BUILD_DIR/scripts/privately
value=$(<$TRAVIS_BUILD_DIR/scripts/python.py)
ssh -o "StrictHostKeyChecking no" -i $TRAVIS_BUILD_DIR/scripts/privately root@$FOO -p 9090 <<EOF
cd /var
touch python.py
echo "$value" > python.py
EOF
