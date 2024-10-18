include <shared_variables.scad>

nema_17_negative();

module nema_17_negative() {
    translate([0, wall_th, 0]) {
        rotate([90,0,0]) {
            translate([0, 0, -25]) cylinder(d = 25, h = 33);

            translate([-15.5, -15.5, -30]) cylinder(d = 6, h = 33, $fn=15);
            translate([15.5, -15.5, -30]) cylinder(d = 6, h = 33, $fn=15);
            translate([15.5, 15.5, -30]) cylinder(d = 6, h = 33, $fn=15);
            translate([-15.5, 15.5, -30]) cylinder(d = 6, h = 33, $fn=15);

            translate([-15.5, -15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
            translate([15.5, -15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
            translate([15.5, 15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
            translate([-15.5, 15.5, 0]) cylinder(d = 3.5, h = wall_th, $fn=15);
        }
    }
}