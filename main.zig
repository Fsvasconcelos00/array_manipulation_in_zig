const std = @import("std");
const sort = @import("./sort_types.zig");
const typedef = @import("./typedef.zig");

pub fn main() !void {
    const alloc = std.heap.page_allocator;

    var my_array: typedef.arrayConfig = typedef.arrayConfig{ .array = &[_]i32{}, .array_size = 0 };

    my_array.array_size = 6;
    my_array.array = try alloc.alloc(i32, my_array.array_size);

    my_array.array[0] = 4;
    my_array.array[1] = 3;
    my_array.array[2] = 2;
    my_array.array[3] = 1;
    my_array.array[4] = 5;
    my_array.array[5] = 15;

    try sort.bubble_sort(my_array);

    try sort.selection_sort(my_array);
}
