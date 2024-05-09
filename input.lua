io.write("Enter your name: ")

local name = io.read()

print("Hello, " .. name .. "! Welcome to Lua!")

-- io.read() reads input as a string
io.write("Enter a number: ")

-- convert input to a number
local num = tonumber(io.read())       -- there is also tostring() function

if num then
    print("You entered: ", num)
else
    print("Invalid input. Please enter a number.")
end

