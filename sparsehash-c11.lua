-- scaffold geniefile for sparsehash-c11

sparsehash-c11_script = path.getabsolute(path.getdirectory(_SCRIPT))
sparsehash-c11_root = path.join(sparsehash-c11_script, "sparsehash-c11")

sparsehash-c11_includedirs = {
	path.join(sparsehash-c11_script, "config"),
	sparsehash-c11_root,
}

sparsehash-c11_libdirs = {}
sparsehash-c11_links = {}
sparsehash-c11_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { sparsehash-c11_includedirs }
	end,

	_add_defines = function()
		defines { sparsehash-c11_defines }
	end,

	_add_libdirs = function()
		libdirs { sparsehash-c11_libdirs }
	end,

	_add_external_links = function()
		links { sparsehash-c11_links }
	end,

	_add_self_links = function()
		links { "sparsehash-c11" }
	end,

	_create_projects = function()

project "sparsehash-c11"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		sparsehash-c11_includedirs,
	}

	defines {}

	files {
		path.join(sparsehash-c11_script, "config", "**.h"),
		path.join(sparsehash-c11_root, "**.h"),
		path.join(sparsehash-c11_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
