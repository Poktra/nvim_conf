�eg�H��generator�nvim�version�NVIM v0.9.4�max_kbyte
�pid�:��encoding�utf-8�eg�I��f�AC:\Users\Poktra\AppData\Local\nvim\lua\custom\configs\null-ls.lua�n0�eeT3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�n1�ec�/3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�n2�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�n3�ecɘ6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�n4�ec·B��f�:C:\Users\Poktra\AppData\Local\nvim\lua\custom\mappings.lua�n5�ec?��f�7C:\Users\Poktra\Documents\cpp\test\build\CMakeCache.txt�n6�ec�t6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�n7�ec�t6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l	�n8�ec�t6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�n9�eg������rc� �@local augroup = vim.api.nvim_create_augroup("LspFormatting", {})�"local null_ls = require("null-ls")� �local opts = {�  sources = {�-    null_ls.builtins.formatting.clang_format,�  },�&  on_attach = function (client, bufnr)�=    if client.supports_method("textDocument/formatting") then�#      vim.api.nvim_clear_autocmds({�        group = augroup,�        buffer = bufnr,�      })�2      vim.api.nvim_create_autocmd("BufWritePre", {�        group = augroup,�        buffer = bufnr,�        callback = function ()�-          vim.lsp.buf.format({bufnr = bufnr})�        end,�      })�    end�  end�}�return opts�n0�rt�ru��ec��.��rc��     std::cout << i << std::endl;�n1�rt�ec��.��rc��   for (auto i = 0; i < 2; i++) {�n2�rt�ec��9��rc��+  std::cout << "Hello world!" << std::endl;�n3�rt�ecǈ!��rc��#include <iostream>�n4�rt�ec�.!��rc��#include <iostream>�n5�rt�ec�4��rc��  },�n6�rt�ec�3%��rc��    event = "VeryLazy",�n7�rt�ec�3.��rc��     "Civitasv/cmake-tools.nvim",�n8�rt�ec�2��rc��  {�n9�rt�ec�y��rc���na�ec����rc��)�n-�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l	�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��5��f�-C:\Users\Poktra\Documents\cpp\test\NvimTree_1�c�ec�/>��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�ec�oD��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�c�ec��0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c!�ec��0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec�5��f�-C:\Users\Poktra\Documents\cpp\test\NvimTree_1�l�ec�A0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec�D��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l#�c�ec�L6��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�ec�V3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l	�ec�Y0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l	�ec�
0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec�t3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l	�ec0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec<��f�7C:\Users\Poktra\Documents\cpp\test\build\CMakeCache.txt�ec·?��f�:C:\Users\Poktra\AppData\Local\nvim\lua\custom\mappings.lua�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec�R<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ecǖ3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�c�ec�)6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec�6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ecȀ<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ecȁ8��f�-C:\Users\Poktra\Documents\cpp\test\src\test.h�l�c�ecȇ:��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�l�c�ecɘ3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec��0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�eg�rA��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�c�eg��?��f�:C:\Users\Poktra\AppData\Local\nvim\lua\custom\mappings.lua�eg��=��f�8C:\Users\Poktra\AppData\Local\nvim\lua\custom\chadrc.lua�eg��H��f�CC:\Users\Poktra\AppData\Local\nvim\lua\custom\configs\lspconfig.lua�eg�F��f�AC:\Users\Poktra\AppData\Local\nvim\lua\custom\configs\null-ls.lua�ec����sp�cout�sc��ec����sp�cout�su¢scâss��ec���� 
�eg�5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�l
�eg��5��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�n.�ec�92��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1�eg��2��f�-C:\Users\Poktra\AppData\Local\nvim\NvimTree_1
�eg�F��f�AC:\Users\Poktra\AppData\Local\nvim\lua\custom\configs\null-ls.lua
�eg��H��f�CC:\Users\Poktra\AppData\Local\nvim\lua\custom\configs\lspconfig.lua
�eg��=��f�8C:\Users\Poktra\AppData\Local\nvim\lua\custom\chadrc.lua
�eg��?��f�:C:\Users\Poktra\AppData\Local\nvim\lua\custom\mappings.lua
�eg�rA��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�c
�ec�4D��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�n.�ec�PD��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�c�ec�QA��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�ec�RD��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�c�ec�ZD��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�c�ec�_A��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�ec��D��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�c �ec��D��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%�c�ec�4A��f�9C:\Users\Poktra\AppData\Local\nvim\lua\custom\plugins.lua�l%
�eeT0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp
�ec�]9��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�n^
�ec�\9��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�n.�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c*�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�c�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c!�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec�-3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec�y3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec�A0��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec��3��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�ec��6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c�ec�\6��f�+C:\Users\Poktra\Documents\cpp\test\main.cpp�l�c
�ecȇ:��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�l�c
�ec�-=��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�l�c�n^
�ec�M:��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�l�n.�ec��7��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�c�ec��:��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�l�c�ec�M7��f�/C:\Users\Poktra\Documents\cpp\test\src\test.cpp�l
�ecȁ8��f�-C:\Users\Poktra\Documents\cpp\test\src\test.h�l�c
�ec��;��f�-C:\Users\Poktra\Documents\cpp\test\src\test.h�l�c�n^
�ec��;��f�-C:\Users\Poktra\Documents\cpp\test\src\test.h�l�c�n.�ecƭ5��f�-C:\Users\Poktra\Documents\cpp\test\src\test.h�c�ec��8��f�-C:\Users\Poktra\Documents\cpp\test\src\test.h�l�c
�ecȀ<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c
�ecǑ?��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�n^
�ecǐ?��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�n.�ec�09��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�c'�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�P<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l
�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l
�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l
�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l
�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l
�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l
�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�d<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��9��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec� <��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec��9��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�c!�ec�\<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c�ec�_9��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�ec�z<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c	�ecǈ9��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�ecǐ<��f�1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�l�c
�ec��5��f�*term://~\Documents\cpp\test//10896:cmd.exe�l!�c(
�ec��5��f�*term://~\Documents\cpp\test//10896:cmd.exe�l!�n.�ec��2��f�*term://~\Documents\cpp\test//10896:cmd.exe�l!
�ec<��f�7C:\Users\Poktra\Documents\cpp\test\build\CMakeCache.txt
�ecB��f�7C:\Users\Poktra\Documents\cpp\test\build\CMakeCache.txt�c�n^
�ec��2��f�-C:\Users\Poktra\Documents\cpp\test\[dap-repl]
�ec��2��f�-C:\Users\Poktra\Documents\cpp\test\DAP Scopes
�ec��5��f�-C:\Users\Poktra\Documents\cpp\test\DAP Scopes�n.�ec�=2��f�-C:\Users\Poktra\Documents\cpp\test\DAP Scopes
�ec��3��f�.C:\Users\Poktra\Documents\cpp\test\DAP Watches
�ec��6��f�.C:\Users\Poktra\Documents\cpp\test\DAP Watches�n.�ec�=3��f�.C:\Users\Poktra\Documents\cpp\test\DAP Watches
�ec��C��f�>C:\Users\Poktra\Documents\cpp\test\[dap-terminal] LLDB: Launch
�ec��I��f�>C:\Users\Poktra\Documents\cpp\test\[dap-terminal] LLDB: Launch�l%�n.�ec�=F��f�>C:\Users\Poktra\Documents\cpp\test\[dap-terminal] LLDB: Launch�l%
�ec��2��f�-C:\Users\Poktra\Documents\cpp\test\DAP Stacks
�ec��5��f�-C:\Users\Poktra\Documents\cpp\test\DAP Stacks�n.�ec�=2��f�-C:\Users\Poktra\Documents\cpp\test\DAP Stacks
�ec��7��f�2C:\Users\Poktra\Documents\cpp\test\DAP Breakpoints
�ec��:��f�2C:\Users\Poktra\Documents\cpp\test\DAP Breakpoints�n.�ec�=7��f�2C:\Users\Poktra\Documents\cpp\test\DAP Breakpoints
 1��f�,C:\Users\Poktra\Documents\cpp\test\DAP Hover
�ec�l4��f�,C:\Users\Poktra\Documents\cpp\test\DAP Hover�n.�ec�1��f�,C:\Users\Poktra\Documents\cpp\test\DAP Hover
�ec�5��f�-C:\Users\Poktra\Documents\cpp\test\NvimTree_1�l
�ec��5��f�-C:\Users\Poktra\Documents\cpp\test\NvimTree_1�n.�ec�N2��f�-C:\Users\Poktra\Documents\cpp\test\NvimTree_1
�ec��3��f�)term://~\Documents\cpp\test//4672:cmd.exe�l��
�ec��6��f�)term://~\Documents\cpp\test//4672:cmd.exe�l�ġn.�ec��3��f�)term://~\Documents\cpp\test//4672:cmd.exe�l��
 3��f�.C:\Users\Poktra\Documents\cpp\test\DAP Console
 <��f�7c:\Users\Poktra\AppData\Local\nvim\lua\plugins\init.lua
 I��f�Dc:\Users\Poktra\AppData\Local\nvim\lua\plugins\configs\lspconfig.lua�ec�� �s�ec�G� �MasonInstallALl�ec��� �MasonInstallAll�ec�W� �TSInstall cpp�ec�� �TSInstall cmake�ec��� �wq�ec��� �w!�ec�	� �CmakeGenerate�ec�;� �CMakeRun�ec��� �CMakeGenerate�ec��� �PlugInstall�ec��
� �s/cout�ec�H� �W�ec�� �wa�ec�_� �w�ec�/� �qa�eeT� �q�ec��	��cout �ec���N�ec�w/��+C:\Users\Poktra\Documents\cpp\test\main.cpp�ec��-��)C:\Users\Poktra\Documents\cpp\test\build\�ec��5��1C:\Users\Poktra\Documents\cpp\test\CMakeLists.txt�ec�l6��2C:\Users\Poktra\Documents\cpp\test\build\MyExe.exe�ec�27��3C:\Users\Poktra\Documents\cpp\test\build\src\test.h�ec�@��y�ec�M1��-C:\Users\Poktra\Documents\cpp\test\src\test.h�ec��3��/C:\Users\Poktra\Documents\cpp\test\src\test.cpp