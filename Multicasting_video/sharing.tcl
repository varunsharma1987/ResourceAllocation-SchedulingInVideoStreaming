set sub [open "Distance" w]
close $sub

if {$sy==0} {
puts "\n\n\t\t\tSystem-0 Having the HRD-0\n\t\t\tGoing to Share with the Nodes 6,9,3,18,27,21"
puts "\n\nEnter a Node Except 0,6,9,3,18,27,21 and Which want the data HRD-0 in the network"
set id [gets stdin]
if {$id==0 || $id==6 || $id==9 || $id==3 || $id==18 ||$id==27 || $id==21} {
puts "\nTry to give a Right Input"
source "source1.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set xx1 [expr int([$n($id) set X_])]
set yy1 [expr int([$n($id) set Y_])]
set xx2 [expr int([$n(6) set X_])]
set yy2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d7"
close $sub
#d1 to d7
set comm1 [attach-CBR-traffic $n(0) $sink(6) 128 0.1]
set comm2 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
set comm3 [attach-CBR-traffic $n(6) $sink(3) 128 0.1]
set comm4 [attach-CBR-traffic $n(9) $sink(21) 128 0.1]
set comm5 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
set comm6 [attach-CBR-traffic $n(3) $sink(27) 128 0.1]
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(21) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(27) color yellow"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(21) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(27) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.2 "$comm4 start"
$ns at 96.2 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
} elseif {$sy==1} {
puts "\n\n\t\t\tSystem-1 Having the MRD-1\n\t\t\tGoing to Share with the Nodes 28,19,13,25,16,7,10"
puts "\n\nEnter a Node Except 1,28,19,13,25,16,7,10 and Which want the data MRD-1 in the network"
set id [gets stdin]
if {$id==1 || $id==28 || $id==19 || $id==13 || $id==25 ||$id==16 || $id==7 || $id==10} {
puts "\nTry to give a Right Input"
source sharing.tcl 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(1) set X_])]
set y2 [expr int([$n(1) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 1 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(19) set X_])]
set y2 [expr int([$n(19) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 19 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8
set comm1 [attach-CBR-traffic $n(1) $sink(28) 128 0.1]
set comm2 [attach-CBR-traffic $n(28) $sink(13) 128 0.1]
set comm3 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
set comm4 [attach-CBR-traffic $n(28) $sink(19) 128 0.1]
set comm5 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm6 [attach-CBR-traffic $n(19) $sink(25) 128 0.1]
set comm7 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
$ns at 91.0 "$n(1) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(19) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 96.3 "$n(1) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(19) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.3 "$comm2 start"
$ns at 96.3 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==2} {
puts "\n\n\t\t\tSystem-2 Having the LRD-2\n\t\t\tGoing to Share with the Nodes 29,20,11,5,8"
puts "\n\nEnter a Node Except 2,29,20,11,5,8 and Which want the data LRD-2 in the network"
set id [gets stdin]
if {$id==2 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source sharing.tcl 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(2) $sink(29) 128 0.1]
set comm2 [attach-CBR-traffic $n(2) $sink(20) 128 0.1]
set comm3 [attach-CBR-traffic $n(2) $sink(11) 128 0.1]
set comm4 [attach-CBR-traffic $n(20) $sink(5) 128 0.1]
set comm5 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(11) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==3} {
puts "\n\n\t\tSystem-3 Having the HRD-3\nGoing to Share with the Nodes 6,9,0,18,27,21"
puts "\n\nEnter a Node Except 3,6,9,0,18,27,21 and Which want the data HRD-3 in the network"
set id [gets stdin]
if {$id==3 || $id==6 || $id==9 || $id==0 || $id==18 ||$id==27 || $id==21} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d7"
close $sub
#d1 to d
set comm1 [attach-CBR-traffic $n(3) $sink(27) 128 0.1]
set comm2 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
set comm3 [attach-CBR-traffic $n(3) $sink(6) 128 0.1]
set comm4 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
set comm5 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm6 [attach-CBR-traffic $n(9) $sink(21) 128 0.1]
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(21) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(27) color yellow"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(21) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(27) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
}  elseif {$sy==4} {
puts "\n\n\t\t\tSystem-4 Having the MRD-4\n\t\t\tGoing to Share with the Nodes 13,28,16,7,22,25,10"

puts "\n\nEnter a Node Except 4,13,28,16,7,22,25,10 and Which want the data MRD-4 in the network"
set id [gets stdin]
if {$id==4 || $id==13 || $id==28 || $id==16 || $id==7 ||$id==22 || $id==25 || $id==10} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8
set comm1 [attach-CBR-traffic $n(4) $sink(13) 128 0.1]
set comm2 [attach-CBR-traffic $n(13) $sink(28) 128 0.1]
set comm3 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
set comm4 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm5 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
set comm6 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm7 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
$ns at 91.0 "$n(4) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(19) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 96.3 "$n(4) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(19) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==5} {
puts "\n\n\t\t\tSystem-5 Having the LRD-5\n\t\t\tGoing to Share with the Nodes 8,20,2,29,11"
puts "\n\nEnter a Node Except 5,8,20,2,29,11 and Which want the data LRD-2 in the network"
set id [gets stdin]
if {$id==2 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
set comm2 [attach-CBR-traffic $n(5) $sink(20) 128 0.1]
set comm3 [attach-CBR-traffic $n(20) $sink(2) 128 0.1]
set comm4 [attach-CBR-traffic $n(2) $sink(29) 128 0.1]
set comm5 [attach-CBR-traffic $n(29) $sink(11) 128 0.1]
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(11) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==6} {
puts "System-6 Having the HRD-6\nGoing to Share with the Nodes 3,9,0,18,27,21"
puts "\n\nEnter a Node Except 6,3,9,0,18,27,21 and Which want the data HRD-6 in the network"
set id [gets stdin]
if {$id==3 || $id==6 || $id==9 || $id==0 || $id==18 ||$id==27 || $id==21} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d7"
close $sub
#d1 to d7
set comm1 [attach-CBR-traffic $n(6) $sink(3) 128 0.1]
set comm2 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm3 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
set comm4 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
set comm5 [attach-CBR-traffic $n(3) $sink(27) 128 0.1]
set comm6 [attach-CBR-traffic $n(9) $sink(21) 128 0.1]
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(27) color yellow"
$ns at 91.0 "$n(21) color yellow"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(27) color cyan"
$ns at 96.3 "$n(21) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.1 "$comm6 start"
$ns at 96.1 "$comm6 stop"
}  elseif {$sy==7} {
puts "\n\n\t\t\tSystem-7 Having the MRD-7\n\t\t\tGoing to Share with the Nodes 13,16,4,28,10,25,22"

puts "\n\nEnter a Node Except 7,13,16,4,28,10,25,22 and Which want the data MRD-7 in the network"
set id [gets stdin]
if {$id==7 || $id==13 || $id==16 || $id==4 || $id==28 ||$id==10 || $id==25 || $id==22} {
puts "\nTry to give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d8"
close $sub
#d1 to d8
set comm1 [attach-CBR-traffic $n(7) $sink(13) 128 0.1]
set comm2 [attach-CBR-traffic $n(13) $sink(28) 128 0.1]
set comm3 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
set comm4 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm5 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
set comm6 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm7 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(19) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(19) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==8} {
puts "\n\n\t\t\tSystem-8 Having the LRD-8\n\t\t\tGoing to Share with the Nodes 5,20,2,29,11"

puts "\n\nEnter a Node Except 2,29,20,11,5,8 and Which want the data LRD-2 in the network"
set id [gets stdin]
if {$id==2 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(8) $sink(5) 128 0.1]
set comm2 [attach-CBR-traffic $n(5) $sink(20) 128 0.1]
set comm3 [attach-CBR-traffic $n(20) $sink(2) 128 0.1]
set comm4 [attach-CBR-traffic $n(2) $sink(29) 128 0.1]
set comm5 [attach-CBR-traffic $n(29) $sink(11) 128 0.1]
$ns at 91.0 "$n(8) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 96.3 "$n(8) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(11) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==9} {
puts "System-9 Having the HRD-9\nGoing to Share with the Nodes 6,3,0,18,27,21"
puts "\n\nEnter a Node Except 9,6,3,0,18,27,21 and Which want the data HRD-9 in the network"
set id [gets stdin]
if {$id==3 || $id==6 || $id==9 || $id==0 || $id==18 ||$id==27 || $id==21} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d7"
close $sub
#d1 to d7
set comm1 [attach-CBR-traffic $n(9) $sink(6) 128 0.1]
set comm2 [attach-CBR-traffic $n(9) $sink(21) 128 0.1]
set comm3 [attach-CBR-traffic $n(6) $sink(3) 128 0.1]
set comm4 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm5 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
set comm6 [attach-CBR-traffic $n(3) $sink(27) 128 0.1]
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(27) color yellow"
$ns at 91.0 "$n(21) color yellow"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(27) color cyan"
$ns at 96.3 "$n(21) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.1 "$comm6 start"
$ns at 96.1 "$comm6 stop"
} elseif {$sy==10} {
puts "\n\n\t\t\tSystem-10 Having the MRD-10\n\t\t\tGoing to Share with the Nodes 16,13,7,28,4,25,22"
puts "\n\nEnter a Node Except 4,28,22,13,25,16,7,10 and Which want the data MRD-10 in the network"
set id [gets stdin]
if {$id==4 || $id==28 || $id==22 || $id==13 || $id==25 ||$id==16 || $id==7 || $id==10} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} elseif {
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8
}

set comm1 [attach-CBR-traffic $n(10) $sink(16) 128 0.1]
set comm2 [attach-CBR-traffic $n(16) $sink(13) 128 0.1]
set comm3 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm4 [attach-CBR-traffic $n(13) $sink(28) 128 0.1]
set comm5 [attach-CBR-traffic $n(28) $sink(4) 128 0.1]
set comm6 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm7 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
$ns at 91.0 "$n(10) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(4) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(22) color yellow"
$ns at 96.3 "$n(10) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(17) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(4) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(22) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==11} {
puts "\n\n\t\t\tSystem-11 Having the LRD-11\n\t\t\tGoing to Share with the Nodes 29,2,20,5,8"

puts "\n\nEnter a Node Except 2,29,20,11,5,8 and Which want the data LRD-11 in the network"
set id [gets stdin]
if {$id==2 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(11) $sink(29) 128 0.1]
set comm2 [attach-CBR-traffic $n(29) $sink(2) 128 0.1]
set comm3 [attach-CBR-traffic $n(2) $sink(20) 128 0.1]
set comm4 [attach-CBR-traffic $n(20) $sink(5) 128 0.1]
set comm5 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
$ns at 91.0 "$n(11) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 96.3 "$n(11) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==12} {
puts "System-12 Having the HRD-12\nGoing to Share with the Nodes 11,18,3,6,9,0"

puts "\n\nEnter a Node Except 12,11,18,3,6,9,0 and Which want the data HRD-12 in the network"
set id [gets stdin]
if {$id==12 || $id==11 || $id==18 || $id==3 || $id==6 ||$id==9 || $id==0} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
}
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(12) set X_])]
set y2 [expr int([$n(12) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 12 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d7"
close $sub
#d1 to d7
set comm1 [attach-CBR-traffic $n(12) $sink(11) 128 0.1]
set comm2 [attach-CBR-traffic $n(11) $sink(18) 128 0.1]
set comm3 [attach-CBR-traffic $n(18) $sink(3) 128 0.1]
set comm4 [attach-CBR-traffic $n(3) $sink(6) 128 0.1]
set comm5 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
set comm6 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
$ns at 91.0 "$n(12) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 96.3 "$n(11) color tomato"
$ns at 96.3 "$n(12) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.2 "$comm4 start"
$ns at 96.2 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
}  elseif {$sy==13} {
puts "\n\n\t\t\tSystem-13 Having the MRD-13\n\t\t\tGoing to Share with the Nodes 16,4,7,28,10,25,22"

puts "\n\nEnter a Node Except [13,16,4,7,28,10,25,22] and Which want the data MRD-13 in the network"
set id [gets stdin]
if {$id==13 || $id==16 || $id==4 || $id==7 || $id==28 ||$id==10 || $id==25 || $id==22} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
}
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d8"
close $sub
#d1 to d8
set comm1 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
set comm2 [attach-CBR-traffic $n(13) $sink(4) 128 0.1]
set comm3 [attach-CBR-traffic $n(13) $sink(28) 128 0.1]
set comm4 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm5 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
set comm6 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm7 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(4) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(22) color yellow"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(4) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(22) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.0 "$comm4 start"
$ns at 96.0 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.1 "$comm6 start"
$ns at 96.1 "$comm6 stop"
$ns at 91.1 "$comm7 start"
$ns at 96.1 "$comm7 stop"
} elseif {$sy==14} {
puts "\n\n\t\t\tSystem-14 Having the LRD-14\n\t\t\tGoing to Share with the Nodes 5,2,8,29,26"
puts "\n\nEnter a Node Except 2,29,26,14,5,8 and Which want the data LRD-14 in the network"
set id [gets stdin]
if {$id==2 || $id==29 || $id==26 || $id==14 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 26 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(26) set X_])]
set y2 [expr int([$n(26) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 26 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(14) set X_])]
set y2 [expr int([$n(14) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 14 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(14) $sink(5) 128 0.1]
set comm2 [attach-CBR-traffic $n(14) $sink(2) 128 0.1]
set comm3 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
set comm4 [attach-CBR-traffic $n(2) $sink(29) 128 0.1]
set comm5 [attach-CBR-traffic $n(29) $sink(26) 128 0.1]
$ns at 91.0 "$n(14) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(26) color yellow"
$ns at 96.3 "$n(14) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(26) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==15} {
puts "System-15 Having the HRD-15\nGoing to Share with the Nodes 9,21,6,0,3,18"
puts "\n\nEnter a Node Except 15,9,21,6,0,3,18 and Which want the data HRD-15 in the network"
set id [gets stdin]
if {$id==15 || $id==9 || $id==21 || $id==6 || $id==0 ||$id==3 || $id==18} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(15) set X_])]
set y2 [expr int([$n(15) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 15 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d7"
close $sub
#d1 to d7
set comm1 [attach-CBR-traffic $n(15) $sink(9) 128 0.1]
set comm2 [attach-CBR-traffic $n(9) $sink(6) 128 0.1]
set comm3 [attach-CBR-traffic $n(6) $sink(3) 128 0.1]
set comm4 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm5 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
set comm6 [attach-CBR-traffic $n(15) $sink(21) 128 0.1]
$ns at 91.0 "$n(15) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(21) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 96.3 "$n(15) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(21) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.2 "$comm3 start"
$ns at 96.2 "$comm3 stop"
$ns at 91.2 "$comm4 start"
$ns at 96.2 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.0 "$comm6 start"
$ns at 96.0 "$comm6 stop"
} elseif {$sy==16} {
puts "\n\n\t\t\tSystem-16 Having the MRD-16\n\t\t\tGoing to Share with the Nodes 10,13,28,7,4,25,22"

puts "\n\nEnter a Node Except 16,10,13,28,7,4,25,22 and Which want the data MRD-16 in the network"
set id [gets stdin]
if {$id==16 || $id==10 || $id==13 || $id==28 || $id==7 ||$id==4 || $id==25 || $id==22} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
}
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d8"
close $sub
#d1 to d8
set comm1 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
set comm2 [attach-CBR-traffic $n(16) $sink(13) 128 0.1]
set comm3 [attach-CBR-traffic $n(13) $sink(28) 128 0.1]
set comm4 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm5 [attach-CBR-traffic $n(13) $sink(4) 128 0.1]
set comm6 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm7 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(4) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(22) color yellow"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(4) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==17} {
puts "\n\n\t\t\tSystem-17 Having the LRD-17\n\t\t\tGoing to Share with the Nodes 29,20,11,5,8"
puts "\n\nEnter a Node Except 17,29,20,11,5,8 and Which want the data LRD-17 in the network"
set id [gets stdin]
if {$id==17 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(17) set X_])]
set y2 [expr int([$n(17) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 17 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(17) $sink(29) 128 0.1]
set comm2 [attach-CBR-traffic $n(17) $sink(20) 128 0.1]
set comm3 [attach-CBR-traffic $n(29) $sink(11) 128 0.1]
set comm4 [attach-CBR-traffic $n(20) $sink(5) 128 0.1]
set comm5 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
$ns at 91.0 "$n(17) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 96.3 "$n(17) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(11) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==18} {
puts "System-18 Having the HRD-18\nGoing to Share with the Nodes 12,27,3,6,0,9"

puts "\n\nEnter a Node Except 18,12,27,3,6,0,9 and Which want the data HRD-18 in the network"
set id [gets stdin]
if {$id==3 || $id==6 || $id==9 || $id==0 || $id==18 ||$id==27 || $id==12} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(12) set X_])]
set y2 [expr int([$n(12) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 12 Distance $d7"
close $sub
#d1 to d7
set comm1 [attach-CBR-traffic $n(18) $sink(27) 128 0.1]
set comm2 [attach-CBR-traffic $n(18) $sink(3) 128 0.1]
set comm3 [attach-CBR-traffic $n(18) $sink(6) 128 0.1]
set comm4 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
set comm5 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm6 [attach-CBR-traffic $n(18) $sink(12) 128 0.1]
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(12) color yellow"
$ns at 91.0 "$n(27) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(12) color cyan"
$ns at 96.3 "$n(27) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.0 "$comm6 start"
$ns at 96.0 "$comm6 stop"
} elseif {$sy==19} {
puts "\n\n\t\t\tSystem-19 Having the MRD-19\n\t\t\tGoing to Share with the Nodes 25,28,22,12,16,10,7"
puts "\n\nEnter a Node Except 19,25,28,22,12,16,10,7 and Which want the data MRD-19 in the network"
set id [gets stdin]
if {$id==19 || $id==25 || $id==28 || $id==22 || $id==12 ||$id==16 || $id==10 || $id==7} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
}
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(19) set X_])]
set y2 [expr int([$n(19) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 19 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(12) set X_])]
set y2 [expr int([$n(12) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 12 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8

set comm1 [attach-CBR-traffic $n(19) $sink(25) 128 0.1]
set comm2 [attach-CBR-traffic $n(19) $sink(28) 128 0.1]
set comm3 [attach-CBR-traffic $n(19) $sink(22) 128 0.1]
set comm4 [attach-CBR-traffic $n(28) $sink(13) 128 0.1]
set comm5 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
set comm6 [attach-CBR-traffic $n(13) $sink(10) 128 0.1]
set comm7 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
$ns at 91.0 "$n(19) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(22) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 96.3 "$n(19) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(22) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==20} {
puts "\n\n\t\t\tSystem-20 Having the LRD-20\n\t\t\tGoing to Share with the Nodes 5,2,8,29,11"

puts "\n\nEnter a Node Except 2,29,20,11,5,8 and Which want the data LRD-2 in the network"
set id [gets stdin]
if {$id==2 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
}
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6
set comm1 [attach-CBR-traffic $n(20) $sink(5) 128 0.1]
set comm2 [attach-CBR-traffic $n(20) $sink(2) 128 0.1]
set comm3 [attach-CBR-traffic $n(2) $sink(29) 128 0.1]
set comm4 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
set comm5 [attach-CBR-traffic $n(29) $sink(11) 128 0.1]
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(11) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==21} {
puts "System-21 Having the HRD-21\nGoing to Share with the Nodes 9,6,3,0,18,27"

puts "\n\nEnter a Node Except 3,6,9,0,18,27,21 and Which want the data HRD-21 in the network"
set id [gets stdin]
if {$id==3 || $id==6 || $id==9 || $id==0 || $id==18 ||$id==27 || $id==21} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d7"
close $sub
#d1 to d7


set comm1 [attach-CBR-traffic $n(21) $sink(9) 128 0.1]
set comm2 [attach-CBR-traffic $n(9) $sink(6) 128 0.1]
set comm3 [attach-CBR-traffic $n(6) $sink(3) 128 0.1]
set comm4 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm5 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
set comm6 [attach-CBR-traffic $n(3) $sink(27) 128 0.1]
$ns at 91.0 "$n(21) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(27) color yellow"
$ns at 96.3 "$n(21) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(27) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.2 "$comm3 start"
$ns at 96.2 "$comm3 stop"
$ns at 91.2 "$comm4 start"
$ns at 96.2 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
}  elseif {$sy==22} {
puts "\n\n\t\t\tSystem-22 Having the MRD-22\n\t\t\tGoing to Share with the Nodes 19,28,13,25,7,16,10"

puts "\n\nEnter a Node Except 22,19,28,13,25,7,16,10 and Which want the data MRD-22 in the network"
set id [gets stdin]
if {$id==22 || $id==19 || $id==28 || $id==13 || $id==25 ||$id==16 || $id==7 || $id==10} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(19) set X_])]
set y2 [expr int([$n(19) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 19 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8


set comm1 [attach-CBR-traffic $n(22) $sink(19) 128 0.1]
set comm2 [attach-CBR-traffic $n(22) $sink(28) 128 0.1]
set comm3 [attach-CBR-traffic $n(28) $sink(13) 128 0.1]
set comm4 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm5 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm6 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
set comm7 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
$ns at 91.0 "$n(22) color yellow"
$ns at 91.0 "$n(19) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 96.3 "$n(22) color tomato"
$ns at 96.3 "$n(19) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==23} {
puts "\n\n\t\t\tSystem-23 Having the LRD-23\n\t\t\tGoing to Share with the Nodes 29,20,5,11,8"

puts "\n\nEnter a Node Except 23,29,20,11,5,8 and Which want the data LRD-23 in the network"
set id [gets stdin]
if {$id==23 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(23) set X_])]
set y2 [expr int([$n(23) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 23 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6



set comm1 [attach-CBR-traffic $n(23) $sink(29) 128 0.1]
set comm2 [attach-CBR-traffic $n(23) $sink(20) 128 0.1]
set comm3 [attach-CBR-traffic $n(29) $sink(5) 128 0.1]
set comm4 [attach-CBR-traffic $n(20) $sink(11) 128 0.1]
set comm5 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
$ns at 91.0 "$n(23) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(11) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 96.3 "$n(23) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(11) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==24} {
puts "System-24 Having the HRD-24\nGoing to Share with the Nodes 12,18,3,0,6,9"

puts "\n\nEnter a Node Except 24,12,18,3,0,6,9 and Which want the data HRD-24 in the network"
set id [gets stdin]
if {$id==24 || $id==12 || $id==18 || $id==3 || $id==0 ||$id==6 || $id==9} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(24) set X_])]
set y2 [expr int([$n(24) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 24 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(12) set X_])]
set y2 [expr int([$n(12) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 12 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d7"
close $sub
#d1 to d7


set comm1 [attach-CBR-traffic $n(24) $sink(12) 128 0.1]
set comm2 [attach-CBR-traffic $n(24) $sink(18) 128 0.1]
set comm3 [attach-CBR-traffic $n(18) $sink(3) 128 0.1]
set comm4 [attach-CBR-traffic $n(3) $sink(6) 128 0.1]
set comm5 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm6 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
$ns at 91.0 "$n(24) color yellow"
$ns at 91.0 "$n(12) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 96.3 "$n(24) color cyan"
$ns at 96.3 "$n(12) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
} elseif {$sy==25} {
puts "\n\n\t\t\tSystem-25 Having the MRD-25\n\t\t\tGoing to Share with the Nodes 28,22,13,16,7,4,10"

puts "\n\nEnter a Node Except [25,28,22,13,16,7,4,10] and Which want the data MRD-25 in the network"
set id [gets stdin]
if {$id==22 || $id==28 || $id==4 || $id==13 || $id==25 ||$id==16 || $id==7 || $id==10} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
}
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8


set comm1 [attach-CBR-traffic $n(25) $sink(28) 128 0.1]
set comm2 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
set comm3 [attach-CBR-traffic $n(28) $sink(13) 128 0.1]
set comm4 [attach-CBR-traffic $n(28) $sink(16) 128 0.1]
set comm5 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm6 [attach-CBR-traffic $n(13) $sink(4) 128 0.1]
set comm7 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
$ns at 91.0 "$n(4) color yellow"
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(19) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 96.3 "$n(4) color tomato"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(19) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.1 "$comm2 start"
$ns at 96.1 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.2 "$comm6 start"
$ns at 96.2 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==26} {
puts "\n\n\t\t\tSystem-26 Having the LRD-26\n\t\t\tGoing to Share with the Nodes 29,2,20,5,8"

puts "\n\nEnter a Node Except 26,29,2,20,5,8 and Which want the data LRD-23 in the network"
set id [gets stdin]
if {$id==26 || $id==29 || $id==2 || $id==20 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(26) set X_])]
set y2 [expr int([$n(26) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 26 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(2) set X_])]
set y2 [expr int([$n(2) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 2 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6



set comm1 [attach-CBR-traffic $n(26) $sink(29) 128 0.1]
set comm2 [attach-CBR-traffic $n(29) $sink(2) 128 0.1]
set comm3 [attach-CBR-traffic $n(2) $sink(20) 128 0.1]
set comm4 [attach-CBR-traffic $n(20) $sink(5) 128 0.1]
set comm5 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
$ns at 91.0 "$n(26) color yellow"
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 96.3 "$n(26) color purple"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} elseif {$sy==27} {
puts "System-27 Having the HRD-27\nGoing to Share with the Nodes 3,18,6,0,9,21"

puts "\n\nEnter a Node Except 3,6,9,0,18,27,21 and Which want the data HRD-27 in the network"
set id [gets stdin]
if {$id==3 || $id==6 || $id==9 || $id==0 || $id==18 ||$id==27 || $id==21} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(3) set X_])]
set y2 [expr int([$n(3) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 0 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(6) set X_])]
set y2 [expr int([$n(6) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 6 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(9) set X_])]
set y2 [expr int([$n(9) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 9 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(0) set X_])]
set y2 [expr int([$n(0) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 3 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(18) set X_])]
set y2 [expr int([$n(18) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 18 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(27) set X_])]
set y2 [expr int([$n(27) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 27 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(21) set X_])]
set y2 [expr int([$n(21) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 21 Distance $d7"
close $sub
#d1 to d7

set comm1 [attach-CBR-traffic $n(27) $sink(3) 128 0.1]
set comm2 [attach-CBR-traffic $n(3) $sink(6) 128 0.1]
set comm3 [attach-CBR-traffic $n(6) $sink(9) 128 0.1]
set comm4 [attach-CBR-traffic $n(6) $sink(0) 128 0.1]
set comm5 [attach-CBR-traffic $n(9) $sink(21) 128 0.1]
set comm6 [attach-CBR-traffic $n(3) $sink(18) 128 0.1]
$ns at 91.0 "$n(27) color yellow"
$ns at 91.0 "$n(3) color yellow"
$ns at 91.0 "$n(6) color yellow"
$ns at 91.0 "$n(0) color yellow"
$ns at 91.0 "$n(9) color yellow"
$ns at 91.0 "$n(18) color yellow"
$ns at 91.0 "$n(21) color yellow"
$ns at 96.3 "$n(27) color cyan"
$ns at 96.3 "$n(3) color cyan"
$ns at 96.3 "$n(6) color cyan"
$ns at 96.3 "$n(0) color cyan"
$ns at 96.3 "$n(9) color cyan"
$ns at 96.3 "$n(18) color cyan"
$ns at 96.3 "$n(21) color cyan"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.1 "$comm3 start"
$ns at 96.1 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
$ns at 91.1 "$comm6 start"
$ns at 96.1 "$comm6 stop"
} elseif {$sy==28} {
puts "\n\n\t\t\tSystem-28 Having the MRD-28\n\t\t\tGoing to Share with the Nodes 25,22,13,16,4,7,10"

puts "\n\nEnter a Node Except 28,25,22,13,16,4,7,10 and Which want the data MRD-28 in the network"
set id [gets stdin]
if {$id==22 || $id==28 || $id==4 || $id==13 || $id==25 ||$id==16 || $id==7 || $id==10} {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(22) set X_])]
set y2 [expr int([$n(22) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 22 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(28) set X_])]
set y2 [expr int([$n(28) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 28 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(4) set X_])]
set y2 [expr int([$n(4) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 4 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(13) set X_])]
set y2 [expr int([$n(13) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 13 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(25) set X_])]
set y2 [expr int([$n(25) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 25 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(16) set X_])]
set y2 [expr int([$n(16) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 16 Distance $d6"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(7) set X_])]
set y2 [expr int([$n(7) set Y_])]
set d7 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 7 Distance $d7"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(10) set X_])]
set y2 [expr int([$n(10) set Y_])]
set d8 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 10 Distance $d8"
close $sub
#d1 to d8


set comm1 [attach-CBR-traffic $n(28) $sink(25) 128 0.1]
set comm2 [attach-CBR-traffic $n(28) $sink(22) 128 0.1]
set comm3 [attach-CBR-traffic $n(28) $sink(13) 128 0.1]
set comm4 [attach-CBR-traffic $n(13) $sink(16) 128 0.1]
set comm5 [attach-CBR-traffic $n(13) $sink(4) 128 0.1]
set comm6 [attach-CBR-traffic $n(13) $sink(7) 128 0.1]
set comm7 [attach-CBR-traffic $n(16) $sink(10) 128 0.1]
$ns at 91.0 "$n(28) color yellow"
$ns at 91.0 "$n(25) color yellow"
$ns at 91.0 "$n(22) color yellow"
$ns at 91.0 "$n(13) color yellow"
$ns at 91.0 "$n(16) color yellow"
$ns at 91.0 "$n(4) color yellow"
$ns at 91.0 "$n(7) color yellow"
$ns at 91.0 "$n(10) color yellow"
$ns at 96.3 "$n(28) color tomato"
$ns at 96.3 "$n(25) color tomato"
$ns at 96.3 "$n(22) color tomato"
$ns at 96.3 "$n(13) color tomato"
$ns at 96.3 "$n(16) color tomato"
$ns at 96.3 "$n(4) color tomato"
$ns at 96.3 "$n(7) color tomato"
$ns at 96.3 "$n(10) color tomato"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.1 "$comm5 start"
$ns at 96.1 "$comm5 stop"
$ns at 91.1 "$comm6 start"
$ns at 96.1 "$comm6 stop"
$ns at 91.2 "$comm7 start"
$ns at 96.2 "$comm7 stop"
} elseif {$sy==29} {
puts "\n\n\t\t\tSystem-29 Having the LRD-29\n\t\t\tGoing to Share with the Nodes 26,2,20,5,0,8"

puts "\n\nEnter a Node Except 26,29,20,11,5,8 and Which want the data LRD-23 in the network"
set id [gets stdin]
if {$id==26 || $id==29 || $id==20 || $id==11 || $id==5 || $id==8 } {
puts "\nTry to give give a Right Input"
source "sharing.tcl" 
} 
set sub [open "Distance" a]
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(26) set X_])]
set y2 [expr int([$n(26) set Y_])]
set d1 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 26 Distance $d1"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(29) set X_])]
set y2 [expr int([$n(29) set Y_])]
set d2 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 29 Distance $d2"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(20) set X_])]
set y2 [expr int([$n(20) set Y_])]
set d3 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 20 Distance $d3"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(11) set X_])]
set y2 [expr int([$n(11) set Y_])]
set d4 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 11 Distance $d4"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(5) set X_])]
set y2 [expr int([$n(5) set Y_])]
set d5 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 5 Distance $d5"
set x1 [expr int([$n($id) set X_])]
set y1 [expr int([$n($id) set Y_])]
set x2 [expr int([$n(8) set X_])]
set y2 [expr int([$n(8) set Y_])]
set d6 [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
puts $sub "$id to 8 Distance $d6"
close $sub
#d1 to d6


set comm1 [attach-CBR-traffic $n(29) $sink(26) 128 0.1]
set comm2 [attach-CBR-traffic $n(29) $sink(2) 128 0.1]
set comm3 [attach-CBR-traffic $n(2) $sink(20) 128 0.1]
set comm4 [attach-CBR-traffic $n(20) $sink(5) 128 0.1]
set comm5 [attach-CBR-traffic $n(5) $sink(8) 128 0.1]
$ns at 91.0 "$n(29) color yellow"
$ns at 91.0 "$n(26) color yellow"
$ns at 91.0 "$n(2) color yellow"
$ns at 91.0 "$n(20) color yellow"
$ns at 91.0 "$n(5) color yellow"
$ns at 91.0 "$n(8) color yellow"
$ns at 96.3 "$n(29) color purple"
$ns at 96.3 "$n(26) color purple"
$ns at 96.3 "$n(2) color purple"
$ns at 96.3 "$n(20) color purple"
$ns at 96.3 "$n(5) color purple"
$ns at 96.3 "$n(8) color purple"
$ns at 91.0 "$comm1 start"
$ns at 96.0 "$comm1 stop"
$ns at 91.0 "$comm2 start"
$ns at 96.0 "$comm2 stop"
$ns at 91.0 "$comm3 start"
$ns at 96.0 "$comm3 stop"
$ns at 91.1 "$comm4 start"
$ns at 96.1 "$comm4 stop"
$ns at 91.2 "$comm5 start"
$ns at 96.2 "$comm5 stop"
} 
