/*
* Vulkan Example - Basic indexed triangle rendering
*
* Note:
*	This is a "pedal to the metal" example to show off how to get Vulkan up and displaying something
*	Contrary to the other examples, this one won't make use of helper functions or initializers
*	Except in a few cases (swap chain setup e.g.)
*
* Copyright (C) 2016-2024 by Sascha Willems - www.saschawillems.de
*
* This code is licensed under the MIT license (MIT) (http://opensource.org/licenses/MIT)
*/

#include <libvk/libvk.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <fstream>
#include <vector>
#include <exception>

VulkanExample* vulkanExample;
int showTriangle(int argc, char** argv)
{
	std::cout << "VK_USE_PLATFORM_WAYLAND_KHR" << std::endl;
	for (size_t i = 0; i < argc; i++) { VulkanExample::args.push_back(argv[i]); };

	vulkanExample = new VulkanExample();
	std::cout << "vulkanExample = new VulkanExample();" << std::endl;
	vulkanExample->initVulkan();
	std::cout << "vulkanExample->initVulkan();" << std::endl;
	//vulkanExample->setupWindow();
	//std::cout << "vulkanExample->setupWindow();" << std::endl;

	vulkanExample->prepare();
	std::cout << "vulkanExample->prepare();" << std::endl;

	vulkanExample->renderLoop();
	std::cout << "vulkanExample->renderLoop();" << std::endl;
	delete(vulkanExample);
	std::cout << "delete(vulkanExample);" << std::endl;
	return 0;
}
