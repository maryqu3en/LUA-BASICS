-- declaring variables
-- variables are global by default unless set to local
local Name = "mary"
local age = 19

-- declaring a table (like an array or dictionary)
local person = {}              -- create empty table
person["name"] = Name          -- add name to table with key "name"
person[2] = age                -- add age to table with key 2

print(person["name"])          -- prints "mary"
print(person[2])               -- prints 19

-- you can also use the dot notation to access table elements
print(person.name)             -- prints "mary"
print(person.age)              -- prints nil
person["age"] = age

-- if you try to get a non-existent key, it will return nil
print(person.address)          -- prints nil

-- you can change the value of an element in a table
person.address = "chlef"       -- add address to table with key "address"
print(person.address)          -- prints "chlef"

-- remove an element from a table using nil asignment
person.address = nil            -- removes the address element from person's table
print(person.address)           -- now prints nil

-- tables can be nested
local hobbies = {"reading", "coding", "running"}
person["Hobbies"] = hobbies

-- indexing starts from 1
print(person.Hobbies[1])        -- prints "reading"

-- Lua has eight basic data types: nil, boolean, number, string, userdata, function, thread, and table

-- conditions
if person.age > 50 then
    print("You aged!")
elseif person.age == 50 then
    print("You're halfway there!")
else
    print("Keep growing!")
end

-- loops
-- while loop
print("while loop:")
local i = 1
while i <= 5 do
    print("Count: " .. i)
    i = i + 1
end

-- repeat until
print("repeat until loop:")
i = 1
repeat
    print("Count: " .. i)
    i = i + 1
until i > 5

-- for loop (initialize, condition, increment)
print("for loop:")
for j = 1, 5 do
    print("Count: " .. j)
end

-- with a step of 2
print("for loop (step = 2):")
for k = 1, 10, 2 do
    print("Count: " .. k)
end

-- iterating over elements in a table
local fruits = {"apple", "banana", "orange"}
for l, fruit in ipairs(fruits) do
    print("Fruit #" .. l .. ": " .. fruit)
end



