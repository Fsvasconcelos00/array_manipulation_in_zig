const std = @import("std");
const sort = @import("./sort_types.zig");

pub fn main() !void {
    std.debug.print("Hello, World!\n", .{});
    try sort.bubble_sort(12);
    try sort.selection_sort(31);
}
