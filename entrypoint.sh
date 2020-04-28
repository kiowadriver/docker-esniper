#!/bin/bash

echo ${EITEM} ${EPRICE} > /.eauction
echo ${EITEM1} ${EPRICE1} >> /.eauction
echo ${EITEM2} ${EPRICE2} >> /.eauction

sed -ri "s/EUSER/$EUSER/" /.esniper 
sed -ri "s/EPASS/$EPASS/" /.esniper
esniper -c /.esniper /.eauction
