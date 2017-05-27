quiz
====

Given 8 balls aligned horizontally and numbered 1, 2, 3, 4, 5, 6, 7, 8 from left to right. We are going to perform the following N operations in the given order.

* Exchange A_1th ball from the left and B_1th ball from the left
* Exchange A_2th ball from the left and B_2th ball from the left.
* ...
* Exchange A_Nth ball from the left and B_Nth ball from the left.

This series of N operations stated above will be one set.

Your task is to output the ultimate arrangement of these balls after repeating K sets.

### Input

Input will be given in the following format from Standard Input:

    N K
    
    A_1 B_1
    
    A_2 B_2
    
    :
    
    A_N B_N

* On the 1st line, integer N(1≦N≦50) represents the number of operations that are included in one set, and integer K(1≦K≦10^9) represents the number of sets. They are separated with a space.
* On the following N lines, the operations to perform are given. Each line contains two integers Ai, Bi (1≦Ai, Bi≦8, Ai≠Bi) that represent the exchanges to be made. They are separated with a space.

### Output

The output should be a single line with the number for each ball in their final order, with a space between each number.

Make sure to insert a line break at the end of the output.

Do not put any extra space at the end of the output.

### Input Example #1

    4 2 
    1 2 
    2 3 
    3 4 
    4 1
    
### Output Example #1

    1 4 2 3 5 6 7 8
    
You will perform 2 sets of 4 given operations, so you will perform 8 operations in total. 

The flow of the operation is the following:

* First,theballsarearrangedas12345678.
* One will exchange the 1st ball from the left and the 2nd ball from the left. After this operation, the
balls are arranged as 2 1 3 4 5 6 7 8.
* One will exchange the 2nd ball from the left and the 3rd ball from the left. After this operation, the
balls are arranged as 2 3 1 4 5 6 7 8.
* One will exchange the 3rd ball from the left and the 4th ball from the left. After this operation, the
balls are arranged as 2 3 4 1 5 6 7 8.
* One will exchange the 4th ball from the left and the 1st ball from the left. After this operation, the
balls are arranged as 1 3 4 2 5 6 7 8.
* One will exchange the 1st ball from the left and the 2nd ball from the left. After this operation, the
balls are arranged as 3 1 4 2 5 6 7 8.
* One will exchange the 2nd ball from the left and the 3rd ball from the left. After this operation, the
balls are arranged as 3 4 1 2 5 6 7 8.
* One will exchange the 3rd ball from the left and the 4th ball from the left. After this operation, the
balls are arranged as 3 4 2 1 5 6 7 8.
* One will exchange the 4th ball from the left and the 1st ball from the left. After this operation, the
balls are arranged as 1 4 2 3 5 6 7 8.

### Input Example #2
    16 1000000000 
    1 3
    6 8
    3 5
    2 6 
    3 7 
    3 4 
    4 7 
    2 4 
    1 3 
    2 7 
    2 7 
    2 4 
    6 7 
    1 7 
    3 4 
    1 6
    
### Output Example #2
    1 8 3 4 5 2 7 6