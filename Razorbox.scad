module container(height = 22) {
    
    length = 43;
    width = 22;
    
    difference() {
        // box with a thickness of ca. 1mm around all edges
        cube([length + 2, width + 2, height], center = true);
        cube([length + 0.1, width + 0.1, height - 2], center = true);
        
        // slit
        translate([length/2, 0, height/2 - 2])
        cube([length, width, 0.5], center = true);
    }
    
    // warning text
    color("black")
    translate([0, 0, height/2]) {
        linear_extrude(1) {
            translate([-20, -9, 0])
            resize([20, 18])
            import("ISO_7010_W001.svg");
            
            text("ACHTUNG", size=3);
            translate([0, -4, 0])
            text("SCHARF", size=3);
        }
    }
}

container();