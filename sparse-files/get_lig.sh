#!/bin/bash --login

biaslist=$(seq $1 0.05 $2)

for bias in ${biaslist}
do
	awk '(/^2/ || /^1/) && $3 >= 0' sparse${bias}.stripped > lig.${bias}
done
