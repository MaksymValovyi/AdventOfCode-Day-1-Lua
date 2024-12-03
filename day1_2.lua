-- Day 1, part 2 
require "func_d1_1"

local s = io.open("input.txt", "r")
local values_table = {}
local table_1 = {}
local table_2 = {}
local result = 0
local table_of_occurrence = {}

if (s ~= nil) then
	for line in s:lines() do
		print(line)
		values_table = mysplit(line)
		table.insert(table_1, values_table[1])
		table.insert(table_2, values_table[2])
	end

	table.sort(table_2)

	table_of_occurrence = count_occurance(table_2)

	result = count_distance_2(table_1, table_of_occurrence)

	print("Result :" .. result)
end
