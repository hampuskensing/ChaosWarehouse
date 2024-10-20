use <nema_17_negative.scad>
use <sled_negative.scad>
include <shared_variables.scad>

bottom_y = 40;

$fn = 30;
mount_length = bearing_mount_width / 2 + y_axle_distance + axle_holder_width / 2;
mirror([1, 0, 0])
union() {
    difference() {
        // base shape
        cube([mount_length, sled_width, axle_height]);
        // bearing mount
        // bearing mount
        translate([bearing_mount_width / 2, sled_width / 2 - bearing_thickness / 2, axle_height])
        rotate([270, 0, 0]) {           
            cylinder(d = bearing_diameter - 4, h = sled_width / 2 + bearing_thickness / 2);
            cylinder(d = bearing_diameter, h = bearing_thickness);
        }
        // roundbar mount
        translate([bearing_mount_width / 2 + y_axle_distance, 0, axle_height])
            rotate([270, 0, 0])
                cylinder(d = roundbar_diameter, h = sled_width);
        translate([bearing_mount_width / 2, sled_width / 2, 0]) {
            // sled_fasteners
            sled_negative();
        }
        // clam downs
        translate([4, 4, axle_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([4, sled_width - 4, axle_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([mount_length - 4, 4, axle_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([mount_length - 4, sled_width - 4, axle_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([bearing_mount_width - 4, 4, axle_height - 12]) cylinder(d = m3_hole_d, h = 12);
        translate([bearing_mount_width - 4, sled_width - 4, axle_height - 12]) cylinder(d = m3_hole_d, h = 12);
    }
    // x traveler mount    
    translate([bearing_mount_width / 2 - 12/2, sled_width, 0]) {
        difference() { 
            cube([12, 12, 5]);
            translate([6, 6, 0]) cylinder(d = m3_hole_d, h = 7);
        }
    }
    translate([bearing_mount_width / 2 + y_axle_distance - 12/2, sled_width, 0]) {
        difference() { 
            cube([12, 12, 5]);
            translate([6, 6, 0]) cylinder(d = m3_hole_d, h = 7);
        }
    }
}