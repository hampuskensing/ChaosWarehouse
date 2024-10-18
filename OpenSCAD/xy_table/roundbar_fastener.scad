include <shared_variables.scad>

$fn = 30;

difference() {
    cube([axle_holder_width-1, axle_set_depth-1, axle_fastener_height]);
    translate([axle_mount_hole_center, axle_set_depth / 2, 0]) cylinder(d = m3_hole_d, h = axle_fastener_height);
    translate([axle_holder_width - axle_mount_hole_center, axle_set_depth / 2, 0]) cylinder(d = m3_hole_d, h = axle_fastener_height);
    translate([axle_holder_width / 2, 0, -1]) rotate([270, 0, 0]) cylinder(d = roundbar_diameter, h = 33);

}
