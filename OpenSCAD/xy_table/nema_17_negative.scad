include <shared_variables.scad>

nema_17_negative();

module nema_17_negative() {
    rotate([270,0,0]) {
        translate([0, 0, 0]) cylinder(d = 25, h = 40);

        translate([-15.5, -15.5, 6.8]) cylinder(d = 6, h = 33, $fn=15);
        translate([15.5, -15.5, 6.8]) cylinder(d = 6, h = 33, $fn=15);
        translate([15.5, 15.5, 6.8]) cylinder(d = 6, h = 33, $fn=15);
        translate([-15.5, 15.5, 6.8]) cylinder(d = 6, h = 33, $fn=15);

        translate([-15.5, -15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
        translate([15.5, -15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
        translate([15.5, 15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
        translate([-15.5, 15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
    }
}