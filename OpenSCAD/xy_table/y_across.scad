include <shared_variables.scad>
use <traveler_negative.scad>

wall = 4;
width = y_axle_distance + 12 + 2 * wall;
length = 365;
th = 7;
tounge = [12.2, 12.2, 5];

$fn = 30;

difference() {
    translate([0, width / 2, th / 2]) {
        union() {
            difference() {
                cube([length, width, th], true);
                translate([-length / 2, -y_axle_distance / 2 - tounge[1] / 2, - th / 2]) {
                    cube(tounge);
                    translate([tounge[0] / 2, tounge[1] / 2, 0]) cylinder(d = m3_hole_d, h = th);
                }
                translate([-length / 2, y_axle_distance / 2 - tounge[1] / 2, - th / 2]) {
                    cube(tounge);
                    translate([tounge[0] / 2, tounge[1] / 2, 0]) cylinder(d = m3_hole_d, h = th);
                }
                translate([length / 2 - tounge[0], -y_axle_distance / 2 - tounge[1] / 2, - th / 2]) {
                    cube(tounge);
                    translate([tounge[0] / 2, tounge[1] / 2, 0]) cylinder(d = m3_hole_d, h = th);
                }
                translate([length / 2 - tounge[0], y_axle_distance / 2 - tounge[1] / 2, - th / 2]) {
                    cube(tounge);
                    translate([tounge[0] / 2, tounge[1] / 2, 0]) cylinder(d = m3_hole_d, h = th);
                }
                hull() {
                    translate([-length / 2 + 45, 0, -th/2]) cylinder(d = width - 14, h = th);
                    translate([- 45, 0, -th/2]) cylinder(d = width - 14, h = th);
                }
                hull() {
                    translate([45, 0, -th/2]) cylinder(d = width - 14, h = th);
                    translate([length / 2 - 45, 0, -th/2]) cylinder(d = width - 14, h = th);
                }
            }
            // traveler mount
            translate([0, - width / 2 + traveler_nut_length / 2, - (th / 2) - (traveler_downset + traveler_ring_d / 2 + 2.5) / 2])
                cube([traveler_ring_d + 5, traveler_nut_length, (traveler_downset + traveler_ring_d / 2 + 2.5)], true);

            // back stiffener
            //difference() {
            //    translate([0, - width / 2 + traveler_nut_length / 2 + 10, - (th / 2) - 10 / 2])
            //        cube([traveler_ring_d + 5, 10, 10], true);
            //    translate([-traveler_ring_d / 2 - 2.5, - width / 2 + traveler_nut_length + 10, -10 - th/2])
            //        rotate([0, 90, 0])
            //            cylinder(d = 20, h = traveler_ring_d + 5);
            //}
        }
    }
    translate([0, 0, -traveler_downset])
    rotate([270, 0, 0])
    traveler_negative();
}