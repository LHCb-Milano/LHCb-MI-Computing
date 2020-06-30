#!/usr/bin/env python3

import time
import numpy as np

buffer = []

for i in range(10):
    array = np.ones(67108864)
    buffer.append(array)
    size = array.size * array.itemsize / 1024 / 1024 / 1024 * len(buffer)
    print(f'{size} GB allocated...')
    time.sleep(5)
