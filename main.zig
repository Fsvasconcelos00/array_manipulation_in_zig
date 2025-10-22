const std = @import("std");
const sort = @import("./sort_types.zig");

pub fn main() !void {
    var array: i32 = 1;
    var array_size: usize = 12;

    try sort.bubble_sort(array, array_size);

    array = 2;
    array_size = 31;
    try sort.selection_sort(array, array_size);
}
