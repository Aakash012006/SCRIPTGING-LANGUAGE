# 4. Complete TCL Script – Sphere Volume
========================================================================
  # sphere_volume.tcl
puts "Enter the radius of the sphere:"
gets stdin radius

proc sphereVolume {r} {
    set volume [expr {(4.0/3.0) * 3.14159 * pow($r,3)}]
    return $volume
}

set vol [sphereVolume $radius]
puts "Volume of sphere with radius $radius is $vol"
