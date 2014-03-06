#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~# Environmental Settings~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 set val(chan)         Channel/WirelessChannel  	;# channel type
 set val(prop)         Propagation/TwoRayGround 	;# radio-propagation mode
 set val(ant)          Antenna/OmniAntenna      		;# Antenna type
 set val(ll)           LL                      	 	;# Link layer type
 set val(ifq)          CMUPriQueue	        			;# Interface queue type
 set val(ifqlen)       1024   		        			;# max packet in ifq
 set val(netif)        Phy/WirelessPhy          			;# network interface type
 set val(mac)          Mac/802_11               			;# MAC type
 set val(rp)  	        DSR							;# Routing Protocol		
 set val(nn)           30                       				;# number of mobilenodes
 set val(x)            710							;
 set val(y)            710							;
 set opt(energymodel)  EnergyModel              		;# Energy model 
 set opt(initialenergy)  100                    			;# Initial energy in Joules
#~~~~~~~~~~~~~~~~~~~~~~~Simulator Object Creation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set ns [new Simulator]
#~~~~~~~~~~~~~~~~~~~~~~ Trace File to record all the Events~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set f [open Resource.tr w]
$ns trace-all $f
$ns use-newtrace
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~AAM Window creation~~~~~~~~~~~~~~~~~~~~~~~~~~`
set namtrace [open Resource.nam w]
$ns namtrace-all-wireless $namtrace $val(x) $val(y)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Topology Creation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)

# ~~~~~~~~~~~~~~~~~~~~~~~~General Operational Director~~~~~~~~~~~~~~~~~~~~~~~~``
create-god $val(nn)
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Node Configuration~~~~~~~~~~~~~~~~~~~~~~~~`
$ns node-config  -adhocRouting $val(rp) \
 		 	  -llType $val(ll) \
                 -macType $val(mac) \
                 -ifqType $val(ifq) \
                 -ifqLen $val(ifqlen) \
                 -antType $val(ant) \
                 -propType $val(prop) \
                 -phyType $val(netif) \
                 -channelType $val(chan) \
                 -topoInstance $topo \
		 	  -agentTrace ON \
                 -routerTrace ON \
                 -macTrace ON \
                 -movementTrace ON \
                 -idlePower 0.5 \
		 	  -rxPower 1.5 \
		 	  -txPower 2.0 \
		 	  -sleepPower 0.2 \
           	  -initialEnergy $opt(initialenergy)
 #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Aode Creation ~~~~~~~~~~~~~~~~~~~~~~~~~~~` 

set god_ [create-god $val(nn)]

for {set i 0} {$i < $val(nn) } {incr i} {
set n($i) [$ns node]
$n($i) random-motion 0 
$god_ new_node $n($i)
} 



#------------- Node Initial Parameters --------------
for {set i 0} {$i < $val(nn)} {incr i} {
	$ns initial_node_pos $n($i) 40
	$n($i) set X_ 0.0
	$n($i) set Y_ 0.0
	$n($i) set Z_ 0.0
	$n($i) color black
}
#-------------------- Node Color ------------------------
for {set i 0} {$i < $val(nn) } {incr i} {
$ns at 0.3 "$n($i) color green4"
}
#---------------------- Node Initial Deployment --------------------
$ns at 0.1 "$n(0) setdest 515.0 170.0 3000.0"
$ns at 0.1 "$n(1) setdest 556.0 458.0 3000.0"   
$ns at 0.1 "$n(2) setdest 550.0 287.0 3000.0"
$ns at 0.1 "$n(3) setdest 468.0 367.0 3000.0"
$ns at 0.1 "$n(4) setdest 628.0 215.0 3000.0"
$ns at 0.1 "$n(5) setdest 251.0 118.0 3000.0"
$ns at 0.1 "$n(25) setdest 194.0 591.0 3000.0"
$ns at 0.1 "$n(7) setdest 365.0 55.0 3000.0"
$ns at 0.1 "$n(8) setdest 15.0 89.0 3000.0" 
$ns at 0.1 "$n(9) setdest 211.0 226.0 3000.0"
$ns at 0.1 "$n(10) setdest 86.0 300.0 3000.0"
$ns at 0.1 "$n(11) setdest 170.0 455.0 3000.0"
$ns at 0.1 "$n(12) setdest 99.0 541.0 3000.0"
$ns at 0.1 "$n(13) setdest 443.0 256.0 3000.0"
$ns at 0.1 "$n(14) setdest 596.0 92.0 3000.0"
$ns at 0.1 "$n(19) setdest 396.0 580.0 3000.0"
$ns at 0.1 "$n(16) setdest 254.0 331.0 3000.0"
$ns at 0.1 "$n(24) setdest 303.0 551.0 3000.0"
$ns at 0.1 "$n(18) setdest 301.0 447.0 3000.0"
$ns at 0.1 "$n(15) setdest 173.0 68.0 3000.0"
$ns at 0.1 "$n(20) setdest 507.0 77.0 3000.0"
$ns at 0.1 "$n(22) setdest 650.0 510.0 3000.0"
$ns at 0.1 "$n(21) setdest 44.0 194.0 3000.0"
$ns at 0.1 "$n(23) setdest 635.0 380.0 3000.0"
$ns at 0.1 "$n(17) setdest 550.0 383.0 3000.0"
$ns at 0.1 "$n(6) setdest 351.0 231.0 3000.0"
$ns at 0.1 "$n(26) setdest 15.0 426.0 3000.0"
$ns at 0.1 "$n(27) setdest 497.0 548.0 3000.0"
$ns at 0.1 "$n(28) setdest 439.0 456.0 3000.0"
$ns at 0.1 "$n(29) setdest 370.0 373.0 3000.0"
# ---------------------neighbor node & Non neighbor node calculation -----------------------
proc neighbor { } { 
global ns n nn
set nbr [open Neighbor w]
puts $nbr "\n\t\t\t\t\tNeighbor Detail"
puts $nbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $nbr "\t Node \t    Neighbor\t\t\tN_X-Pos\t\tN_Y-Pos\t\tH-Distance(d)"
puts $nbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
close $nbr
set nnbr [open nNeighbor w]
puts $nnbr "\n\t\t\t\t\t Non Neighbor Detail"
puts $nnbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $nnbr "\t Node \tNon Neighbor\t\t\t\tDX-Pos\t\tDY-Pos\t\tH-Distance(d)"
puts $nnbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
close $nnbr
set br [open NNode w]
puts $br "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $br "\t Node \tNon Neighbor\t\t\tDX-Pos\t\tDY-Pos\t\tH-Distance(d)"
puts $br "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
for {set i 0} {$i <30} {incr i} {
for {set j 0} {$j <30} {incr j} {
set nbr [open Neighbor a]
set nnbr [open nNeighbor a]
set x1 [expr int([$n($i) set X_])]
set y1 [expr int([$n($i) set Y_])]
set x2 [expr int([$n($j) set X_])]
set y2 [expr int([$n($j) set Y_])]
set d [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
if {$d<191 && $n($i)!= $n($j)} {
puts $nbr "\t  $i\t\t$j\t\t\t$x2\t\t$y2\t\t  $d" 
puts $br "\t  $i\t\t$j\t\t\t$x1\t\t$y1\t\t  $d" } 
if { $d>=190 && $n($i)!= $n($j)} {
puts $nnbr "\t  $i\t\t$j\t\t\t$x2\t\t$y2\t\t  $d"     }
close $nbr
close $nnbr
}
}
close $br
}
$ns at 0.9 "neighbor"

#---------------------------------- Memory Management ----------------------------
#---------------------------------Memory allocation to nodes--------------------------------
set md [open "Memory-Detail" w]
close $md
proc memo {} {
global ns
puts "\n\n"
puts "\t\t\t*****************************************************************"
puts "\t\t\t*\t\t\tMEMORY DETAILS\t\t\t\t*"
puts "\t\t\t*****************************************************************"
for {set i 0} { $i < 30} {incr i} {
set rr 0
set val 1
puts "\t\t\t*\t\t\t$i Memory value is $val Mb Unique Data\t*"
set md [open "Memory-Detail" a] 
puts $md "$i Used Memory-Size is $val"
$ns at 2.5 "$ns trace-annotate \"$i Used Memory-Size is $val\""
close $md
} 
puts "\t\t\t*****************************************************************"
puts "\n\n"
}  
memo
#---------------------- Mobility of Nodes---------------------------
proc mobility {tm} {
global n ns
$ns at $tm "$n(0)  setdest [expr (rand()*20)+515.0] [expr (rand()*20)+170.0] 	15.0"
$ns at $tm "$n(1)  setdest [expr (rand()*20)+556.0] [expr (rand()*20)+458.0] 	15.0"   
$ns at $tm "$n(2)  setdest [expr (rand()*20)+550.0] [expr (rand()*20)+287.0] 	15.0"
$ns at $tm "$n(3)  setdest [expr (rand()*20)+468.0] [expr (rand()*20)+367.0] 	15.0"
$ns at $tm "$n(4)  setdest [expr (rand()*20)+628.0] [expr (rand()*20)+215.0] 	15.0"
$ns at $tm "$n(5)  setdest [expr (rand()*20)+251.0] [expr (rand()*20)+118.0] 	15.0"
$ns at $tm "$n(25)  setdest [expr (rand()*20)+194.0] [expr (rand()*20)+591.0] 	15.0"
$ns at $tm "$n(7)  setdest [expr (rand()*20)+365.0] [expr (rand()*20)+55.0] 	15.0"
$ns at $tm "$n(8)  setdest [expr (rand()*20)+15.0]  [expr (rand()*20)+89.0] 	15.0" 
$ns at $tm "$n(9)  setdest [expr (rand()*20)+211.0] [expr (rand()*20)+226.0] 	15.0"
$ns at $tm "$n(10) setdest [expr (rand()*20)+86.0]  [expr (rand()*20)+300.0] 	15.0"
$ns at $tm "$n(11) setdest [expr (rand()*20)+170.0] [expr (rand()*20)+455.0] 	15.0"
$ns at $tm "$n(12) setdest [expr (rand()*20)+99.0]  [expr (rand()*20)+541.0] 	15.0"
$ns at $tm "$n(13) setdest [expr (rand()*20)+443.0] [expr (rand()*20)+256.0] 	15.0"
$ns at $tm "$n(14) setdest [expr (rand()*20)+594.0] [expr (rand()*20)+32.0] 	15.0"
$ns at $tm "$n(19) setdest [expr (rand()*20)+396.0] [expr (rand()*20)+580.0] 	15.0"
$ns at $tm "$n(16) setdest [expr (rand()*20)+254.0] [expr (rand()*20)+331.0] 	15.0"
$ns at $tm "$n(24) setdest [expr (rand()*20)+303.0] [expr (rand()*20)+551.0] 	15.0"
$ns at $tm "$n(18) setdest [expr (rand()*20)+301.0] [expr (rand()*20)+447.0] 	15.0"
$ns at $tm "$n(15) setdest [expr (rand()*20)+173.0] [expr (rand()*20)+68.0] 	15.0"
$ns at $tm "$n(20) setdest [expr (rand()*20)+507.0] [expr (rand()*20)+77.0] 	15.0"
$ns at $tm "$n(22) setdest [expr (rand()*20)+670.0] [expr (rand()*20)+550.0] 	15.0"
$ns at $tm "$n(21) setdest [expr (rand()*20)+44.0]  [expr (rand()*20)+194.0] 	15.0"
$ns at $tm "$n(23) setdest [expr (rand()*20)+635.0] [expr (rand()*20)+380.0] 	15.0"
$ns at $tm "$n(17) setdest [expr (rand()*20)+550.0] [expr (rand()*20)+383.0] 	15.0"
$ns at $tm "$n(6) setdest [expr (rand()*20)+351.0] [expr (rand()*20)+231.0]  	15.0"
$ns at $tm "$n(26) setdest [expr (rand()*20)+30.0]  [expr (rand()*20)+426.0] 	15.0"
$ns at $tm "$n(27) setdest [expr (rand()*20)+497.0] [expr (rand()*20)+548.0] 	15.0"
$ns at $tm "$n(28) setdest [expr (rand()*20)+439.0] [expr (rand()*20)+456.0] 	15.0"
$ns at $tm "$n(29) setdest [expr (rand()*20)+370.0] [expr (rand()*20)+373.0] 	15.0"
}
for {set i 3 } {$i <= 105 } { incr i } {
$ns at $i "mobility $i" }
#--------------------------------- Broadcasting Message Work ----------------------------
set f2 [open "btemp" w]
puts $f2 "0 29 1.3 0.3"
close $f2
#----------------------------Sink Parameter Creation-----------------------------------
for {set i 0} {$i <= 29} {incr i} {
set sink($i) [new Agent/LossMonitor]
$ns attach-agent $n($i) $sink($i)
}
#--------------------------------- CBR Creation  -------------------------------- 

proc attach-CBR-traffic { node sink pk itv } {
   						#Get an instance of the simulator
					     global c node_
						set ns_ [Simulator instance]
						set udp [new Agent/UDP]
						$ns_ attach-agent $node $udp
						#Create a CBR  agent and attach it to the node
						set cbr [new Application/Traffic/CBR]
						$cbr attach-agent $udp
						$cbr set packetSize_ $pk	;#sub packet size
						$cbr set interval_ $itv
						#Attach CBR source to sink;
						$ns_ connect $udp $sink	
						return $cbr
					     }

$ns at 1.1 "exec awk -f broadcast.awk btemp NNode"
$ns at 1.2 "source broadcast.tcl"
set inf0 [attach-CBR-traffic $n(24) $sink(1) 10 0.01]
$ns at 0.50 "$inf0 start"
$ns at 0.52 "$inf0 stop"
#------------------------- Sharing Info ---------------------------------
proc  infor { } {
global ns n sink
set tm 3.0
set itv 0.1
set ps 10
set pit 0.4
for {set i 0} {$i <30} {incr i} {
for {set j 0} {$j <30} {incr j} {
set x1 [expr int([$n($i) set X_])]
set y1 [expr int([$n($i) set Y_])]
set x2 [expr int([$n($j) set X_])]
set y2 [expr int([$n($j) set Y_])]
set d [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
if {$d<191 && $n($i)!= $n($j)} {
set share [attach-CBR-traffic $n($i) $sink($j) $ps $pit]
$ns at $tm "$n($i) color blue"
$ns at $tm "$n($j) color orange"
$ns at $tm "$share start"
set TM [expr ($tm + 0.2)]
$ns at $TM "$share stop"
$ns at $TM "$n($i) color green4"
$ns at $TM "$n($j) color green4"
set tm [expr ($tm + 0.5)]
set itv [expr ($itv + 0.5)]
}
}
}
}
$ns at 2.0 "infor"
#----------------------------------- System Differentiation ----------------------------
proc system {} {
global n ns sink 
set hr [open "High-Resolution" w]
set mr [open "Medium-Resolution" w]
set lr [open "Low-Resolution" w]
close $hr
close $mr
close $lr
puts "\n\n\t\t\tWe Have 3 Types of Systems.\n\t\t\t1.High Resolution System (MPEG4)\n\t\t\t2.Medium Level System (MP4)\n\t\t\t3.Low Level System\n\n"
set st 90
for {set i 0} {$i<30} {set i [expr $i+3]} {
puts "\t\t\t$i Nodes are High-Resolution Nodes"
set hr [open "High-Resolution" a]
puts $hr "$i Nodes are High-Resolution Nodes"
close $hr
$ns at $st "$n($i) color cyan"
set st [expr $st+0.01]
$ns at $st "$n($i) label HRS-$i"
}

for {set i 1} {$i<30} {set i [expr $i+3]} {
puts "\t\t\t$i Nodes are Medium-Resolution Nodes"
set mr [open "Medium-Resolution" a]
puts $mr "$i Nodes are Medium-Resolution Nodes"
close $mr
$ns at $st "$n($i) color tomato"
set st [expr $st+0.01]
$ns at $st "$n($i) label MRS-$i"
}

for {set i 2} {$i<30} {set i [expr $i+3]} {
puts "\t\t\t$i Nodes are Low-Resolution Nodes"
set lr [open "Low-Resolution" a]
puts $lr "$i Nodes are Low-Resolution Nodes"
close $lr
$ns at $st "$n($i) color purple"
set st [expr $st+0.01]
$ns at $st "$n($i) label LRS-$i"
}

puts "Enter a System which will go to Share its Data (0-29)"
set sy [gets stdin]

if { $sy<0 || $sy>29} {
puts "\nTry to give the correct input Next Time\nProgram goes to Terminate..!!"
exit 0
} else {
source "sharing.tcl"
$ns at 10.0 "exec awk -f communication.awk Distance"
$ns at 10.5 "source communication.tcl"
}
}
$ns at 6.0 "system"

set pr [open PDR.xg w]
puts $pr "Markers: true"
puts $pr "BoundBox: true"
puts $pr "Background: white"
puts $pr "0 0"

set tp [open Throughput.xg w]
puts $tp "Markers: true"
puts $tp "BoundBox: true"
puts $tp "Background: white"
puts $tp "0 0"

set dp [open Drop.xg w]
puts $dp "Markers: true"
puts $dp "BoundBox: true"
puts $dp "Background: white"
puts $dp "0 0"


proc mark {sin} {
global ns tp  sink 
set itval 3.0
set nw [$ns now]
set byt [$sin set bytes_]
set kb [expr double(($byt*8.0)/(2*$itval*1000))]
puts $tp "$nw $kb"
$sin set nlost_ 0
$ns at [expr $nw+$itval] "mark $sin"
}


proc record {sin} {
global ns pr dp sink
set itval 3.0
set nw [$ns now]
set rec [$sin set npkts_]
set los [$sin set nlost_]
set pd [expr $rec/($rec+$los+0.0)]
puts $pr "$nw $pd"
puts $dp "$nw $los"    
$sin set nlost_ 0
$ns at [expr $nw+$itval] "record $sin"
}

$ns at 8.0 "mark $sink(5)"
$ns at 8.0 "record $sink(5)"
proc nodeqos {} {
{
                set $nsvideo*data=(msg*)pkt_streams.data udp;
                set $nsnode = neighbornode_rep;
                set $nsmanagernode = mnnode_rep;
                set $nssink=ps(msg*data);
              
                set $nsreceiving time = rt(msg*data);
                set $nstransmission time=tt(mag*data);
                set $nsmin_dist->msg*data nsnode ""
                set $nsmax_dist->mag*data nsnode  ""

                set $sends=(msg*)pkt.data udp;
                set $recvs=(msg*)pkt.data udp;
                sleeping=((sends-1)-recvs);
                   select $timer=max_dist;                 

               set class-map_HRV match-anySurfing()
                         match class-map timer;
                         match class-map dist;

                set class-map_LRV match-all Files()
                         match protocol ftp;

                         policy-map_MRV Internet;
                 set    class Web bandwidth() 
                 set       class SecureWeb priority ()


}
              

                if(msg*data nsnode_rep->sink node 0 $ns at "" > msg*data nsnode_rep-> sink node 8 $ns at "")
              {
                select $ns ps(msg*data);
                set timer $ns at "";
                set destination node 0 $ns at 2.4;
                
                update mnnode_rep ();
               }

                else
               {
                 select $ns ss(msg*data);   
                 set timer $ns at "";
                 update nmnode_rep();
                }
                   

                   for(nsnode 0 <= nsnode 30)
                 {
                       set timer = rt(msg*data) node "" -(tt(msg*data) node "" - rt(msg*data) node "" + size of(msg*data nsnode "")
                       select min timer;
                       set destination node 2 $ns at 4.2;
                       update mnnode_rep();
                  } 

                    if (isaddressalloc())
	{
	        msg*data=(msg*)pkt.data udp;
                
                config=set $ns address alloc sink node36;
                       
                     
}
           else
                   {
                set $ns "no authentication" at "";
                   }
     };proc finish {} {
global ns namtrace pr tp dp
$ns flush-trace
close $namtrace  
exec ./nam -r 20m Resource.nam &
exec ./xgraph PDR.xg  -t "Packet delivary Ratio" -x "Time" -y "PDR" &	
exec ./xgraph Throughput.xg  -t "Throughput" -x "Time"  -y "Throughput" &
exec ./xgraph Drop.xg  -t "Drop" -x "Time" -ly 0,50 -y "Drop" &
exec ./xgraph  HARSM_3.tr DRASM_3.tr -geometry 800x400 -t " PERFORMACE ANALYSIS ON PACKET DELIVERY" -x "No of nodes" -y "end to end throughput 512kb/s" -bg white &
exec ./xgraph DRASM_throughput.tr HARSM_throughput.tr  -x "avg no of VIDEO STTREAMS" -y "No of NODES" -t "Performance Level of DRASM&HARSM" -geometry 800x400 -bg white &
exec ./xgraph networkthroughput1.tr packetdeliveryratio1.tr delay1.tr -x "Time" -y "No of NODES" -t "Performance Level of DRASM ALGORITHM" -geometry 800x400 -bg white &
exec ./xgraph HARSM_1.tr HARSM_JSV_1.tr DRASM_1.tr -geometry 800x400 -t "PERFORMACE ANALYSIS" -x "No of VIDEO STREAMS" -y "ENERGY LEVEL" -bg white & 
exec ./xgraph HARSM.tr HARSM_JSV.tr DRASM.tr -geometry 800x400 -t "PERFORMACE ANALYSIS ON VIDEO STREAMS" -x "TIME" -y "PSNR(DB)" -bg white & 
exit 0
}
$ns at 150.0 "finish"
$ns run
