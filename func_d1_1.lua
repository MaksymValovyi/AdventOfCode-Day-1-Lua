function mysplit(inputstr, sep)
	local counter = 1
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		if counter == 1 then
			table.insert(t, str)
			counter = 2
		else
			table.insert(t, str)
			counter = 1
		end
	end
	return t
end

function count_distance(number1, number2)
	local distance = 0
	if number1 > number2 then
		distance = number1 - number2
	else
		distance = number2 - number1
	end
	return distance
end

--------------------------------------------
--functions for second task
--------------------------------------------

function count_occurance(table)
	local table_of_occurrence = {}

	for _, value in ipairs(table) do
	    if table_of_occurrence[value] then
		table_of_occurrence[value] = table_of_occurrence[value] + 1
	    else
		table_of_occurrence[value] = 1
	    end
	end

	return table_of_occurrence
end

function count_distance_2(table1, table2)
	local distance = 0
	for _, value in pairs(table1) do
		print("value = " .. value)
		if table2[""..value] then
			print("number = " .. value)
			print("distance = " .. distance)
			print("distance = " .. distance .. " + " .. value .. " * " .. table2[""..value])
			distance = distance + (value * table2[""..value])
		else
			distance = distance + 0
		end
	end
	return distance
end

