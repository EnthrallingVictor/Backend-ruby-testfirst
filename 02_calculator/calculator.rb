#write your code here
def add(add1, add2)
    add1 + add2
end

def subtract(sub1, sub2)
    sub1 - sub2
end

def sum(array_to_sum)
    i = 0
    array_to_sum.each do |number|
        i += number
    end
    i
end

def multiply(*args)
    i = 1
    args.each do |number|
        i *= number
    end
    i
end

def power(pow1, pow2)
    i = 1
    powered = pow1
    while i < pow2 do
        powered *= pow1
        i += 1
    end
    powered
end

def factorial(you_multiply_it)
    nums = Array(1..you_multiply_it)
    i = 1
    nums.each do |number|
        i *= number
    end
    i
end

