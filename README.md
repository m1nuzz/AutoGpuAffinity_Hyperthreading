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
```
Single-Thread: [Original Program](https://github.com/valleyofdoom/AutoGpuAffinity)
![image](https://github.com/user-attachments/assets/cd9ce14c-0594-459d-b69e-df3207c48091)


Hyperthreading: [This fork](https://github.com/m1nuzz/AutoGpuAffinity_Hyperthreading)
![image](https://github.com/user-attachments/assets/01c7a3ca-3bf9-4d7c-ae0a-823266701c69)

