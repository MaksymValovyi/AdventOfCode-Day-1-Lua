-- trying to solve advent of code

require "func_d1_1"

local s = io.open("input.txt", "r")
local values_table = {}
local table_1 = {}
local table_2 = {}
local result = 0

if (s ~= nil) then
	for line in s:lines() do
		print(line)
		values_table = mysplit(line)
		table.insert(table_1, values_table[1])
		table.insert(table_2, values_table[2])
	end

	table.sort(table_1)
	table.sort(table_2)

	for i = 1, 1000 do
		print("\n")
		print("table 1 Element :" .. table_1[i])
		print("table 2 Element :" .. table_2[i])
		print("Distance :" .. count_distance(table_1[i], table_2[i]))
		result = result + count_distance(table_1[i], table_2[i])
		print("Result :" .. result)
	end
end
