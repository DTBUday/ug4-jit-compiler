#!/usr/bin/python
from sys import stdin

boundary = 0

ans = {}
for line in stdin:
	x = line.split()

	timeConsumed = float(x[1])
	taskPercentage = float(x[0])

	keyId = x[-1]
	valueToStore = timeConsumed
	
	if taskPercentage > 10.0:
		if keyId in ans:
			ans[keyId] += valueToStore
		else:
			ans.update({keyId: valueToStore})

for key in ans.keys():
	val = ans[key]

	if val >= boundary:
		print(f"{val} - {key}")
