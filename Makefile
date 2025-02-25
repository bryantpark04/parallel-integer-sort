n ?= 100000
path ?= sort/sort_numbers
# usage: make n=[whatever] path=[path to ur sorting]
serial: sort/sort_numbers
	python3 check.py $(n) $(path)


check/check_numbers: check/check_numbers.cpp
	g++ -o check/check_numbers check/check_numbers.cpp

sort/sort_numbers: sort/sort_numbers.cpp
	g++ ./sort/sort_numbers.cpp -o ./sort/sort_numbers -O3 -march=native -std=c++11


.PHONY: clean

clean:
	rm check/check_numbers **/*.class sort/sort_numbers **/*.cmo **/*.cmi generate/NumberGenerator.class
