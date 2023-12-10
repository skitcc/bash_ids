#!/bin/bash

./1.sh ./files1/1 > /dev/null

var1=$?
if [[ "$var1" == "1" ]]; then
    printf "\033[92mTEST 1: TEST PASSED\n"
else
    printf "\033[91mTEST  1:  TEST FAILED\n"
fi

./1.sh ./files1/1 ./files2/2 > /dev/null

var1=$?
if [[ "$var1" == "1" ]]; then
    printf "\033[92mTEST 2: TEST PASSED\n"
else
    printf "\033[91mTEST  2:  TEST FAILED\n"
fi



./1.sh ./files1/folder1 ./files2/folder2 > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 3: TEST PASSED\n"
else
    printf "\033[91mTEST  3:  TEST FAILED\n"
fi

./1.sh ./files1/1 ./files2/1 -m > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 4: TEST PASSED\n"
else
    printf "\033[91mTEST  4:  TEST FAILED\n"
fi


./1.sh ./files1/folder1 ./files2/folder2 > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 3: TEST PASSED\n"
else
    printf "\033[91mTEST  3:  TEST FAILED\n"
fi

./1.sh ./files1/1 ./files2/1 -m > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 4: TEST PASSED\n"
else
    printf "\033[91mTEST  4:  TEST FAILED\n"
fi


./1.sh ./files1/folder1 ./files2/folder2 -m > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 5: TEST PASSED\n"
else
    printf "\033[91mTEST  5:  TEST FAILED\n"
fi

./1.sh ./files1/1 ./files2/1 -v > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 6: TEST PASSED\n"
else
    printf "\033[91mTEST  6:  TEST FAILED\n"
fi


./1.sh ./files1/folder1 ./files2/folder2 -m > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 5: TEST PASSED\n"
else
    printf "\033[91mTEST  5:  TEST FAILED\n"
fi

./1.sh ./files1/1 ./files2/1 -v > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 6: TEST PASSED\n"
else
    printf "\033[91mTEST  6:  TEST FAILED\n"
fi


./1.sh ./files1/1 ./files2/1 -v > /dev/null
var1=$?
if [[ "$var1" == "0" ]]; then
    printf "\033[92mTEST 7: TEST PASSED\n"
else
    printf "\033[91mTEST  7:  TEST FAILED\n"
fi

./1.sh ./files1/2 ./files2/2 -v > /dev/null
var1=$?
if [[ "$var1" == "0" ]]; then
    printf "\033[92mTEST 8: TEST PASSED\n"
else
    printf "\033[91mTEST  8:  TEST FAILED\n"
fi


./1.sh ./files1/1 -v > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 9: TEST PASSED\n"
else
    printf "\033[91mTEST  9:  TEST FAILED\n"
fi

./1.sh ./files1/2 -v > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 10: TEST PASSED\n"
else
    printf "\033[91mTEST  10:  TEST FAILED\n"
fi
