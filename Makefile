# $SUBMAKE is imported relative path to this Makefile
RELPATH := $(dir $(SUBMAKE))

_THIS_SRCDIR := $(addprefix $(RELPATH), src)
_THIS_SRCADD := $(shell find $(RELPATH) -name [^.]*.[cs])
_THIS_SRCADD += $(shell find $(THIS_SRCDIR) -name [^.]*.c)
SRCDIR += $(RELPATH)
SRCDIR += $(THIS_SRCDIR)
SRC_C += $(THIS_SRCADD)

INCDIR := $(RELPATH)
INCDIR += $(addprefix $(RELPATH), inc)
INCDIR += $(addprefix $(RELPATH), core/inc)

INCFLAGS += $(addprefix -I, $(INCDIR))