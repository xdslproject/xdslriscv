from xdslriscv.dialects.riscv import *
import sys


def print_op(op, stream=sys.stdout):
    attr = op.attributes

    if isinstance(op, LabelOp):
        print("%s:" % (attr['label'].data), file=stream)
        return

    if isinstance(op, DirectiveOp):
        print(".%s %s" % (attr['directive'].data, attr['value'].data),
              file=stream)
        return

    name = op.name[6:]

    print(f"\t{name}", end='', file=stream)

    if isinstance(op, RiscvNoParamsOperation):
        print("", file=stream)
        return

    if isinstance(op, Riscv1Rd1ImmOperation):
        print(" %s, %s" %
              (attr['rd'].data.get_abi_name(), attr['immediate'].value.data),
              file=stream)
        return

    if isinstance(op, Riscv1Rd1OffOperation):
        if isinstance(attr['offset'], IntegerAttr):
            offset = attr['offset'].parameters[0].data
        else:
            offset = attr['offset'].data
        print(" %s, %s" % (attr['rd'].data.get_abi_name(), offset),
              file=stream)
        return

    if isinstance(op, Riscv1Rd1RsOperation):
        print(" %s, %s" %
              (attr['rd'].data.get_abi_name(), attr['rs'].data.get_abi_name()),
              file=stream)
        return

    if isinstance(op, Riscv1Rs1OffOperation):
        if isinstance(attr['offset'], IntegerAttr):
            offset = attr['offset'].parameters[0].data
        else:
            offset = attr['offset'].data
        print(" %s, %s" % (attr['rs'].data.get_abi_name(), offset),
              file=stream)
        return

    if isinstance(op, Riscv1Rd2RsOperation):
        print(" %s, %s, %s" %
              (attr['rd'].data.get_abi_name(), attr['rs1'].data.get_abi_name(),
               attr['rs2'].data.get_abi_name()),
              file=stream)
        return

    if isinstance(op, Riscv1Rd1Rs1ImmOperation):
        print(" %s, %s, %s" %
              (attr['rd'].data.get_abi_name(), attr['rs1'].data.get_abi_name(),
               attr['immediate'].value.data),
              file=stream)
        return

    if isinstance(op, Riscv1Rd1RsOperation):
        print(
            " %s, %s" %
            (attr['rd'].data.get_abi_name(), attr['rs1'].data.get_abi_name()),
            end='',
            file=stream)

        immediate = attr['immediate'].value.data
        print(", %s" % (immediate), file=stream)
        return

    if isinstance(op, Riscv2Rs1ImmOperation):
        print(
            " %s, %s" %
            (attr['rs1'].data.get_abi_name(), attr['rs2'].data.get_abi_name()),
            end='',
            file=stream)

        immediate = attr['immediate'].value.data
        print(", %s" % (immediate), file=stream)
        return

    if isinstance(op, Riscv2Rs1OffOperation):
        if isinstance(attr['offset'], IntegerAttr):
            offset = attr['offset'].parameters[0].data
        else:
            offset = attr['offset'].data

        print(" %s, %s, %s" % (attr['rs1'].data.get_abi_name(),
                               attr['rs2'].data.get_abi_name(), offset),
              file=stream)
        return

    if isinstance(op, Riscv1Rs1Rt1OffOperation):
        if isinstance(attr['offset'], IntegerAttr):
            offset = attr['offset'].parameters[0].data
        else:
            offset = attr['offset'].data

        print(" %s, %s, %s" % (attr['rs'].data.get_abi_name(),
                               attr['rt'].data.get_abi_name(), offset),
              file=stream)
        return

    if isinstance(op, Riscv1Rd1Rs1OffOperation):
        if isinstance(attr['offset'], IntegerAttr):
            offset = attr['offset'].parameters[0].data
        else:
            offset = attr['offset'].data

        print(" %s, %s, %s" % (attr['rd'].data.get_abi_name(),
                               attr['rs1'].data.get_abi_name(), offset),
              file=stream)
        return

    raise Exception(f"Trying to print unknown operation {op}")


def print_program(program, fmt, stream=sys.stdout):
    operations = program.regions[0].blocks[0].ops
    for op in operations:
        print_op(op, stream=stream)
