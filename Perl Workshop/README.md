# Perl Script Exercises

Directions **ONLY**

Use Perl scripts to work on the following exercises.

## 1) Palindrome Checker

Write a script that takes a string and tests whether it is palindromic (reads the same when written backwards).

- The test should be case-insensitive.
- It does not need to cope with spaces being in different places.

## 2) Word Age Classification

Write a script that works out how old a child should be to know a certain word.

Classification should be based on word length:

- **5 years**: <= 3 letters
- **6 years**: <= 4 letters
- **8 years**: <= 6 letters
- **10 years**: <= 10 letters
- **12 years**: any length

## 3) Life Expectancy Calculator

Write a script to calculate when someone is going to die.

Assume average life expectancy is **70**, then adjust according to these variables:

- **Male or female**: females get an extra 4 years.
- **Smoker or non-smoker**: add 5 years if non-smoker, subtract 5 years if smoker.
- **Exercise sessions per week**: subtract 3 years if never, add 1 year for each session.
- **Alcohol units per week**: remove 0.5 year for every unit over 7; gain 2 years if teetotal.
- **Fatty food**: add 3 years if they do not eat fatty food.

Calculate the life expectancy of:

- male
- non-smoker
- exercises twice per week
- drinks 10 units of alcohol per week
- eats fatty food

**Note:** This is **not** a scientific calculation.

## 4) Password Checker

Write a small password checking script that records:

- username
- old password
- new password

Password is OK if:

- it is longer than 7 characters
- it contains uppercase characters
- it is different from the old password

Special rule:

- user `admin` can use any password

Print whether the new password is OK.

Try doing this as one compound `if` statement.

## 5) Random Array Sorting

Create an array and populate it with **100 random integers** between 1 and 100 (`perldoc -f rand`).

- Sort the array numerically.
- Print the lowest 10 numbers on one line, separated by tabs.

## 6) Prime Number Generator

Write a program to calculate prime numbers.

Requirements:

- Run until it has found **10,000 primes**.
- To test if a number is prime, it only needs to fail exact division by all previous primes.
- Store and reuse previous primes in a suitable data structure.
- Print the 10,000th prime when found.

There are many opportunities for optimization in this exercise. Try to find the 10,000th prime as quickly as possible.

**Note:** 1 is not a prime number, but 2 is. As a guide, the 100th prime is **541**.
