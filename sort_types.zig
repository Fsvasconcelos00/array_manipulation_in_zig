const std = @import("std");

pub fn bubble_sort(array: i32, array_size: usize) !void {
    std.debug.print("Bubble sort called, size: {} - {}\n", .{ array, array_size });
}

pub fn selection_sort(array: i32, array_size: usize) !void {
    std.debug.print("Selection sort called, size: {} - {}\n", .{ array, array_size });
}
