$fn=50;
include <roundedcube.scad>;

//color("RED")translate([-34,2,27])rotate([0,-25,2])import("parturi3.stl");

module kaikki() {
  difference() {
    translate([0,0,36])
      difference() {
      translate([1,0,0])
	union(){
	translate([-2,0,0])cylinder(d=47,h=70,center=true);
	translate([-13,0,0])roundedcube([29,48+6,70],radius=4,center=true);
      }
      translate([1,0,0])
	union(){
	translate([-2,0,0])cylinder(d=43,h=72,center=true);
	translate([-13,0,0])cube([23,48,72],center=true);
      }
    }
    translate([13,0,-19]) rotate([0,63,0])cube(70,center=true);
    translate([0,0,-7])translate([-37,0,63])rotate([0,90,0]) cylinder(d=17,h=20); 
    translate([-2,20,67]) cube(9);
    translate([-2,-28,67]) cube(9);
  }

  difference(){
    translate([-26,-29,-1])
      rotate([0,-28,0])
      union() {
      for (y = [1:9:60])
	{ translate([0,y,0])
	    cube([60,2,4]);  }
       cube([40,10,3]);
      translate([0,48,0]) cube([40,10,3]);
    }
    difference(){
      cube(100,center=true);
      union(){
	cylinder(d=43,h=70,center=true);
	translate([-13,0,0])cube([28,48,70],center=true);
      }
    }
  }

  translate([-37,0,65])difference() {
    union(){
      translate([0,0,-10])
	roundedcube(23,radius=3,center=true);
      cylinder(d=23,h=40);
    }
    translate([0,0,-19])cylinder(d=17,h=70) ;
    translate([0,0,-9])rotate([0,90,0]) cylinder(d=17,h=20); 
    // translate([0,0,-30])  cube(100);
  }
  translate([2,200/10,16]) rotate([0,-90,0]) hampaat();
  translate([2,-220/10,16]) rotate([0,-90,0]) hampaat();

  translate([-21,0,695/10]) cube([6,48,3],center=true);

 }

module hampaat() for (x = [0:8:50]) { translate([x,0,0]) cube([4,2,2]); }

kaikki();
