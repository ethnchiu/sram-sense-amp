import argparse
from pathlib import Path
import re

import pandas as pd
import matplotlib.pyplot as plt

def main(file: str, name: str, rename: str, out: str, title: str):
    file_path: Path = Path(file)
    df = pd.read_csv(file_path, sep=r"\s+")

    df[name] *= 1000

    df[name].plot.hist(edgecolor="k")

    # Retrieve and display count, mean, and standard deviation
    count = df[name].count()

    mu = df[name].mean()
    #plt.axvline(mu, color="k", linestyle="dashed")

    sigma = df[name].std()
    text = (
        f'n = {count}\n'
        rf'$\mu = {mu:.1f}\,\mathrm{{mV}}$' '\n'
        rf'$\sigma = {sigma:.1f}\,\mathrm{{mV}}$'
    )

    plt.text(-5.25, 14.5, text)

    if rename:
        name = rename

    plt.xlabel(f"{name} [mV]")
    plt.ylabel("Frequency")

    if title:
        plt.title(title)

    if out:
        out_path: Path = Path(out)
        if out_path.is_dir():
            clean_name: str = re.sub(r"\s+", "_", name.strip()).lower()
            out_path = out_path / f"{clean_name}.png"
            out_path = out_path.with_suffix(".png")
            plt.savefig(out_path)
        else:
            out_path = out_path.with_suffix(".png")
            plt.savefig(out_path)

        print(f"Plot saved to {out_path.as_posix()}")
    else:
        plt.show()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Plots the results of a monte carlo simulation. This program assumes the data contained in the 'name' column is in volts.")
    parser.add_argument("-i", "--input", help="path to the file containing the data", required=True)
    parser.add_argument("-n", "--name", help="name of the data column", required=True)
    parser.add_argument("-r", "--rename", help="new name for the data")
    parser.add_argument("-o", "--output", help="path to store the plot")
    parser.add_argument("-t", "--title", help="title of the plot")

    args = parser.parse_args()

    main(args.input, args.name, args.rename, args.output, args.title)
