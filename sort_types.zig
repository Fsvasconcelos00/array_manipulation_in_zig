const std = @import("std");

pub fn bubble_sort(array: []i32, array_size: usize) !void {
    std.debug.print("Bubble sort called, size: {}\n", .{array_size});
    for (array) |v| {
        std.debug.print("{} ", .{v});
    }
    std.debug.print("\n", .{});
}

pub fn selection_sort(array: []i32, array_size: usize) !void {
    std.debug.print("Selection sort called, size: {}\n", .{array_size});
    for (array) |v| {
        std.debug.print("{} ", .{v});
    }
    std.debug.print("\n", .{});
}
