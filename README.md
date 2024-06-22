## Project Title
Sentiment Analysis and Reverse Polish Notation Calculator

## Description
This repository contains two primary projects:
1. **Sentiment Analysis**: A machine learning project implemented in Python to perform sentiment analysis on text data.
2. **Reverse Polish Notation Calculator**: Implemented in C++ and Assembly, this project evaluates arithmetic expressions in Reverse Polish Notation (RPN).

## Getting Started

### Dependencies
#### For Sentiment Analysis
- Python 3.x
- Jupyter Notebook
- Libraries: pandas, numpy, scikit-learn, nltk, matplotlib

#### For Reverse Polish Notation Calculator
- C++ Compiler (e.g., GCC, Clang)
- MIPS Assembler and Simulator

### Installation
#### Sentiment Analysis
1. Install Python 3.x and Jupyter Notebook.
2. Install required Python libraries:
    ```bash
    pip install pandas numpy scikit-learn nltk matplotlib
    ```

#### Reverse Polish Notation Calculator
1. Install a C++ compiler.
2. Install a MIPS assembler and simulator if needed.

### Executing Programs
#### Sentiment Analysis
1. Open `sentiment_analysis.ipynb` in Jupyter Notebook and run the cells to see the analysis.
2. Alternatively, run the Python script:
    ```bash
    python sentiment_analysis.py
    ```

#### Reverse Polish Notation Calculator
1. Compile the C++ file:
    ```bash
    g++ -o A2 A2.cpp
    ```
2. Run the compiled program:
    ```bash
    ./A2
    ```

For the MIPS assembly program, follow the instructions in `A2.pdf`.

## Contents
### Sentiment Analysis
- `sentiment_analysis.ipynb`: Jupyter Notebook for sentiment analysis.
- `sentiment_analysis.py`: Python script for sentiment analysis.

### Reverse Polish Notation Calculator
- `A2.cpp`: C++ implementation of the RPN calculator.
- `p1.asm`, `p1_2.asm`: MIPS assembly code for RPN calculator.
- `A2.pdf`: Detailed assignment description, including problem details, testing, and execution instructions.

## Assignment Details (from `A2.pdf`)
### How the Program Was Tested
The program was tested using various expressions to ensure correct results, including both simple and nested expressions with multiple arithmetic operations.

### Testing Outputs
Example:
- Input Expression: `((1-3)+5)`
- Postfix Notation: `13-5+`
- Result: `3`

### How to Run the Program
1. Open the MIPS simulator.
2. Load the assembly file into the simulator.
3. Execute the program.

### Program Code
See the detailed code in `p1.asm` and `p1_2.asm`.

## Authors
- Saroj Raj
- [LinkedIn Profile](https://www.linkedin.com/in/saroj-raj-22831198/)

## Version History
- 0.1
    - Initial Release
