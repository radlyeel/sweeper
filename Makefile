PROG =sweeper 
OBJS = sweeper.o


# Below here, do not change
CXX = g++
CXXFLAGS = -std=c++17 `pkg-config gtkmm-4.0 --cflags`
LDLIBS = `pkg-config gtkmm-4.0 --libs`
# With autotools, use (I think)
# PKG_CHECK_MODULES([MYAPP], [gtkmm-4.0 >= 4.8.0])
# one-liner build:
# g++ -std=c++17 basic.cpp -o simple `pkg-config gtkmm-4.0 --cflags --libs`
$(PROG): $(OBJS)
	$(CXX) $(OBJS) $(LDLIBS) -o $(PROG)

clean:
	rm -rf $(OBJS) $(PROG)

check: $(PROG)
	./$(PROG)
