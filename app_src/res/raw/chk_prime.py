# -*- coding:utf-8 -*-

import random

def chk_prime(q):
    q = abs(q)
    if q == 2: return True
    if q < 2 or q&1: False
    return pow(2, q-1, q) == 1

if __name__ in '__main__':
    nums = [1,2,3,4,5]
    for i in nums:
        print chk_prime(i)
