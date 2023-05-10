#!/usr/bin/python3

# Import library in order to generate a key
from cryptography.fernet import Fernet

# Create file
#def private_file(key):
#    with open("private.txt", "wb") as my_special_file:
#        my_special_file.write(key)

# Encrypt file
def file_encryption(fernetclass):
#   private_file(key)
    message = "This is meant to encrypt"
    message_in_bytes = message.encode()

    encrypted_message = fernetclass.encrypt(message_in_bytes)

    print(encrypted_message)
# Decrypt file

# main
def main():
    # Prompt the user with the mode wanted
    print("Choose the mode wanted (modes available: 1 - encrypt a file, 2 - decrypt a file, 3 - encrypt a message or 4 - decrypt a message):")
    a = input()
    x = int(a)
    # Condition to run the script, must choose one of the existing modes
    if ((x >= 1) and (x <= 4)):
        print("Mode chosen:" + a)
    else:
        print("Mode chosen non existent. Execute the script again.")
        exit
    # Generate key
    key = Fernet.generate_key()
    fernetclass = Fernet(key)
    # If the user chooses mode 1 (encrypt a message)
    if x == 3:
        file_encryption(fernetclass)

    # If the user chooses mode 2 (decrypt a message)
    if x == 4:
        file_encryption(fernetclass)

#In python to call the main function
if __name__=="__main__":
    main()
