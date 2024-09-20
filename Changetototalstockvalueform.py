array = [["kaiser","ness","isagi","kurona","kunigami","gagamaru","yukimiya","raichi","hiori","igarashi","kiyora","bachira","otoya","reo","chigiri","nagi","charles","chapa","rin","karasu","shidou","tokimitsu","zantetsu","nanase","lorenzo","barou","sendou","niko","aryu","aiku",],
         [178.00,58.71,34.26,31.15,69.01,32.04,15.00,20.96,53.16,15.68,144.00,19.14,14.57,21.23,34.33,25.74,127.16,0.50,253.155,35.50,21.67,13.00,10.56,42.15,43.00,52.50,42.24,36.99,32.74,38.79]]
output = ""
for i,value in enumerate(array[0]):
    output+= str(value)+"*"+ str(array[1][i])+"+"
output += "money;"
print("UPDATE users set totalstockvalue="+output)