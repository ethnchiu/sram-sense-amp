import argparse
from pathlib import Path
import sys

import pandas as pd
import matplotlib.pyplot as plt

def main(data_file: Path, plot_dir: Path, show: bool):
    df = pd.read_csv(data_file, sep=r'\s+')

    df["time_ns"] = df["time"] * 1e9
    df = df.set_index("time_ns")

    plt.figure(figsize=(8,5))
    
    df[["v(BL)", "v(BLB)", "v(SE)", "v(OUT)"]].plot(ax=plt.gca())

    plt.xlabel("Time [ns]")
    plt.ylabel("Voltage [V]")
    plt.title("SRAM Sense Amplifier Transient Analysis")
    plt.legend()
    plt.grid(True)

    plot_dir  = plot_dir / "tran.png"
    plt.savefig(plot_dir)

    print(f"Saved plot to '{plot_dir.as_posix()}'")

    if show:
        plt.show()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Plots the transient analysis of an SRAM sense amplifier and stores the result in 'plots'")
    parser.add_argument("-i", "--input", help="path to the file containing the data", default="../xschem/simulation/data.txt")
    parser.add_argument("-o", "--output", help="path to directory in which to store the plot", default="../plots")
    parser.add_argument("-s", "--show", help="show plot on execution", action="store_true")

    args = parser.parse_args()

    data_file: Path = Path(args.input)
    plot_dir: Path = Path(args.output)

    if not data_file.exists():
        print(f"ERROR: '{data_file.as_posix()}' does not exist")
        sys.exit()

    if data_file.suffix != ".txt":
        print(f"ERROR: Incorrect input file type. Must be '.txt'")
        sys.exit()

    if not plot_dir.exists():
        print(f"WARNING: '{plot_dir.as_posix()}' does not exist")
        print(f"Creating '{plot_dir.as_posix()}'")

    main(data_file, plot_dir, args.show)
