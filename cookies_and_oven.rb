
# Answer These Questions:

# - What are essential classes?
# - What attributes will each class have?
# - What interface will each class provide?
# - How will the classes interact with each other?
# - Which classes will inherit from others, if any?


# Your code here
class Oven
	def initiliaze(temperature, running_time)
	@temperature = degree_celcius 
	@running_time = running_time
	end
end

class Cookie
	attr_accessor :type
	attr_accessor :baking_time
	attr_accessor :values

	def initiliaze(type, baking_time, values)
	@type = type
	@baking_time = baking_time
	@values = values
	end
end

class PeanutButterCookie < Cookie
	def description
		puts "I have peanuts as my ingredients."
	end
end

class ChocolateChip < Cookie
	def description
		puts "I have chocolate in me."
	end
end

PeanutButterCookie.new


1	require_relative 'cookie_utils'
2	
3	class Cookies
4		attr_reader :selection
5	
6		def initialize
7			@selection = {1 => "Chocolate", 2 => "Chocolate-Chip", 3 => "Oat & Rasin", 4 => "Caramel"}
8			@tray = []
9		end
10	
11		def menu
12			@selection.each do |numb, type|
13				puts "#{numb}. #{type} Cookies"
14			end
15		end
16	
17		def choosing(number)
18	
19			@selection.each do |numb, type|
20			 if number == numb
21			 	puts "#{type} Cookies! "
22	
23			 end
24			end
25		end
26	
27	
28		def put_to_oven(cookies_quantity)
29			while cookies_quantity > 30
30				puts "You won't fit so many cookies in the oven! Choose different amount:"
31				cookies_quantity = gets.chomp.to_i
32			end
33			@tray.push(cookies_quantity)
34	
35		end
36	
37	end
38	
39	class Oven < Cookies
40	
41		def bake!
42		 if @tray.empty? == true
43		 	puts "Set up the timer"
44		 else
45		 	puts "what happened to the cookies?"
46		 end
47	
48		 def timer
49		 	clear_screen!
50			move_to_home!
51			puts "How long would you like to bake the cookies?"
52			time = gets.chomp.to_i
53			clear_screen!
54			move_to_home!
55			for count in (time).downto(0)
56				sleep(0.5)
57				puts count
58				if count == time - 20
59					puts "Your cookies are burnt!"
60				elsif count == time - 15
61					puts "Your cookies are ready!"
62				elsif count == time - 10
63					puts "Your cookies are almost ready!"
64				elsif count == time - 5
65					puts "Your cookies are doughy!"
66				end
67			end
68		end
69	
70		end
71	end
72	
73	clear_screen!
74	move_to_home!
75	puts ""
76	puts "******************************"
77	puts "WELCOME TO OUR AMAZING BAKERY!"
78	puts "******************************"
79	puts ""
80	puts "We've got:"
81	cookies = Cookies.new
82	cookies.menu
83	
84	puts ""
85	puts "Which cookies would you like to bake? Please select a number:"
86	choice = gets.chomp.to_i
87	cookies.choosing(choice)
88	puts "How many of them would you like to bake?"
89	number_of_cookies = gets.chomp.to_i
90	cookies.put_to_oven(number_of_cookies)
91	full = Oven.new
92	full.bake!
93	full.timer 