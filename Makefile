serial: check/check_numbers generate/NumberGenerator.class sort/sort_numbers
	java generate.NumberGenerator | ./sort/sort_numbers | ./check/check_numbers

check/check_numbers: check/check_numbers.cpp
	g++ -o check/check_numbers check/check_numbers.cpp

generate/NumberGenerator.class: generate/NumberGenerator.java
	javac generate/NumberGenerator.java

sort/sort_numbers: sort/sort_numbers.c
	gcc -o sort/sort_numbers sort/sort_numbers.c

.PHONY: clean

clean:
	rm check/check_numbers **/*.class sort/sort_numbers **/*.cmo **/*.cmi generate/NumberGenerator.class
