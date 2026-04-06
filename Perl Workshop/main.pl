# Perl Script Exercises by Ellie Lagrave
# Use Perl scripts to work on the following exercises.

=pod
1) Palindrome Checker
Write a script that takes a string and tests whether it is palindromic (reads the same when written backwards).
- The test should be case-insensitive.
- It does not need to cope with spaces being in different places.
=cut

sub palindrome_checker {
    my $string = shift; # shift: remove the first element of param array, assign it to $string
    $string = lc $string; # lc: lowercase the string
    $string = tr/a-z//cd; # tr: remove non-alphanumeric chars
    return $string eq reverse $string; # eq compare strings
}

print "1) Palindrome Checker - 'racecar' palindrome status: ";
print (palindrome_checker("racecar") ? "true" : "false");
print "\n";

=pod
2) Word Age Classification
Write a script that works out how old a child should be to know a certain word.
Classification should be based on word length:
- **5 years**: <= 3 letters
- **6 years**: <= 4 letters
- **8 years**: <= 6 letters
- **10 years**: <= 10 letters
- **12 years**: any length
=cut

sub word_age_classification {
    my $word = shift;
    if (length $word <= 3) {
        return 5;
    } elsif (length $word <= 4) {
        return 6;
    } elsif (length $word <= 6) {
        return 8;
    } elsif (length $word <= 10) {
        return 10;
    } else {
        return 12;
    }
}

print "2) Word Age Classification - 'hello' age: ";
print word_age_classification("hello");
print "\n";

=pod
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
=cut

sub life_expectancy_calculator {
    my $gender = shift;
    my $smoking = shift;
    my $exercise = shift;
    my $alcohol = shift;
    my $fatty_food = shift;
    my $life_expectancy = 70;
    if ($gender eq "female") {
        $life_expectancy += 4;
    }
    if ($smoking) {
        $life_expectancy -= 5;
    } else {
        $life_expectancy += 5;
    }
    if ($exercise == 0) {
        $life_expectancy -= 3;
    } elsif ($exercise > 0) {
        $life_expectancy += $exercise;
    }
    if ($alcohol > 7) {
        $life_expectancy -= 0.5 * ($alcohol - 7);
    } else {
        $life_expectancy += 2;
    }
    if ($fatty_food) {
        $life_expectancy += 3;
    }
    return $life_expectancy;
}

print "3) Life Expectancy Calculator - life expectancy: ";
print life_expectancy_calculator("female", 0, 2, 10, 1);
print "\n";


=pod
4) Password Checker
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
=cut

sub password_checker {
    my $username = shift;
    my $old_password = shift;
    my $new_password = shift;
    # check pass requirements, ne is not equal to
    if (length $new_password > 7 && $new_password =~ /[A-Z]/ && $new_password ne $old_password) {
        return "true";
    } else {
        return "false";
    }
}

print "4) Password Checker - 'admin' password change processed: ";
print password_checker("admin", "password", "Password123");
print "\n";



=pod
5) Random Array Sorting
Create an array and populate it with **100 random integers** between 1 and 100 (`perldoc -f rand`).
- Sort the array numerically.
- Print the lowest 10 numbers on one line, separated by tabs.
=cut

sub random_array_sorting {
    my @array = ();
    for (1..100) {
        push @array, int(rand(100) + 1);
    }
    @array = sort { $a <=> $b } @array;
    return @array;
}

print "5) Random Array Sorting - sorted array: ";
my @sorted = random_array_sorting(@array);
print join(", ", @sorted), "\n";
print "\n";


    
=pod
6) Prime Number Generator
Write a program to calculate prime numbers.
Requirements:
- Run until it has found **10,000 primes**.
- To test if a number is prime, it only needs to fail exact division by all previous primes.
- Store and reuse previous primes in a suitable data structure.
- Print the 10,000th prime when found.
=cut

sub prime_number_generator {
    my $count_goal = shift;

    my @primes = ();
    my $count = 0;
    my $current_value = 2; # start at 2, first prime

    # find 10,000 primes
    while ($count < $count_goal) {
        my $is_prime = 1; # assume prime until proven otherwise
        # test if prime (divide by all previous primes)
        for my $prime (@primes) {
            # use mod here to check them
            if ($current_value % $prime == 0) {
                $is_prime = 0;
                last; # end loop, prime found
            }
        }
        if ($is_prime) {
            push @primes, $current_value;
            $count++;
        }
        $current_value++;
    }
    return @primes;
}

# print "6) Prime Number Generator - 100th prime: ";
# my @primes = prime_number_generator(100);
# print join(", ", @primes), "\n";
# print "\n";

# print "6) Prime Number Generator - 1,000th prime: ";
# my @primes = prime_number_generator(1000);
# print join(", ", @primes), "\n";
# print "\n";

# print "6) Prime Number Generator - 10,000th prime: ";
# my @primes = prime_number_generator(10000);
# print join(", ", @primes), "\n";
# print "\n";

print "6) Prime Number Generator - 10,000th prime: ";
my @primes = prime_number_generator(10000);
$count = 0;
print "\n";
for my $prime (@primes) {
    $count++;
    if ($count == 100 || $count % 1000 == 0) {
        print "$count 'th prime: $prime\n";
    }
}
print "\n";

# There are many opportunities for optimization in this exercise. Try to find the 10,000th prime as quickly as possible.
# **Note:** 1 is not a prime number, but 2 is. As a guide, the 100th prime is **541**.
