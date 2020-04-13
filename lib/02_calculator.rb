def add premier,second
    premier + second
end

def subtract premier,second
    premier - second
end

def sum tableau
    tableau.inject(:+).to_i # .to_i permet de convertir nil si le tableau est vide
end

def multiply premier,second
    premier * second
end

def power premier,second
    premier ** second
end

def factorial nombre
    (1..nombre).inject(:*) || 1
end

p add(0,0)
p add(2,2)
p add(2,6)

p subtract(10,4)

p sum([])
p sum([7])
p sum([7,11])
p sum([1,3,5,7,9])

p multiply(3, 4)
p multiply(3, -10)
p multiply(3, 0)

p power(3, 2)

p factorial(0)
p factorial(1)
p factorial(2)
p factorial(5)
p factorial(10)