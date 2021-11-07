# $SUBMAKE is imported relative path to this Makefile
RELPATH := $(dir $(SUBMAKE))

THIS_SRCDIR := $(addprefix $(RELPATH), src)
THIS_SRCADD := $(shell find $(THIS_SRCDIR) -name [^.]*.c)
SRCDIR += $(RELPATH)
SRCDIR += $(THIS_SRCDIR)
SRC += $(THIS_SRCADD)

INCDIR := $(RELPATH)
INCDIR += $(addprefix $(RELPATH), inc)
INCDIR += $(addprefix $(RELPATH), core/inc)

INCFLAGS += $(addprefix -I, $(INCDIR))