#generate file from 0 to 63 to convert binary to base64 with minecraft command

for i in range(0, 64):
    #open file named i.txt
    file = open("data/oneiric_tools/functions/skull_data/base64/to_binary/"+str(i) + ".mcfunction", "w")
    #convert i to binary
    binary = bin(i)[2:]
    #add each byte with this command : data modify storage oneiric_tools:head Base64.bin append value xb
    #fill with 0 to have 6 bytes
    for j in range(0, 6-len(binary)):
        file.write("data modify storage oneiric_tools:head Base64.bin append value 0b\n")
    for byte in binary:
        file.write("data modify storage oneiric_tools:head Base64.bin append value " + byte + "b\n")

    file.write("\n")    
    file.close()
