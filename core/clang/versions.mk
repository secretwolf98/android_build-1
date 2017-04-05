## Clang/LLVM release versions.

LLVM_RELEASE_VERSION ?= 3.8
LLVM_PREBUILTS_VERSION ?= clang-2690385
LLVM_PREBUILTS_BASE ?= prebuilts/clang/host

pathver = $(if $(strip $(wildcard $(1)/$(BUILD_OS)-x86/$(2))),$(2),$(3))

LLVM_RELEASE_VERSION := $(call pathver,\
  $(LLVM_PREBUILTS_BASE),$(LLVM_RELEASE_VERSION),rt)

LLVM_PREBUILTS_VERSION := $(call pathver,\
  $(LLVM_PREBUILTS_BASE),$(LLVM_PREBUILTS_VERSION),cc)
