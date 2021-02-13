#! /bin/bash
echo "12333"
chmod 600 $TRAVIS_BUILD_DIR/scripts/privately
value=$(<$TRAVIS_BUILD_DIR/scripts/python.py)
ssh -o "StrictHostKeyChecking no" -i $TRAVIS_BUILD_DIR/scripts/privately root@5.107.89.225 -p 9090 <<EOF
cd /var
touch python.py
echo "$value" > python.py
EOF
