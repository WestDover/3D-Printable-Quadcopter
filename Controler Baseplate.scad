// Description: Quadcopter Baseplate for mounting 3DR Pixel Hawk and ORX R165X Reciver.
//              For use with similar plates to create a Quadcopter without arms.
// Authors: Leo Mahdessian
// 
// Licence:
// This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
// To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.


//Sets Resolution
$fn = 30;

//Baseplate and Pixel Hawk holder
module plate(length, width, height) {
	cube([length, width, height]);
	
	difference(){
		difference() {
	
			translate([length/2, width/2, 7.75+1]) {
				cube([81.5+height, 50+height, 15.5], center=true);	
			}

			translate([length/2, width/2, 7.75+1]) {
				cube([81.5, 50, 15.5], center=true);
			}
		}
		
		translate([length/2+41, width/2, 7.75+1]) {
			cube([3, 46, 15.5], center=true);
		}
	}

}

//Orange Reciver Holder
module RCreceiver() {
	difference() {
		difference() {
			rotate(a = 90, v = [0,0,1]) {
				translate([50, -18, 9.75]) {
					cube([46, 25, 13], center = true); 
				}
			}

			rotate(a = 90, v = [0,0,1]) {
				translate([73, -18, 9.75]) {
					cube([3, 18, 13], center = true); 
				}
			}

		}

		rotate(a = 90, v = [0,0,1]) {
			translate([50, -18, 9.75]) {
				cube([43, 22, 13], center = true); 
			}
		}
	}
}

plate(150, 100, 3);
RCreceiver();
