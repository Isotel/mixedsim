<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="110" name="spice" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ngspice">
<description>&lt;b&gt;Mixed Signal ngSpice Simulator Library&lt;/b&gt;
&lt;hr&gt;
The library contains mixed signal, analog, hybrid, and digital components introduced by XSpice compiled with the &lt;a href="http://ngspice.org"&gt;ngSpice&lt;/a&gt; as described in the ngspice User Manual version 26, &lt;a href="http://ngspice.org"&gt;http://ngspice.org&lt;/a&gt;.
Library is to be used with the ngspice.ulp provided by Uros Platise from &lt;a href="http://isotel.eu/mixedsim"&gt;Isotel GmbH&lt;/a&gt;. Make sure you're up-to-date by downloading the most recent version from &lt;a href="http://github.com/isotel/mixedsim"&gt;GitHub&lt;/a&gt;.
&lt;p&gt;
Library includes spice documentation extracted from the ngspice documentation version 26 which is a Copyright 1996 The Regents of the University of California.
&lt;p&gt;
Library includes ngspice primitives. Since ngspice is a mixed signal simulator it distinguishes between three data types:&lt;ul&gt;
&lt;li&gt;spice voltages and currents native to circuits. These have no special markings in symbols and are treated as used as normal pins.
&lt;li&gt;Digital signals which may be in one of the 12 ngspice states, denoted by a prefix &lt;b&gt;#&lt;/b&gt; character in symbol pin names, and
&lt;li&gt;Real values, prefixed with the &lt;b&gt;~&lt;/b&gt; character in symbol pin names.
&lt;/ul&gt;
To bridge signal from one to another special hybrid components are to be used, such as ADC_BUF, DAC_BUF, and others.
&lt;p&gt;
Another eagle specfic components are called:&lt;ul&gt;
&lt;li&gt;spice-port, used to form sub-circuits either of a whole schematics or just selected sheets of the schematics, and
&lt;li&gt;spice-xport, used to source an external circuitry via Eagle module's, without the need of creating new components.
&lt;/ul&gt;
 See ngspice.ulp for more information and examples provided by the &lt;a href="http://isotel.eu/mixedsim"&gt;Isotel Mixed Simulation Project&lt;/a&gt;.
&lt;/p&gt;</description>
<packages>
<package name="SPICE2">
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.27" x2="-6.35" y2="1.27" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-6.35" y="2.54" size="1.27" layer="21">SPICEOBJECT</text>
</package>
<package name="SPICE4">
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="6.35" y2="-1.27" width="0.127" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="1.27" width="0.127" layer="21"/>
<wire x1="6.35" y1="1.27" x2="-6.35" y2="1.27" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="3" x="1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="4" x="3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-6.35" y="2.54" size="1.27" layer="21">SPICEOBJECT</text>
</package>
<package name="SPICE3">
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="3.81" y2="-1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-6.35" y2="1.27" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="3" x="1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-6.35" y="2.54" size="1.27" layer="21">SPICEOBJECT</text>
</package>
<package name="VSOURCE">
<wire x1="-2.54" y1="1.27" x2="0" y2="1.27" width="0.127" layer="21"/>
<wire x1="0" y1="1.27" x2="2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="0" y2="0.635" width="0.127" layer="21"/>
<wire x1="0" y1="0.635" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="0" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0" y1="-0.635" x2="2.54" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0" y1="1.27" x2="0" y2="1.905" width="0.127" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="-1.27" width="0.127" layer="21"/>
<pad name="2" x="0" y="-2.54" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="1" x="0" y="2.54" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.27" y="1.905" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="INTEG">
<pin name="AOUT" x="10.16" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="AIN" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<text x="-5.08" y="-7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="5.588" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.842" y2="0.762" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.842" y2="-0.762" width="0.254" layer="94"/>
<text x="-0.762" y="-2.032" size="1.778" layer="94">1
s</text>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="SUM3">
<pin name="AOUT" x="7.62" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="AIN1" x="-7.62" y="0" visible="pad" length="middle" direction="in"/>
<text x="2.54" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-4.572" size="1.778" layer="96">&gt;VALUE</text>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<pin name="AIN2" x="0" y="-7.62" visible="pad" length="middle" direction="in" rot="R90"/>
<wire x1="0" y1="1.016" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.016" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="-3.302" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-0.762" y2="-3.302" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.302" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.302" y2="-0.762" width="0.254" layer="94"/>
<pin name="AIN3" x="0" y="7.62" visible="pad" length="middle" direction="in" rot="R270"/>
<wire x1="0" y1="2.54" x2="0.762" y2="3.302" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="3.302" width="0.254" layer="94"/>
</symbol>
<symbol name="LIMITER">
<pin name="AOUT" x="10.16" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="AIN" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<text x="-5.08" y="-7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="5.588" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="2.54" y2="3.556" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.556" x2="3.81" y2="3.556" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.842" y2="0.762" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.842" y2="-0.762" width="0.254" layer="94"/>
</symbol>
<symbol name="SUM">
<pin name="AOUT" x="7.62" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="AIN1" x="-7.62" y="0" visible="pad" length="middle" direction="in"/>
<text x="-2.54" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-4.572" size="1.778" layer="96">&gt;VALUE</text>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<pin name="AIN2" x="0" y="-7.62" visible="pad" length="middle" direction="in" rot="R90"/>
<wire x1="0" y1="1.016" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.016" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="-3.302" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-0.762" y2="-3.302" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.302" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.302" y2="-0.762" width="0.254" layer="94"/>
</symbol>
<symbol name="GAIN">
<pin name="AOUT" x="10.16" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="AIN" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<text x="-5.08" y="-7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="5.588" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.842" y2="0.762" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.842" y2="-0.762" width="0.254" layer="94"/>
</symbol>
<symbol name="VSOURCE">
<circle x="0" y="1.27" radius="3.5921" width="0.254" layer="94"/>
<text x="-4.445" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="6.35" y="-3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="1.905" size="1.778" layer="94">+</text>
<text x="-0.635" y="-1.27" size="1.778" layer="94">-</text>
<pin name="1" x="0" y="10.16" visible="off" length="middle" direction="out" rot="R270"/>
<pin name="2" x="0" y="-7.62" visible="off" length="middle" direction="out" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="INT" prefix="A">
<description>The Integrator block is a simple integration stage that approximates the integral
with respect to time of an input signal. The block also includes gain and input offset
parameters to allow for tailoring of the required signal, and output upper and lower limits
to prevent convergence errors resulting from excessively large output values. Note that
these limits specify integrator behavior similar to that found in an operational amplifierbased integration stage, 
in that once a limit is reached, additional storage does not occur.
Thus, the input of a negative value to an integrator which is currently driving at the out
upper limit level will immediately cause a drop in the output, regardless of how long
the integrator was previously summing positive inputs. The incremental value of output
below the output upper limit and above the output lower limit at which smoothing begins
is specified via the limit range parameter. In AC analysis, the value returned is equal to
the gain divided by the radian frequency of analysis.
Note that truncation error checking is included in the “int” block. This should provide
for a more accurate simulation of the time integration function, since the model will
inherently request smaller time increments between simulation points if truncation errors
would otherwise be excessive.</description>
<gates>
<gate name="G$1" symbol="INTEG" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPICE2">
<connects>
<connect gate="G$1" pin="AIN" pad="1"/>
<connect gate="G$1" pin="AOUT" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE_MODEL" value=".model &gt;VALUE int(in_offset gain out_lower_limit out_upper_limit limit_range out_ic)" constant="no"/>
<attribute name="SP_GAIN" value="1" constant="no"/>
<attribute name="SP_IN_OFFSET" value="0" constant="no"/>
<attribute name="SP_LIMIT_RANGE" value="1e-6" constant="no"/>
<attribute name="SP_OUT_IC" value="0" constant="no"/>
<attribute name="SP_OUT_LOWER_LIMIT" value="-1e12" constant="no"/>
<attribute name="SP_OUT_UPPER_LIMIT" value="1e12" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SUM3" prefix="A">
<description>This function is a summer block with 2-to-N input ports. Individual gains and
offsets can be applied to each input and to the output. Each input is added to its respective
offset and then multiplied by its gain. The results are then summed, multiplied by the
output gain and added to the output offset. This model will operate in DC, AC, and
Transient analysis modes.</description>
<gates>
<gate name="G$1" symbol="SUM3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPICE4">
<connects>
<connect gate="G$1" pin="AIN1" pad="1"/>
<connect gate="G$1" pin="AIN2" pad="2"/>
<connect gate="G$1" pin="AIN3" pad="3"/>
<connect gate="G$1" pin="AOUT" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE_MODEL" value=".model &gt;VALUE summer(in_offset in_gain out_gain out_offset)" constant="no"/>
<attribute name="SPICE_PORTS" value="[ 1 2 3 ] 4" constant="no"/>
<attribute name="SP_IN_GAIN" value="[1 1 1]" constant="no"/>
<attribute name="SP_IN_OFFSET" value="[0 0 0]" constant="no"/>
<attribute name="SP_OUT_GAIN" value="1" constant="no"/>
<attribute name="SP_OUT_OFFSET" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LIMITER" prefix="A">
<description>The Limiter is a single input, single output function similar to the Gain Block.
However, the output of the Limiter function is restricted to the range specified by the
output lower and upper limits. This model will operate in DC, AC and Transient analysis
modes. Note that the limit range is the value BELOW THE UPPER LIMIT AND ABOVE
THE LOWER LIMIT at which smoothing of the output begins. For this model, then, the
limit range represents the delta WITH RESPECT TO THE OUTPUT LEVEL at which
smoothing occurs. Thus, for an input gain of 2.0 and output limits of 1.0 and -1.0 volts,
the output will begin to smooth out at ±0.9 volts, which occurs when the input value is at
±0.4.</description>
<gates>
<gate name="G$1" symbol="LIMITER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPICE2">
<connects>
<connect gate="G$1" pin="AIN" pad="1"/>
<connect gate="G$1" pin="AOUT" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE_MODEL" value=".model &gt;VALUE limit(in_offset gain out_lower_limit out_upper_limit limit_range fraction)" constant="no"/>
<attribute name="SP_FRACTION" value="false" constant="no"/>
<attribute name="SP_GAIN" value="1" constant="no"/>
<attribute name="SP_IN_OFFSET" value="0" constant="no"/>
<attribute name="SP_LIMIT_RANGE" value="1e-6" constant="no"/>
<attribute name="SP_OUT_LOWER_LIMIT" value="0" constant="no"/>
<attribute name="SP_OUT_UPPER_LIMIT" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SUM" prefix="A">
<description>This function is a summer block with 2-to-N input ports. Individual gains and
offsets can be applied to each input and to the output. Each input is added to its respective
offset and then multiplied by its gain. The results are then summed, multiplied by the
output gain and added to the output offset. This model will operate in DC, AC, and
Transient analysis modes.</description>
<gates>
<gate name="G$1" symbol="SUM" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPICE3">
<connects>
<connect gate="G$1" pin="AIN1" pad="1"/>
<connect gate="G$1" pin="AIN2" pad="2"/>
<connect gate="G$1" pin="AOUT" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE_MODEL" value=".model &gt;VALUE summer(in_offset in_gain out_gain out_offset)" constant="no"/>
<attribute name="SPICE_PORTS" value="[ 1 2 ] 3" constant="no"/>
<attribute name="SP_IN_GAIN" value="[1 1]" constant="no"/>
<attribute name="SP_IN_OFFSET" value="[0 0]" constant="no"/>
<attribute name="SP_OUT_GAIN" value="1" constant="no"/>
<attribute name="SP_OUT_OFFSET" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GAIN" prefix="A">
<description>This function is a simple gain block with optional offsets on the input and the
output. The input offset is added to the input, the sum is then multiplied by the gain, and
the result is produced by adding the output offset. This model will operate in DC, AC,
and Transient analysis modes.</description>
<gates>
<gate name="G$1" symbol="GAIN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPICE2">
<connects>
<connect gate="G$1" pin="AIN" pad="1"/>
<connect gate="G$1" pin="AOUT" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE_MODEL" value=".model &gt;VALUE gain(in_offset gain out_offset)" constant="no"/>
<attribute name="SP_GAIN" value="1" constant="no"/>
<attribute name="SP_IN_OFFSET" value="0" constant="no"/>
<attribute name="SP_OUT_OFFSET" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VSOURCE" prefix="V" uservalue="yes">
<gates>
<gate name="G$1" symbol="VSOURCE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VSOURCE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
<attribute name="TITLE" value="2-Wheel Robot"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="A1" library="ngspice" deviceset="INT" device=""/>
<part name="A2" library="ngspice" deviceset="SUM3" device=""/>
<part name="A3" library="ngspice" deviceset="LIMITER" device="" value="LIMITER1">
<attribute name="SP_GAIN" value="10"/>
<attribute name="SP_OUT_LOWER_LIMIT" value="-1"/>
</part>
<part name="A4" library="ngspice" deviceset="SUM" device="" value="SUM_FT">
<attribute name="SP_OUT_GAIN" value="-1"/>
</part>
<part name="A5" library="ngspice" deviceset="LIMITER" device="" value="LIMITER2">
<attribute name="SP_GAIN" value="10"/>
<attribute name="SP_OUT_LOWER_LIMIT" value="-1"/>
</part>
<part name="A6" library="ngspice" deviceset="SUM" device="" value="SUM_MT#"/>
<part name="A7" library="ngspice" deviceset="SUM" device=""/>
<part name="A8" library="ngspice" deviceset="SUM" device="" value="SUM_MT">
<attribute name="SP_IN_GAIN" value="[1 -1]"/>
</part>
<part name="A9" library="ngspice" deviceset="SUM3" device="" value="SUM_P">
<attribute name="SP_IN_GAIN" value="[-1 1 1]"/>
</part>
<part name="A10" library="ngspice" deviceset="INT" device=""/>
<part name="A11" library="ngspice" deviceset="GAIN" device="" value="GAIN_R">
<attribute name="SPICE_MODEL" value=".model gain_r gain(in_offset gain_r out_offset)"/>
<attribute name="SP_GAIN" value="0.1"/>
</part>
<part name="B1" library="ngspice" deviceset="VSOURCE" device="" value="V=V(DS)*cos(V(P))"/>
<part name="B2" library="ngspice" deviceset="VSOURCE" device="" value="V=V(DS)*sin(V(P))"/>
<part name="A12" library="ngspice" deviceset="INT" device=""/>
<part name="A13" library="ngspice" deviceset="INT" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="A14" library="ngspice" deviceset="INT" device=""/>
<part name="V3" library="ngspice" deviceset="VSOURCE" device="" value="PULSE(0 5 1m 1ms 1ms 1s)"/>
<part name="V4" library="ngspice" deviceset="VSOURCE" device="" value="PULSE(0 5 0.5 1ms 1ms 2s)"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="A15" library="ngspice" deviceset="INT" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="66.04" y="99.06" size="2.54" layer="110">.control
set hcopydevtype=postscript
set hcopyfont=Arimo
set hcopypscolor=1
set color0=rgb:f/f/f
set color1=rgb:0/0/0
tran 4ms 10s
wrdata robot.ssv x y p
.endc</text>
</plain>
<instances>
<instance part="A1" gate="G$1" x="233.68" y="203.2"/>
<instance part="A2" gate="G$1" x="210.82" y="203.2"/>
<instance part="A3" gate="G$1" x="187.96" y="177.8"/>
<instance part="A4" gate="G$1" x="210.82" y="177.8" smashed="yes" rot="MR90">
<attribute name="NAME" x="215.9" y="182.118" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="215.9" y="179.832" size="1.778" layer="96" rot="MR180"/>
<attribute name="SP_OUT_GAIN" x="215.9" y="175.26" size="1.778" layer="96" rot="MR180" display="both"/>
</instance>
<instance part="A5" gate="G$1" x="187.96" y="160.02"/>
<instance part="A6" gate="G$1" x="165.1" y="160.02" smashed="yes">
<attribute name="NAME" x="162.56" y="163.322" size="1.778" layer="95"/>
<attribute name="VALUE" x="149.86" y="155.448" size="1.778" layer="96"/>
</instance>
<instance part="A7" gate="G$1" x="165.1" y="177.8" smashed="yes">
<attribute name="NAME" x="162.56" y="181.102" size="1.778" layer="95"/>
<attribute name="VALUE" x="154.94" y="173.228" size="1.778" layer="96"/>
</instance>
<instance part="A8" gate="G$1" x="210.82" y="139.7" smashed="yes" rot="R270">
<attribute name="NAME" x="215.9" y="140.462" size="1.778" layer="95"/>
<attribute name="VALUE" x="215.9" y="137.668" size="1.778" layer="96"/>
<attribute name="SP_IN_GAIN" x="215.9" y="132.08" size="1.778" layer="96" display="both"/>
</instance>
<instance part="A9" gate="G$1" x="210.82" y="111.76" smashed="yes">
<attribute name="SP_IN_GAIN" x="172.72" y="101.6" size="1.778" layer="96" display="both"/>
<attribute name="NAME" x="213.36" y="115.062" size="1.778" layer="95"/>
<attribute name="VALUE" x="195.58" y="107.188" size="1.778" layer="96"/>
</instance>
<instance part="A10" gate="G$1" x="233.68" y="111.76"/>
<instance part="A11" gate="G$1" x="187.96" y="124.46" smashed="yes" rot="MR0">
<attribute name="SP_GAIN" x="187.96" y="124.46" size="1.778" layer="96" rot="MR0"/>
<attribute name="NAME" x="193.04" y="116.84" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="193.04" y="130.048" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="B1" gate="G$1" x="259.08" y="167.64" smashed="yes">
<attribute name="NAME" x="254.635" y="165.735" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="266.065" y="168.91" size="1.778" layer="96"/>
</instance>
<instance part="B2" gate="G$1" x="259.08" y="147.32" smashed="yes" rot="R180">
<attribute name="NAME" x="253.365" y="146.685" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="266.065" y="146.05" size="1.778" layer="96"/>
</instance>
<instance part="A12" gate="G$1" x="279.4" y="182.88"/>
<instance part="A13" gate="G$1" x="279.4" y="132.08"/>
<instance part="GND1" gate="1" x="264.16" y="157.48" rot="R90"/>
<instance part="A14" gate="G$1" x="279.4" y="111.76"/>
<instance part="V3" gate="G$1" x="78.74" y="167.64"/>
<instance part="V4" gate="G$1" x="93.98" y="167.64"/>
<instance part="GND2" gate="1" x="93.98" y="157.48"/>
<instance part="GND3" gate="1" x="78.74" y="157.48"/>
<instance part="A15" gate="G$1" x="279.4" y="203.2"/>
</instances>
<busses>
</busses>
<nets>
<net name="FS" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="AIN"/>
<pinref part="A2" gate="G$1" pin="AOUT"/>
<wire x1="218.44" y1="203.2" x2="223.52" y2="203.2" width="0.1524" layer="91"/>
<label x="220.98" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="F1" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="AIN3"/>
<wire x1="210.82" y1="210.82" x2="210.82" y2="218.44" width="0.1524" layer="91"/>
<wire x1="210.82" y1="218.44" x2="137.16" y2="218.44" width="0.1524" layer="91"/>
<label x="132.08" y="218.44" size="1.778" layer="95"/>
<pinref part="A9" gate="G$1" pin="AIN2"/>
<wire x1="210.82" y1="104.14" x2="210.82" y2="96.52" width="0.1524" layer="91"/>
<wire x1="210.82" y1="96.52" x2="137.16" y2="96.52" width="0.1524" layer="91"/>
<wire x1="137.16" y1="96.52" x2="137.16" y2="218.44" width="0.1524" layer="91"/>
<junction x="137.16" y="218.44"/>
<pinref part="V3" gate="G$1" pin="1"/>
<wire x1="137.16" y1="218.44" x2="78.74" y2="218.44" width="0.1524" layer="91"/>
<wire x1="78.74" y1="218.44" x2="78.74" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="F2" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="AIN1"/>
<wire x1="203.2" y1="203.2" x2="142.24" y2="203.2" width="0.1524" layer="91"/>
<label x="132.08" y="203.2" size="1.778" layer="95"/>
<pinref part="A9" gate="G$1" pin="AIN1"/>
<wire x1="142.24" y1="203.2" x2="142.24" y2="111.76" width="0.1524" layer="91"/>
<wire x1="142.24" y1="111.76" x2="203.2" y2="111.76" width="0.1524" layer="91"/>
<junction x="142.24" y="203.2"/>
<pinref part="V4" gate="G$1" pin="1"/>
<wire x1="142.24" y1="203.2" x2="93.98" y2="203.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="203.2" x2="93.98" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="FTS" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="AIN2"/>
<pinref part="A4" gate="G$1" pin="AOUT"/>
<wire x1="210.82" y1="185.42" x2="210.82" y2="195.58" width="0.1524" layer="91"/>
<label x="210.82" y="185.42" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="FT1" class="0">
<segment>
<pinref part="A4" gate="G$1" pin="AIN2"/>
<pinref part="A3" gate="G$1" pin="AOUT"/>
<wire x1="203.2" y1="177.8" x2="200.66" y2="177.8" width="0.1524" layer="91"/>
<pinref part="A8" gate="G$1" pin="AIN2"/>
<wire x1="200.66" y1="177.8" x2="198.12" y2="177.8" width="0.1524" layer="91"/>
<wire x1="203.2" y1="139.7" x2="200.66" y2="139.7" width="0.1524" layer="91"/>
<wire x1="200.66" y1="139.7" x2="200.66" y2="177.8" width="0.1524" layer="91"/>
<junction x="200.66" y="177.8"/>
<label x="198.12" y="177.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="FT2" class="0">
<segment>
<pinref part="A5" gate="G$1" pin="AOUT"/>
<pinref part="A4" gate="G$1" pin="AIN1"/>
<wire x1="198.12" y1="160.02" x2="210.82" y2="160.02" width="0.1524" layer="91"/>
<wire x1="210.82" y1="160.02" x2="210.82" y2="170.18" width="0.1524" layer="91"/>
<pinref part="A8" gate="G$1" pin="AIN1"/>
<wire x1="210.82" y1="160.02" x2="210.82" y2="147.32" width="0.1524" layer="91"/>
<junction x="210.82" y="160.02"/>
<label x="203.2" y="160.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="DS" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="AOUT"/>
<wire x1="243.84" y1="203.2" x2="248.92" y2="203.2" width="0.1524" layer="91"/>
<label x="251.46" y="203.2" size="1.778" layer="95"/>
<wire x1="248.92" y1="203.2" x2="269.24" y2="203.2" width="0.1524" layer="91"/>
<wire x1="248.92" y1="203.2" x2="248.92" y2="190.5" width="0.1524" layer="91"/>
<junction x="248.92" y="203.2"/>
<wire x1="248.92" y1="190.5" x2="149.86" y2="190.5" width="0.1524" layer="91"/>
<wire x1="149.86" y1="190.5" x2="149.86" y2="177.8" width="0.1524" layer="91"/>
<wire x1="149.86" y1="177.8" x2="149.86" y2="160.02" width="0.1524" layer="91"/>
<wire x1="149.86" y1="160.02" x2="157.48" y2="160.02" width="0.1524" layer="91"/>
<pinref part="A6" gate="G$1" pin="AIN1"/>
<pinref part="A7" gate="G$1" pin="AIN1"/>
<wire x1="149.86" y1="177.8" x2="157.48" y2="177.8" width="0.1524" layer="91"/>
<junction x="149.86" y="177.8"/>
<pinref part="A15" gate="G$1" pin="AIN"/>
</segment>
</net>
<net name="V2" class="0">
<segment>
<pinref part="A6" gate="G$1" pin="AOUT"/>
<pinref part="A5" gate="G$1" pin="AIN"/>
<wire x1="172.72" y1="160.02" x2="177.8" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V1" class="0">
<segment>
<pinref part="A7" gate="G$1" pin="AOUT"/>
<pinref part="A3" gate="G$1" pin="AIN"/>
<wire x1="172.72" y1="177.8" x2="177.8" y2="177.8" width="0.1524" layer="91"/>
<label x="172.72" y="177.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="FTP" class="0">
<segment>
<pinref part="A8" gate="G$1" pin="AOUT"/>
<pinref part="A9" gate="G$1" pin="AIN3"/>
<wire x1="210.82" y1="119.38" x2="210.82" y2="132.08" width="0.1524" layer="91"/>
<label x="210.82" y="127" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="FP" class="0">
<segment>
<pinref part="A9" gate="G$1" pin="AOUT"/>
<pinref part="A10" gate="G$1" pin="AIN"/>
<wire x1="218.44" y1="111.76" x2="223.52" y2="111.76" width="0.1524" layer="91"/>
<label x="220.98" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="DP" class="0">
<segment>
<wire x1="248.92" y1="111.76" x2="269.24" y2="111.76" width="0.1524" layer="91"/>
<wire x1="248.92" y1="111.76" x2="248.92" y2="124.46" width="0.1524" layer="91"/>
<junction x="248.92" y="111.76"/>
<pinref part="A10" gate="G$1" pin="AOUT"/>
<wire x1="243.84" y1="111.76" x2="248.92" y2="111.76" width="0.1524" layer="91"/>
<label x="251.46" y="111.76" size="1.778" layer="95"/>
<pinref part="A11" gate="G$1" pin="AIN"/>
<wire x1="198.12" y1="124.46" x2="248.92" y2="124.46" width="0.1524" layer="91"/>
<pinref part="A14" gate="G$1" pin="AIN"/>
</segment>
</net>
<net name="DPR" class="0">
<segment>
<pinref part="A7" gate="G$1" pin="AIN2"/>
<wire x1="165.1" y1="170.18" x2="175.26" y2="170.18" width="0.1524" layer="91"/>
<wire x1="175.26" y1="170.18" x2="175.26" y2="149.86" width="0.1524" layer="91"/>
<pinref part="A6" gate="G$1" pin="AIN2"/>
<wire x1="165.1" y1="152.4" x2="165.1" y2="149.86" width="0.1524" layer="91"/>
<wire x1="165.1" y1="149.86" x2="175.26" y2="149.86" width="0.1524" layer="91"/>
<junction x="175.26" y="149.86"/>
<wire x1="175.26" y1="149.86" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<pinref part="A11" gate="G$1" pin="AOUT"/>
<wire x1="177.8" y1="124.46" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<label x="175.26" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="A12" gate="G$1" pin="AIN"/>
<pinref part="B1" gate="G$1" pin="1"/>
<wire x1="269.24" y1="182.88" x2="259.08" y2="182.88" width="0.1524" layer="91"/>
<wire x1="259.08" y1="182.88" x2="259.08" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="B2" gate="G$1" pin="1"/>
<wire x1="259.08" y1="137.16" x2="259.08" y2="132.08" width="0.1524" layer="91"/>
<pinref part="A13" gate="G$1" pin="AIN"/>
<wire x1="259.08" y1="132.08" x2="269.24" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X" class="0">
<segment>
<pinref part="A12" gate="G$1" pin="AOUT"/>
<wire x1="289.56" y1="182.88" x2="304.8" y2="182.88" width="0.1524" layer="91"/>
<label x="299.72" y="182.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y" class="0">
<segment>
<pinref part="A13" gate="G$1" pin="AOUT"/>
<wire x1="289.56" y1="132.08" x2="304.8" y2="132.08" width="0.1524" layer="91"/>
<label x="299.72" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="B1" gate="G$1" pin="2"/>
<wire x1="259.08" y1="160.02" x2="259.08" y2="157.48" width="0.1524" layer="91"/>
<pinref part="B2" gate="G$1" pin="2"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="259.08" y1="157.48" x2="259.08" y2="154.94" width="0.1524" layer="91"/>
<wire x1="261.62" y1="157.48" x2="259.08" y2="157.48" width="0.1524" layer="91"/>
<junction x="259.08" y="157.48"/>
</segment>
<segment>
<pinref part="V4" gate="G$1" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="V3" gate="G$1" pin="2"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
</net>
<net name="P" class="0">
<segment>
<pinref part="A14" gate="G$1" pin="AOUT"/>
<wire x1="289.56" y1="111.76" x2="304.8" y2="111.76" width="0.1524" layer="91"/>
<label x="299.72" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="S" class="0">
<segment>
<pinref part="A15" gate="G$1" pin="AOUT"/>
<wire x1="289.56" y1="203.2" x2="304.8" y2="203.2" width="0.1524" layer="91"/>
<label x="299.72" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
