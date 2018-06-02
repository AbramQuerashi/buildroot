CXXFLAGS_EXTRA = $(shell $(PKG_CONFIG) --cflags eigen3)
#CXXFLAGS_EXTRA = -I$(STAGING_DIR)/usr/include/eigen3
LIBS = $(shell $(PKG_CONFIG) --libs eigen3)

.PHONY: clean

hello: hello.cpp
	$(CXX) $(CXXFLAGS) $(CXXFLAGS_EXTRA) -o '$@' '$<' $(LIBS)

clean:
	rm hello
