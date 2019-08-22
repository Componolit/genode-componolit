# genode-componolit

This repository contains the build system integration for [Genode](https://github.com/genodelabs/genode)
to build different projects. It consists solely of make file fragments used for Genode or 
small Genode specific tools. The projects themselves are included via git submodules.

## Usage

 - Clone genode-componolit into Genode: `git clone https://github.com/Componolit/genode-componolit.git genode/repos/componolit`
 - Update submodules: `git submodule update --init --recursive`
 - Enable componolit by adding `REPOSITORIES += REPOSITORIES += $(GENODE_DIR)/repos/componolit` to `etc/build.conf`
