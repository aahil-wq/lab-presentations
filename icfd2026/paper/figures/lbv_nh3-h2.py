import pandas as pd
import matplotlib.pyplot as plt

exp_data = pd.read_excel("lbv_selfcompiled.xlsx", header=0)
num_data = pd.read_excel("lbv_num_phi-10.xlsx", header=0)

fig, ax = plt.subplots(figsize=(10, 6))
for dataset in num_data.columns.values[1:]:
    ax.plot(num_data["xh2"], num_data[dataset], '-', linewidth=2, label=dataset)
    
auth_list = exp_data["id"].unique()
for auth in auth_list:
    x_exp = exp_data.loc[(exp_data["Phi"] == 1.0)
                         & (exp_data["P (atm)"] == 1)
                         & (exp_data["Temp"] == 298)
                         & (exp_data["id"] == auth), "x_H2"]
    y_exp = exp_data.loc[(exp_data["Phi"] == 1.0)
                         & (exp_data["P (atm)"] == 1)
                         & (exp_data["Temp"] == 298)
                         & (exp_data["id"] == auth), "S_L"]
    if not y_exp.empty:
        ax.plot(x_exp, y_exp, 'o', label=auth)
plt.rc("font", size=12)
plt.legend(loc="best")
ax.set_xlabel(r"xH$_2$", fontsize=12)
ax.set_ylabel(r"Unstretched Laminar Burning Velocity, S$_L$ (cm/s)", fontsize=12)
ax.grid()
plt.tight_layout()
plt.show()
