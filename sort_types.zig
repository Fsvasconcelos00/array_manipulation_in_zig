const std = @import("std");
const typedef = @import("./typedef.zig");

pub fn bubble_sort(my_array: typedef.arrayConfig) !void {
    std.debug.print("Bubble sort called, size: {}\n", .{my_array.array_size});
    for (0..(my_array.array_size - 1)) |i| {
        for (0..(my_array.array_size - i - 1)) |j| {
            if (my_array.array[j] > my_array.array[j + 1]) {
                const aux: i32 = my_array.array[j];
                my_array.array[j] = my_array.array[j + 1];
                my_array.array[j + 1] = aux;
            }
        }
    }
    std.debug.print("{any} \n", .{my_array.array});
}

pub fn selection_sort(my_array: typedef.arrayConfig) !void {
    std.debug.print("Selection sort called, size: {}\n", .{my_array.array_size});
    for (0..my_array.array_size) |i| {
        for (i..my_array.array_size) |j| {
            if (my_array.array[i] > my_array.array[j]) {
                const aux: i32 = my_array.array[i];
                my_array.array[i] = my_array.array[j];
                my_array.array[j] = aux;
            }
        }
    }
    std.debug.print("{any} \n", .{my_array.array});
}
