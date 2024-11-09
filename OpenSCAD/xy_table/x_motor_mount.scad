use <nema_17_negative.scad>
use <sled_negative.scad>
include <shared_variables.scad>

bottom_y = 40;

$fn = 30;
mount_length = wall_th + motor_backset;

union() {
    difference() {
        // base shape
        cube([x_motor_mount_width, mount_length, x_motor_mount_height]);
        // motor mount
        translate([motor_width / 2, 0, x_axle_height]) nema_17_negative(); 
        translate([motor_width / 2, mount_length / 2, 0]) {
            // sled_fasteners
            sled_negative();
            // locknut access
            hull() {   
                    translate([-sled_x_distance / 2, -sled_y_distance/2, x_motor_mount_height / 2])
                        cylinder(d = sled_screw_hole_diameter, h = bottom_th-4+45);
                    translate([sled_x_distance / 2, -sled_y_distance/2, x_motor_mount_height / 2])
                        cylinder(d = sled_screw_hole_diameter, h = bottom_th-4+45);
                    translate([-sled_x_distance / 2, sled_y_distance/2, x_motor_mount_height / 2])
                        cylinder(d = sled_screw_hole_diameter, h = bottom_th-4+45);
                    translate([sled_x_distance / 2, sled_y_distance/2, x_motor_mount_height / 2])
                        cylinder(d = sled_screw_hole_diameter, h = bottom_th-4+45);
            }
        }
    }
}