import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
import itertools

exp_data: pd.DataFrame = pd.read_excel("lbv_selfcompiled.xlsx", header=0).dropna()
phi: set = set(exp_data["Phi"])
pressure: set = set(exp_data["P (atm)"])
axes: np.ndarray = np.array(list(itertools.product(phi, pressure)))

weight: list = np.array([len(exp_data.loc[(exp_data["Phi"] == ax[0]) &
                                 (exp_data["P (atm)"] == ax[1])])
                for ax in axes])

x = axes[:, 0]
y = axes[:, 1]
plt.scatter(x, y, s=weight*4, alpha=0.5)
plt.xlabel(r"Equivalence ratio ($\phi$)")
plt.ylabel(r"Pressure (atm)")
plt.ylim(top=6)
plt.tight_layout()
plt.savefig("exp-data_density.png", dpi=500)
