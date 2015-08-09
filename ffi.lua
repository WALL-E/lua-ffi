
local ffi = require("ffi")
local foo = ffi.load("foo.dylib")

ffi.cdef[[
void foo_a(int len);
void foo_b(char *buf);
void foo_c(int *len, char *buf);
]]

local length = ffi.new("int", 200)

str = "haha, this is a 12345"
local buf = ffi.new('unsigned char[?]', string.len(str), str)
local len = ffi.new("int[1]", string.len(str))


foo.foo_a(length)
foo.foo_b(buf)

foo.foo_c(len, buf)

print(tonumber(len[0]))
print(ffi.string(buf))
