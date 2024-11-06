inner_width = 42;
inner_depth = 15;
wall = 2;
height = 2;

$fn = 30;

difference() {
    cube([inner_width + 2 * wall, inner_depth + 2 * wall, height + wall]);
    translate([wall, wall, height]) cube([inner_width, inner_depth, wall]);
    translate([wall + 5, wall + inner_depth/2, 0]) cylinder(d = 5, h = height);
    translate([wall + inner_width - 5, wall + inner_depth/2, 0]) cylinder(d = 5, h = height);
}
