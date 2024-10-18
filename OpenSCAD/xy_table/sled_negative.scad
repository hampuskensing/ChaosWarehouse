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

    translate([-sled_x_distance / 2, -sled_y_distance/2, bottom_th - sled_screw_head_th])
        cylinder(d = sled_screw_head_diameter, h = sled_screw_head_th+45);
    translate([sled_x_distance / 2, -sled_y_distance/2, bottom_th - sled_screw_head_th])
        cylinder(d = sled_screw_head_diameter, h = sled_screw_head_th+45);
    translate([-sled_x_distance / 2, sled_y_distance/2, bottom_th - sled_screw_head_th])
        cylinder(d = sled_screw_head_diameter, h = sled_screw_head_th+45);
    translate([sled_x_distance / 2, sled_y_distance/2, bottom_th - sled_screw_head_th])
        cylinder(d = sled_screw_head_diameter, h = sled_screw_head_th+45);
}
