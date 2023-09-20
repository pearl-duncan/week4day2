#Write a program that prints the numbers from 1 to n. But for multiples of three, print "Fizz" instead of the number, 
#and for the multiples of five, print "Buzz" instead of the number. For numbers which are multiples of both three and five, 
#print "FizzBuzz".

## Requirements

#1. The program should start counting from 1 and go up to and including n.
#2. If the number is a multiple of 3, it should print "Fizz".
#3. If the number is a multiple of 5, it should print "Buzz".
#4. If the number is a multiple of both 3 and 5, it should print "FizzBuzz".
#5. If the number does not meet any of these conditions, it should simply print the number.

#Example:
#1
#2
#Fizz
#4
#Buzz
#Fizz
#7
#...
#14
#FizzBuzz
#...

#need a func to intake n then count from 1 to n
#need if/else statements 
#print 'Fizz' if n % 3 = 0
#print 'Buzz' if n % 5 =0
#print "FizzBuzz" if n % 3 and if n % 5 = 0
#print num if n % 3 or 5 != 0
# num multiples of 7 - 'Whizz'
#num multiple of 3 & 7 - "whizzBuzz"

def count(n):
    for num in range(1,n+1,1):
        if num % 3 == 0 and num % 5 == 0:
            print("FizzBuzz")
        elif num % 7 == 0 and num % 3 ==0:
            print('WizzBuzz')
        elif num % 5 ==0:
            print('Buzz')
        elif num % 3==0:
            print('Fizz')
        elif num % 7 == 0:
            print('Wizz')
        else:
            print(num)

count(22)