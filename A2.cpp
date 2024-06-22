#include <iostream>
#include <vector>
#include <string>
#include <sstream>
using namespace std;

int main(){
    std::string userInput;

    std::cout << "Please enter a string: ";
    std::getline(std::cin, userInput);

    // Removing all occurrences of '(' and ')'
    std::string result;

    for (char c : userInput) {
        if (c != '(' && c != ')') {
            result += c;
        }
    }

    std::vector<int> numbers;
    std::vector<char> operators;

    std::string numStr = "";  // Temporary string to hold multi-digit numbers

    for (char c : result) {
        if (isdigit(c)) {
            numStr += c;
        } else if (c == '+' || c == '-') {
            if (!numStr.empty()) {
                numbers.push_back(stoi(numStr));
                numStr.clear();
            }
            operators.push_back(c);
        }
    }

    // Adding the last number if any
    if (!numStr.empty()) {
        numbers.push_back(stoi(numStr));
    }

    // Evaluate the total
    int total = numbers[0];  // Initialize total with the first number
    for (size_t i = 0; i < operators.size(); ++i) {
        if (operators[i] == '+') {
            total += numbers[i + 1];
        } else if (operators[i] == '-') {
            total -= numbers[i + 1];
        }
    }

    std::cout << "Total: " << total << std::endl;

    return 0;
}
