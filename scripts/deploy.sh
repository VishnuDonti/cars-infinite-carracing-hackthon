#! /bin/bash
value=$(<$TRAVIS_BUILD_DIR/scripts/python.py)
echo $privatekey > privatekey
chmod 600 $TRAVIS_BUILD_DIR/privatekey
ssh -o "StrictHostKeyChecking no" -i $TRAVIS_BUILD_DIR/privatekey root@$FOO -p 9090 <<EOF
cd /var
touch python.py
echo "$value" > python.py
EOF
