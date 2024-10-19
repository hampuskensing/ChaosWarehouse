include <shared_variables.scad>

sled_negative();

module sled_negative() {
    translate([-sled_x_distance / 2, -sled_y_distance/2, 0])
        cylinder(d = sled_screw_hole_diameter, h = bottom_th);
    translate([sled_x_distance / 2, -sled_y_distance/2, 0])
        cylinder(d = sled_screw_hole_diameter, h = bottom_th);
    translate([-sled_x_distance / 2, sled_y_distance/2, 0])
        cylinder(d = sled_screw_hole_diameter, h = bottom_th);
    translate([sled_x_distance / 2, sled_y_distance/2, 0])
        cylinder(d = sled_screw_hole_diameter, h = bottom_th);

    translate([-sled_x_distance / 2, -sled_y_distance/2, 4])
        cylinder(d = sled_screw_head_diameter, h = motor_mount_height / 2 - 4);
    translate([sled_x_distance / 2, -sled_y_distance/2, 4])
        cylinder(d = sled_screw_head_diameter, h = motor_mount_height / 2 - 4);
    translate([-sled_x_distance / 2, sled_y_distance/2, 4])
        cylinder(d = sled_screw_head_diameter, h = motor_mount_height / 2 - 4);
    translate([sled_x_distance / 2, sled_y_distance/2, 4])
        cylinder(d = sled_screw_head_diameter, h = motor_mount_height / 2 - 4);
}
