inner_width = 55;
inner_depth = 13.2;
wall = 2;
height = 7;

$fn = 30;

difference() {
    cube([inner_width + 2 * wall, inner_depth + 2 * wall, height + wall]);
    translate([wall, wall, height]) cube([inner_width, inner_depth, wall]);
    translate([wall + 6, wall + inner_depth/2, 0]) cylinder(d = 5, h = height);
    translate([wall + inner_width - 6, wall + inner_depth/2, 0]) cylinder(d = 5, h = height);
}
