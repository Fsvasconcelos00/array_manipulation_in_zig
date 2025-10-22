const std = @import("std");
const sort = @import("./sort_types.zig");

pub fn main() !void {
    const alloc = std.heap.page_allocator;

    var array_size: usize = 4;
    var array: []i32 = try alloc.alloc(i32, array_size);

    array[0] = 1;
    array[1] = 2;
    array[2] = 3;
    array[3] = 4;

    try sort.bubble_sort(array, array_size);

    array_size = 31;
    try sort.selection_sort(array, array_size);
}
