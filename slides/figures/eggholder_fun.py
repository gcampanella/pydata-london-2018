#!/usr/bin/env python3

import matplotlib.pyplot as plt
import numpy as np

from mpl_toolkits.mplot3d import Axes3D


def eggholder(x, y):
    return -(y + 47) * np.sin(np.sqrt(np.abs(y + x/2 + 47))) + \
           -x * np.sin(np.sqrt(np.abs(x - (y + 47))))


if __name__ == '__main__':
    x, y = np.meshgrid(
        np.linspace(-256, 256, 200),
        np.linspace(-256, 256, 200)
    )
    z = eggholder(x, y)
    fig = plt.figure(figsize=(16, 9))
    ax = fig.gca(projection='3d')
    ax.plot_surface(x, y, z, cstride=1, rstride=1, cmap=plt.cm.Spectral)
    fig.savefig('eggholder_fun.png', bbox_inches='tight', pad_inches=0)
