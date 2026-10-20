CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17
LDFLAGS = -L/usr/local/lib -lgtest -lgtest_main -pthread

# Target to build the test executable
all: stringtest

stringtest: tests.cpp mystring.cpp mystring.h
	$(CXX) $(CXXFLAGS) -o stringtest tests.cpp mystring.cpp $(LDFLAGS)

# Target to run tests
test: stringtest
	 ./stringtest

# Clean target to remove build artifacts
clean:
	rm -f stringtest