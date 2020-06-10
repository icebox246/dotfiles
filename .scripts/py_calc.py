import math as m

while 1:
	inp = input(u'\u001b[38;5;182m ')
	if inp == 'clear' or inp == 'cls':
		exit()	
	try:
		res = eval(inp)
		if res: print(u"\u001b[38;5;223m", res)
	except:
		try:
			exec(inp)
		except Exception as e:
			print("\u001b[38;5;197mError: ",  e)
