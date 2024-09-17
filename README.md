# AutoGpuAffinity_Hyperthreading

This fork of [AutoGpuAffinity](https://github.com/valleyofdoom/AutoGpuAffinity) is designed to test CPU cores in hyperthreading pairs. The benchmarking process will run across pairs of logical processors: 0-1, 2-3, and so on. 

## Features
- Assigns GPU driver affinity to specific CPU pairs.
- Analyzes benchmark data from CSV files.
- Supports logging and analysis with PresentMon and xperf.
- Customizable benchmarking duration and CPU selection.

## Installation

To set up the environment, follow these steps:

1. Clone the repository.
2. Install the necessary dependencies using the following command:

    ```bash
    pip install -r requirements.txt
    ```

## Usage

Run the program using:

```bash
python main.py
