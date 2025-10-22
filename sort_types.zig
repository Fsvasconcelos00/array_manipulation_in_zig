const std = @import("std");

pub fn bubble_sort(array_size: u32) !void {
    std.debug.print("Bubble sort called, size: {}\n", .{array_size});
}

pub fn selection_sort(array_size: u32) !void {
    std.debug.print("Selection sort called, size: {}\n", .{array_size});
}
