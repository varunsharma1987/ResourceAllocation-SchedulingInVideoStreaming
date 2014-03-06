BEGIN{
i=0
n=0
m=0
k=0
pks=128
itv=0.01
itval=6
tm=97
}

{
if(FILENAME=="Distance") {
a[n++]=$5
b[m++]=$1
c[k++]=$3
}

}

END{
for (i=0;i<n;i++)
{
for(j=i+1;j<n;j++)
{
if(a[i]>a[j])
{
temp=a[j]
a[j]=a[i]
a[i]=temp

temp1=b[j]
b[j]=b[i]
b[i]=temp1

temp2=c[j]
c[j]=c[i]
c[i]=temp2
}
}
}
#print b[0] 
#print c[0]
print "set inf"y" [attach-CBR-traffic $n("c[0]") $sink("b[0]") "pks" "itv"]" > "communication.tcl"
print "$ns at "tm" \"$inf"y" start\"" > "communication.tcl"
print "$ns at "tm+itval" \"$inf"y" stop\"" > "communication.tcl"
print "$ns at "tm" \"$n("c[0]") color red\"" > "communication.tcl"
print "$ns at "tm" \"$n("b[0]") color red\"" > "communication.tcl"
}
