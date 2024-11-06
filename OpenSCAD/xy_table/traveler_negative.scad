include <shared_variables.scad>

traveler_negative();

module traveler_negative() {
    union() {
        cylinder(d = traveler_ring_d, h = traveler_ring_th);
        cylinder(d = traveler_nut_d, h = traveler_nut_length);
        translate([traveler_screw_r, 0, 0]) cylinder(d = m3_hole_d, h = 10.5);
        translate([0, traveler_screw_r, 0]) cylinder(d = m3_hole_d, h = 10.5);
        translate([-traveler_screw_r, 0, 0]) cylinder(d = m3_hole_d, h = 10.5);
        translate([0, -traveler_screw_r, 0]) cylinder(d = m3_hole_d, h = 10.5);
        translate([traveler_screw_r, 0, 10.5]) cylinder(d = 8, h = 6);
        translate([0, traveler_screw_r, 10.5]) cylinder(d = 8, h = 6);
        translate([-traveler_screw_r, 0, 10.5]) cylinder(d = 8, h = 6);
        translate([0, -traveler_screw_r, 10.5]) cylinder(d = 8, h = 6);
    }
}