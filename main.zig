const std = @import("std");
const sort = @import("./sort_types.zig");
const typedef = @import("./typedef.zig");

pub fn main() !void {
    const alloc = std.heap.page_allocator;
    var args = std.process.args();
    var sort_type: u8 = 0;

    var my_array: typedef.arrayConfig = typedef.arrayConfig{ .array = &[_]i32{}, .array_size = 0 };

    // Skip program path (args[0])
    _ = args.next();

    while (args.next()) |arg| {
        if (std.mem.eql(u8, arg, "--bubble_sort")) {
            sort_type = 1;
        } else if (std.mem.eql(u8, arg, "--selection_sort")) {
            sort_type = 2;
        } else {
            std.debug.print("Unknown sort type\n", .{});
        }
        break;
    }

    my_array.array = try alloc.alloc(i32, 5);
    while (args.next()) |arg| {
        my_array.array[my_array.array_size] = try std.fmt.parseInt(i32, arg, 10);
        my_array.array_size += 1;
    }

    switch (sort_type) {
        1 => try sort.bubble_sort(my_array),
        2 => try sort.selection_sort(my_array),
        else => std.debug.print("Unknown sort type\n", .{}),
    }

    alloc.free(my_array.array);
}
