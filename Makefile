VULKAN_SDK_PATH = /home/lujobi/Documents/coding/sdk/1.1.92.1/x86_64

CFLAGS = -std=c++17 -I $(VULKAN_SDK_PATH)/include
LDFLAGS = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan

triangle: main.cpp
	g++ $(CFLAGS) -o triangle main.cpp $(LDFLAGS)

.PHONY: test clean

test: triangle
	LD_LIBRARY_PATH=$(VULKAN_SDK_PATH)/lib VK_LAYER_PATH=$(VULKAN_SDK_PATH)/etc/explicit_layer.d ./triangle

clean:
	rm -f triangle
