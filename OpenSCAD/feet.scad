$fn = 30;

difference() {
    cylinder(h = 11, d1 = 18, d2 = 12);
    cylinder(h = 11, d = 4);
    translate([0, 0, 10]) cylinder(h = 4, d = 7);
    translate([0, 0, 11]) sphere(d = 7);
}