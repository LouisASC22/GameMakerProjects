var _x = room_width + 48;

var _y = irandom_range(minimum_pipe_distance, room_height - minimum_pipe_distance);

// first pipe
var instance_pipe = instance_create_depth(_x, _y, depth, obj_pipe);

// second pipe
instance_pipe = instance_create_depth(_x, _y - minimum_pipe_distance, depth, obj_pipe);
instance_pipe.image_angle += 180;

// spawn new pipe
alarm_set(0, get_seconds(3));
