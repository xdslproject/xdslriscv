#!/usr/bin/env python3

import argparse
from enum import Enum
from dataclasses import dataclass

from typing import Any


class TokenClass(Enum):
    PLUS = 0
    MINUS = 1
    LPAREN = 2
    RPAREN = 3
    DOT = 4
    COMMA = 5
    COLON = 6
    NEWLINE = 7
    LITERAL = 8
    SYMBOL = 9
    INTEGER = 10


@dataclass
class Token:
    type: TokenClass
    value: Any = None

    def __repr__(self):
        return self.type.name + ((":" + str(self.value)) if self.value else "")


class Scanner:

    def __init__(self, stream):
        self.stream = stream
        self.buffer = None

    def peek(self):
        if not self.buffer:
            self.buffer = self.next()

        return self.buffer

    def next(self):
        if self.buffer:
            c = self.buffer
            self.buffer = None
            return c
        c = self.stream.read(1)
        if c == "":
            return None
        return c


class Tokenizer:

    def __init__(self, scanner):
        self.scanner = scanner
        self.buffer = None

    def peek(self):
        if not self.buffer:
            self.buffer = self.next()

        return self.buffer

    def next(self):
        if self.buffer:
            c = self.buffer
            self.buffer = None
            return c

        c = self.scanner.next()

        if not c:
            return None
        elif c == '+':
            return Token(TokenClass.PLUS)
        elif c == '-':
            return Token(TokenClass.MINUS)
        elif c == '(':
            return Token(TokenClass.LPAREN)
        elif c == ')':
            return Token(TokenClass.RPAREN)
        elif c == '.':
            return Token(TokenClass.DOT)
        elif c == ',':
            return Token(TokenClass.COMMA)
        elif c == ':':
            return Token(TokenClass.COLON)
        elif c == '\n':
            return Token(TokenClass.NEWLINE)
        elif c == '#':
            while c != '\n' and c != '\r' and c is not None:
                c = self.scanner.next()
            return self.next()
        elif c == ' ' or c == '\t':
            return self.next()
        elif c == '"':
            literal = c
            # TODO: Add support for escaped \"
            c = self.scanner.next()
            while c != '"':
                literal += c
                c = self.scanner.next()
                if c is None:
                    raise Exception("Missing closing '\"'.")
            literal += c
            return Token(TokenClass.LITERAL, literal)
        elif c.isnumeric():
            value = c
            c = self.scanner.peek()
            while c is not None and c.isnumeric():
                value += self.scanner.next()
                c = self.scanner.peek()
            return Token(TokenClass.INTEGER, value)
        elif c.isalpha():
            name = c
            c = self.scanner.peek()
            while c is not None and (c.isalpha() or c.isnumeric() or c == '_'):
                name += self.scanner.next()
                c = self.scanner.peek()
            return Token(TokenClass.SYMBOL, name)
        else:
            raise Exception("Invalid character detected: '" + c + "'")


class Lexer:

    def __init__(self, stream):
        scanner = Scanner(stream)
        self.tokenizer = Tokenizer(scanner)

    def peek(self):
        return self.tokenizer.peek()

    def next(self):
        return self.tokenizer.next()
