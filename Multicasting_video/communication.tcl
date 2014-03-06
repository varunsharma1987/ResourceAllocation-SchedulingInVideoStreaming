set inf [attach-CBR-traffic $n(29) $sink(3) 128 0.01]
$ns at 97 "$inf start"
$ns at 103 "$inf stop"
$ns at 97 "$n(29) color red"
$ns at 97 "$n(3) color red"
