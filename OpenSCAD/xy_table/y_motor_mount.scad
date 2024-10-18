use <nema_17_negative.scad>
use <sled_negative.scad>
include <shared_variables.scad>

bottom_y = 40;

$fn = 30;

difference() {
    mount_length = wall_th + motor_backset;
    // base shape
    cube([motor_mount_width, mount_length, motor_mount_height]);
    // motor mount
    translate([motor_width / 2, 0, axle_height]) nema_17_negative(); 
    // roundbar mount
    translate([motor_width / 2 + y_axle_distance, 0, axle_height]) rotate([270, 0, 0]) cylinder(d = roundbar_diameter, h = 33);
    
    // roundbar fastener cutout 
    translate([motor_mount_width - axle_holder_width, mount_length - axle_set_depth, axle_height]) {
        cube([axle_holder_width, axle_set_depth, motor_mount_height - axle_height]);
        translate([axle_mount_hole_center, axle_set_depth / 2, -10]) cylinder(d = m3_hole_d, h = 10);
        translate([axle_holder_width - axle_mount_hole_center, axle_set_depth / 2, -10]) cylinder(d = m3_hole_d, h = 10);
    }
    translate([motor_width / 2, mount_length / 2, 0]) {
        // sled_fasteners
        sled_negative();
        // locknut access
        cylinder(d = 20, h = 45);
    }
}