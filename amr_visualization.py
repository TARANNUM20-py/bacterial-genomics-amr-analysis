
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(
    "data/Pseudomonas_AMR_results.tsv",
    sep="\t"
)

class_counts = df["Class"].value_counts()

print(class_counts)

class_counts.plot(kind="bar")

plt.title("AMR Gene Class Distribution")
plt.xlabel("AMR Class")
plt.ylabel("Number of Genes")

plt.tight_layout()
plt.savefig("results/amr_class_distribution.png", dpi=300)
plt.show()

