BEGIN {
p=0
pks=10
itv=0.4
}

{
if(FILENAME=="btemp") {
stnd=$1
ednd=$2
tm=$3
itval=$4
}


if(FILENAME=="NNode" ) {
if($1>=0 && $1<=29) {
n[p,1]=$1
n[p,2]=$2
n[p,3]=$5
p++
}
}
}


END {
# Acending order 
 for(x=0;x<p;x++)
 {
  for(y=x+1;y<p;y++)
  {
   
   if(n[x,3]>n[y,3] && n[x,1]==n[y,1])
   {
    temp1=n[x,3]
    n[x,3]=n[y,3]
    n[y,3]=temp1

    temp2=n[x,2]
    n[x,2]=n[y,2]
    n[y,2]=temp2
   }
  }
 }




x=0
y=0
a[0]=src

for(s=stnd;s<=x;s++) #indicate Route order
 {
  src=a[s]
  for(j=stnd;j<p;j++)
   { 
    f=1
    if(src==n[j,1]) 
    {
      for(s1=0;s1<=x;s1++) #check chain format
      { 
        if(a[s1]==n[j,2])
         f=0
      } 
      if(f==1)
      {
       m[x,1]=n[j,1]
       m[x,2]=n[j,2]
       a[x+1]=n[j,2]
       x++
       
      }
    }
  }
 }

# Print into file
 for(i=0;i<x;i++)
 {
  print "set inf"y" [attach-CBR-traffic $n("m[i,1]") $sink("m[i,2]") "pks" "itv"]" > "broadcast.tcl"
  print "$ns at "tm" \"$inf"y" start\"" > "broadcast.tcl"
  print "$ns at "tm+itval" \"$inf"y" stop\"" > "broadcast.tcl"
  print "$ns at "tm" \"$n("m[i,2]") color yellow2\"" > "broadcast.tcl" 
  print "$ns at "tm" \"$n("m[i,1]") color yellow3\"" > "broadcast.tcl"
  print "$ns at "tm+itval" \"$n("m[i,2]") color green4\"" > "broadcast.tcl"
  print "$ns at "tm+itval" \"$n("m[i,1]") color green4\"" > "broadcast.tcl"
  print ("$ns at "tm+0.025" \"$ns trace-annotate \\\"Node - "m[i,1]" send the TOPOLOGY_DISCOVERY message to its neighbor - "m[i,2]" \\\"\"") > "broadcast.tcl"
  y++
  tm=tm+0.01
 }

}
