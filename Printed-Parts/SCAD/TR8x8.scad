module TR8x8() {
    difference() {
        union() {
            // Nut head
            cylinder(h = 4, d = 22, $fn = 64);
            // Nut neck
            cylinder(h = 15, d = 10.3, $fn = 32);
        }

        // M3 screw holes
        translate([8, 0, -1]) cylinder(h = 6, d = 3, $fn = 16);
        translate([-8, 0, -1]) cylinder(h = 6, d = 3, $fn = 16);
        translate([0, 8, -1]) cylinder(h = 6, d = 3, $fn = 16);
        translate([0, -8, -1]) cylinder(h = 6, d = 3, $fn = 16);

        // M8 hole
        translate([0, 0, -1]) cylinder(h = 34, d = 8, $fn = 16);

        // Coupler hole
        translate([-3.6/2, -22/2, 15 - 3.8]) cube([3.6, 22, 4]);
    }

    translate([0, 0, 15 + 12]) 
    rotate([180, 0, 0])
    difference() {
        union() {
            // Nut head
            cylinder(h = 4, d = 14, $fn = 64);
            // Nut neck
            cylinder(h = 10.7, d = 10.3, $fn = 32);

            intersection() {
                // Nut neck
                cylinder(h = 20, d = 10.3, $fn = 32);
                // Coupler
                translate([-(3.6 - 0.2) / 2, -22/2, 10.7]) cube([3.6 - 0.2, 22, 3.8 - 0.2]);
            }
        }

        // M8 hole
        translate([0, 0, -1]) cylinder(h = 34, d = 8, $fn = 16);
    }
}

TR8x8();