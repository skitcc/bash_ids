#!/bin/bash



./comparator3.sh ./files1/1 > /dev/null

var1=$?
if [[ "$var1" == "1" ]]; then
    printf "\033[92mTEST 1.1: TEST PASSED (количество переданных аргументов (указан 1 аргумент))\n"
else
    printf "\033[91mTEST  1.1:  TEST FAILED (количество переданных аргументов (указан 1 аргумент))\n"
fi

./comparator3.sh ./files1/1 ./files2/2 > /dev/null

var1=$?
if [[ "$var1" == "1" ]]; then
    printf "\033[92mTEST 1.2: TEST PASSED (количество переданных аргументов (указано 2 аргумента))\n"
else
    printf "\033[91mTEST  1.2: TEST FAILED  (количество переданных аргументов (указано 2 аргумента))\n"
fi



./comparator3.sh ./files1/1 ./files2/2 -m > /dev/null
var1=$?
if [[ "$var1" == "1" ]]; then
    printf "\033[92mTEST 1.3: TEST PASSED (количество переданных аргументов (указано 3 аргумента))\n"
else
    printf "\033[91mTEST  1.3:  TEST FAILED (количество переданных аргументов (указано 3 аргумента))\n"
fi


./comparator3.sh ./files1/folder1 ./files2/1 -m > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 2.1: TEST PASSED (тип первого аргумента: dir, второго: file)\n"
else
    printf "\033[91mTEST  2.1:  TEST FAILED (тип первого аргумента: dir, второго: file)\n"
fi


./comparator3.sh ./files1/1 ./files2/folder1 > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 2.2: TEST PASSED (тип первого аргумента: file, второй: dir)\n"
else
    printf "\033[91mTEST  2.2:  TEST FAILED (тип первого аргумента: file, второй: dir)\n"
fi


./comparator3.sh ./files1/1 ./files2/2 > /dev/null
var1=$?
if [[ "$var1" == "2" ]]; then
    printf "\033[92mTEST 2.3: TEST PASSED (тип первого аргумента: file, второй: file)\n"
else
    printf "\033[91mTEST  2.3:  TEST FAILED (тип первого аргумента: file, второй: file)\n"
fi




./comparator3.sh ./files1/1 ./files2/2 -m > /dev/null
var1=$?
if [[ "$var1" == "3" ]]; then
    printf "\033[92mTEST 3.1: TEST PASSED (проверка на правильность 3-его аргумента (указан -m(неправильно)))\n"
else
    printf "\033[91mTEST  3.1:  TEST FAILED (проверка на правильность 3-его аргумента (указан -m(неправильно)))\n"
fi


./comparator3.sh ./files1/1 ./files2/2 -v > /dev/null
var1=$?
if [[ "$var1" == "3" ]]; then
    printf "\033[92mTEST 3.2: TEST PASSED (проверка на правильность 3-его аргумента (указан -v(верно)))\n"
else
    printf "\033[91mTEST  3.2:  TEST FAILED (проверка на правильность 3-его аргумента (указан -v(верно)))\n"
fi


./comparator3.sh ./files1/1 ./files2/1 -v > /dev/null
var1=$?
if [[ "$var1" == "0" ]]; then
    printf "\033[92mTEST 4.1: TEST PASSED (сравнение числовых значений без молчаливого режима)\n"
else
    printf "\033[91mTEST  4.1:  TEST FAILED(сравнение числовых значений без молчаливого режима)\n"
fi


./comparator3.sh ./files1/1 ./files2/2 -v > /dev/null
var1=$?
if [[ "$var1" == "4" ]]; then
    printf "\033[92mTEST 4.2: TEST PASSED (сравнение числовых значений без молчаливого режима)\n"
else
    printf "\033[91mTEST  4.2:  TEST FAILED \n"
fi


