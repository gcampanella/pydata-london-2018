#!/usr/bin/env python3

import matplotlib.pyplot as plt
import numpy as np

from mpl_toolkits.mplot3d import Axes3D


def sphere(x, y):
    return x**2 + y**2


if __name__ == '__main__':
    x, y = np.meshgrid(
        np.linspace(-2, 2, 200),
        np.linspace(-2, 2, 200)
    )
    z = sphere(x, y)
    fig = plt.figure(figsize=(16, 9))
    ax = fig.gca(projection='3d')
    ax.plot_surface(x, y, z, cstride=1, rstride=1, cmap=plt.cm.Spectral)
    fig.savefig('sphere_fun.png', bbox_inches='tight', pad_inches=0)
