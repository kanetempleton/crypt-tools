Instructions:

Programs written in C.

The following instructions assume that the gcc compiler and the OpenSSL library are already installed. Instructions for setting up the OpenSSL library for this project on Mac OS are listed at the bottom of this file. If there are any issues compiling, the setup described at the bottom should take care of them, as it also includes setting up the compiler to properly process the "#include ..." statements for the OpenSSL library. I am not sure if this is necessary for other computers or not, but I could not get my own environment set up without doing that. All code that is submitted assumes that this step is already taken care of, and should function properly in any environment that has OpenSSL properly set up.

I also included a textgen program to generate a plaintext file of a certain length. It is contained in the submit folder and functions the same way as keygen. Here's an example of using it to generate a 1024-bit plaintext file for the otp problem:

cd submit
gcc -c textgen.c
gcc -o textgen textgen.c -lcrypto
./textgen 1024 prob2/plain.txt



START OF PROBLEM-SPECIFIC INSTRUCTIONS

============================================================================
Problem 1: Navigate to submit/prob1 in a command line window
==============================
Compile: enter these commands
------------------------------
gcc -c keygen.c
gcc -o keygen keygen.c -lcrypto
==============================
Run: enter the following
------------------------------
./keygen <keysize> <keyfile>
==============================
Example: create 1024-bit key for the OTP problem #2
------------------------------
./keygen 1024 ../prob2/z.key
============================================================================



============================================================================
Problem 2: Navigate to submit/prob2 in a command line window
==============================
Compile: enter these commands
------------------------------
gcc -c otp.c
gcc -o otp otp.c -lcrypto
==============================
Run: enter the following
------------------------------
./otp <keysize> <keyfile> <plaintext file> <ciphertext file>
==============================
Example: assuming existence of 1024-bit z.key and plain.txt
------------------------------
./otp 1024 z.key plain.txt plain.ct
./otp 1024 z.key plain.ct plainb.txt
============================================================================




============================================================================
Problem 3: Navigate to submit/prob3 in a command line window
==============================
Compile: enter these commands
------------------------------
gcc -c rc4.c
gcc -o rc4 rc4.c -lcrypto
==============================
Run: enter the following
------------------------------
./rc4 <keysize> <keyfile> <plaintext file> <ciphertext file>
==============================
Example: assuming existence of 128-bit z.key file and arbitrary length plain.txt
------------------------------
./rc4 128 z.key plain.txt plain.ct
./rc4 128 z.key plain.ct plainb.txt
============================================================================



============================================================================
Problem 4: Navigate to submit/prob4 in a command line window
==============================
Compile: enter these commands
------------------------------
gcc -c aesctr.c
gcc -o aesctr aesctr.c -lcrypto
==============================
Run: enter the following
------------------------------
./aesctr 128 <keyfile> <plaintext file> <ciphertext file> <encrypt/decrypt>
==============================
Example: assuming existence of 128-bit z.key file and arbitrary length plain.txt
------------------------------
./aesctr 128 z.key plain.txt plain.ct encrypt
./aesctr 128 z.key plainb.txt plain.ct decrypt
============================================================================


LIBRARY SETUP INSTRUCTIONS FOR MAC OS:

assumes that homebrew is installed so that OpenSSL can be installed easily through terminal.

INSTALL SSL LIBRARY:
	brew install openssl
	cd /usr/local/opt/openssl/lib
	open .
	* THEN MOVE ALL .a AND .dylib FILES INTO /usr/lib/

PREPARE COMPILER:
	cd /usr/local/include
	ln -s ../opt/openssl/include/openssl .