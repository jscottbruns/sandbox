# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import sys

def is_prime(n):
    m = n/2
    for i in range(2, int(m+1)):
        if n % i == 0:
            return False
    return True

def answer(n):
    prime_concat = ''
    c = 2

    while len(prime_concat) <= n+5:
        if is_prime(c):
            prime_concat += str(c)
        c += 1

    return prime_concat[n:n+5]

if __name__ == "__main__":
    answer(int(sys.argv[1]))