#define method group with argument array (array)
#output will be 2d array of names grouped no larger than 5 but no smaller than 3
#group names into 5s when possible.
#if remaining array is 3 or 4 leave as is.
#if array is 2 or 1 assign from another group to compensate.

#inital
def grouping(arr)
	group = arr.each_slice(5).to_a
	if group[group.length-1].length * 2 == 4
        group[group.length-1] << group[group.length-2][4]
        group[group.length-2].delete_at(4)
    elsif group[group.length-1].length * 2 == 2
        group[group.length-1] << group[group.length-2][3]
        group[group.length-1] << group[group.length-2][4]
        group[group.length-2].delete_at(4)
        group[group.length-2].delete_at(3)
    end
    print group
end

#refactor
def grouping(arr)
	group = arr.each_slice(5).to_a
	if group[group.length-1].length == 2
        group[group.length-1] << group[group.length-2][4]
        group[group.length-2].delete_at(4)
    elsif group[group.length-1].length == 1
        group[group.length-1] << group[group.length-2][3]
        group[group.length-1] << group[group.length-2][4]
        group[group.length-2].delete_at(4)
        group[group.length-2].delete_at(3)
    end
    x = group.length-1
    while x >= 0
        puts "Group " + (x+1).to_s + ": " + group[x].to_s
        x-=1
    end
end

#test
grouping(["ahris", "bhris", "chris", "dhris", "ehris", "fhris", "ghris", "hhris", "ihris", "jhris", "khris", "lhris", "mhris", "phris", "hris", "lol", "pwn", "scone"])

grouping(["ahris", "bhris", "chris", "dhris", "ehris", "fhris", "ghris", "hhris", "ihris", "jhris", "khris", "lhris", "mhris", "phris", "hris", "lol", "pwn",])

grouping(["ahris", "bhris", "chris", "dhris", "ehris", "fhris", "ghris", "hhris", "ihris", "jhris", "khris", "lhris", "mhris", "phris", "hris", "lol"])

#reflection
#What was the most interesting and most difficult part of this challenge?
#Most intersting part was figuring out how to group names into 5's. The most difficult part for me was dealing with the odd cases of 2 and 1 groups
#Do you feel you are improving in your ability to write pseudocode and break the problem down?
#Yes my ruby coding is getting noticeably smoother. In particular my psuedocode has improved leaps and bounds.
#Was your approach for automating this task a good solution? What could have made it even better?
#I'm not sure if it was an optimal solution, but im pretty happy with it. I think if i looked up a few more methods it would have looked nicer.
#What data structure did you decide to store the accountability groups in and why?
#I used arrays within an array.
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#I refractored around the user experience. I wanted to make a method that was easy to use and understand from a user standpoint.