use <nema_17_negative.scad>
use <sled_negative.scad>
include <shared_variables.scad>

bottom_y = 40;

$fn = 30;
mount_length = bearing_mount_width / 2 + y_axle_distance + axle_holder_width / 2;

top_height = 12;

    difference() {
        // base shape
        cube([mount_length, sled_width, top_height - 1]);
        // bearing mount
        translate([bearing_mount_width / 2, sled_width / 2 - bearing_thickness / 2, top_height])
        rotate([270, 0, 0]) {           
            cylinder(d = bearing_diameter - 4, h = sled_width / 2 + bearing_thickness / 2);
            cylinder(d = bearing_diameter, h = bearing_thickness);
        }
        // roundbar mount
        translate([bearing_mount_width / 2 + y_axle_distance, 0, top_height])
            rotate([270, 0, 0])
                cylinder(d = roundbar_diameter, h = sled_width);
        // clam downs
        translate([4, 4, top_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([4, sled_width - 4, top_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([mount_length - 4, 4, top_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([mount_length - 4, sled_width - 4, top_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([bearing_mount_width - 4, 4, top_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([bearing_mount_width - 4, sled_width - 4, top_height - 12]) cylinder(d = m3_hole_d, h = 12);
    }