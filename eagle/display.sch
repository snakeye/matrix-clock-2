<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="LED">
<packages>
<package name="MATRIX_8X8_38MM">
<description>CPD-15088 LED Matrix 8x8 38mm Green</description>
<wire x1="0" y1="0" x2="3" y2="0" width="0.127" layer="21"/>
<wire x1="3" y1="0" x2="35" y2="0" width="0.127" layer="21"/>
<wire x1="35" y1="0" x2="38" y2="0" width="0.127" layer="21"/>
<wire x1="38" y1="0" x2="38" y2="-3" width="0.127" layer="21"/>
<wire x1="38" y1="-3" x2="38" y2="-35" width="0.127" layer="21"/>
<wire x1="38" y1="-35" x2="38" y2="-38" width="0.127" layer="21"/>
<wire x1="38" y1="-38" x2="35" y2="-38" width="0.127" layer="21"/>
<wire x1="35" y1="-38" x2="20" y2="-38" width="0.127" layer="21"/>
<wire x1="20" y1="-38" x2="18" y2="-38" width="0.127" layer="21"/>
<wire x1="18" y1="-38" x2="3" y2="-38" width="0.127" layer="21"/>
<wire x1="3" y1="-38" x2="0" y2="-38" width="0.127" layer="21"/>
<wire x1="0" y1="-38" x2="0" y2="-35" width="0.127" layer="21"/>
<wire x1="0" y1="-35" x2="0" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="18" y1="-38" x2="20" y2="-38" width="0.127" layer="21" curve="-180"/>
<pad name="1" x="10.16" y="-33.02" drill="0.5" diameter="1.8" shape="square" first="yes"/>
<pad name="2" x="12.7" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="3" x="15.24" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="4" x="17.78" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="5" x="20.32" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="6" x="22.86" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="7" x="25.4" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="8" x="27.94" y="-33.02" drill="0.5" diameter="1.8"/>
<wire x1="0" y1="-3" x2="0.5" y2="-3" width="0.127" layer="21"/>
<wire x1="0.5" y1="-3" x2="0.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="-0.5" x2="3" y2="-0.5" width="0.127" layer="21"/>
<wire x1="3" y1="-0.5" x2="3" y2="0" width="0.127" layer="21"/>
<wire x1="35" y1="0" x2="35" y2="-0.5" width="0.127" layer="21"/>
<wire x1="35" y1="-0.5" x2="37.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="37.5" y1="-0.5" x2="37.5" y2="-3" width="0.127" layer="21"/>
<wire x1="37.5" y1="-3" x2="38" y2="-3" width="0.127" layer="21"/>
<wire x1="35" y1="-38" x2="35" y2="-37.5" width="0.127" layer="21"/>
<wire x1="35" y1="-37.5" x2="37.5" y2="-37.5" width="0.127" layer="21"/>
<wire x1="37.5" y1="-37.5" x2="37.5" y2="-35" width="0.127" layer="21"/>
<wire x1="37.5" y1="-35" x2="38" y2="-35" width="0.127" layer="21"/>
<wire x1="0" y1="-35" x2="0.5" y2="-35" width="0.127" layer="21"/>
<wire x1="0.5" y1="-35" x2="0.5" y2="-37" width="0.127" layer="21"/>
<wire x1="0.5" y1="-37" x2="0.5" y2="-37.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="-37.5" x2="3" y2="-37.5" width="0.127" layer="21"/>
<wire x1="3" y1="-37.5" x2="3" y2="-38" width="0.127" layer="21"/>
<text x="1.27" y="-2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="1.27" y="-36.83" size="1.27" layer="27">CPD-15088</text>
<pad name="9" x="27.94" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="10" x="25.4" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="11" x="22.86" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="12" x="20.32" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="13" x="17.78" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="14" x="15.24" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="15" x="12.7" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="16" x="10.16" y="-5.08" drill="0.5" diameter="1.8"/>
</package>
<package name="MATRIX_8X8_20MM">
<description>LED Matrix 8x8 20mm RED 07088BH</description>
<wire x1="0" y1="0" x2="1" y2="0" width="0.127" layer="21"/>
<wire x1="1" y1="0" x2="20" y2="0" width="0.127" layer="21"/>
<wire x1="20" y1="0" x2="20" y2="20" width="0.127" layer="21"/>
<wire x1="20" y1="20" x2="0" y2="20" width="0.127" layer="21"/>
<wire x1="0" y1="20" x2="0" y2="1" width="0.127" layer="21"/>
<pad name="P$1" x="1.25" y="2.5" drill="0.8" shape="square" first="yes"/>
<pad name="P$2" x="3.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$3" x="6.25" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$4" x="8.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$5" x="11.25" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$6" x="13.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$7" x="16.25" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$8" x="18.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$9" x="18.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$10" x="16.3" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$11" x="13.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$12" x="11.3" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$13" x="8.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$14" x="6.3" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$15" x="3.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$16" x="1.3" y="17.5" drill="0.8" shape="octagon"/>
<wire x1="0" y1="1" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="1" x2="1" y2="0" width="0.127" layer="21"/>
<text x="0" y="20.32" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="LED_8X8_MATRIX">
<description>8x8 LED matrix</description>
<wire x1="0" y1="0" x2="22.86" y2="0" width="0.254" layer="94"/>
<wire x1="22.86" y1="0" x2="22.86" y2="-22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="-22.86" x2="0" y2="-22.86" width="0.254" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="0" width="0.254" layer="94"/>
<text x="1.27" y="0.508" size="1.27" layer="94">&gt;NAME</text>
<pin name="ROW1" x="-2.54" y="-2.54" length="short"/>
<pin name="ROW2" x="-2.54" y="-5.08" length="short"/>
<pin name="ROW3" x="-2.54" y="-7.62" length="short"/>
<pin name="ROW4" x="-2.54" y="-10.16" length="short"/>
<pin name="ROW5" x="-2.54" y="-12.7" length="short"/>
<pin name="ROW6" x="-2.54" y="-15.24" length="short"/>
<pin name="ROW7" x="-2.54" y="-17.78" length="short"/>
<pin name="ROW8" x="-2.54" y="-20.32" length="short"/>
<pin name="COL1" x="25.4" y="-2.54" length="short" rot="R180"/>
<pin name="COL2" x="25.4" y="-5.08" length="short" rot="R180"/>
<pin name="COL3" x="25.4" y="-7.62" length="short" rot="R180"/>
<pin name="COL4" x="25.4" y="-10.16" length="short" rot="R180"/>
<pin name="COL5" x="25.4" y="-12.7" length="short" rot="R180"/>
<pin name="COL6" x="25.4" y="-15.24" length="short" rot="R180"/>
<pin name="COL7" x="25.4" y="-17.78" length="short" rot="R180"/>
<pin name="COL8" x="25.4" y="-20.32" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED_8X8_MATRIX">
<description>CPD-15088A YGD2/A Green 8x8 LED matrix</description>
<gates>
<gate name="G$1" symbol="LED_8X8_MATRIX" x="25.4" y="-20.32"/>
</gates>
<devices>
<device name="YGD2/A" package="MATRIX_8X8_38MM">
<connects>
<connect gate="G$1" pin="COL1" pad="13"/>
<connect gate="G$1" pin="COL2" pad="3"/>
<connect gate="G$1" pin="COL3" pad="4"/>
<connect gate="G$1" pin="COL4" pad="10"/>
<connect gate="G$1" pin="COL5" pad="6"/>
<connect gate="G$1" pin="COL6" pad="11"/>
<connect gate="G$1" pin="COL7" pad="15"/>
<connect gate="G$1" pin="COL8" pad="16"/>
<connect gate="G$1" pin="ROW1" pad="9"/>
<connect gate="G$1" pin="ROW2" pad="14"/>
<connect gate="G$1" pin="ROW3" pad="8"/>
<connect gate="G$1" pin="ROW4" pad="12"/>
<connect gate="G$1" pin="ROW5" pad="1"/>
<connect gate="G$1" pin="ROW6" pad="7"/>
<connect gate="G$1" pin="ROW7" pad="2"/>
<connect gate="G$1" pin="ROW8" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07088BH" package="MATRIX_8X8_20MM">
<connects>
<connect gate="G$1" pin="COL1" pad="P$13"/>
<connect gate="G$1" pin="COL2" pad="P$3"/>
<connect gate="G$1" pin="COL3" pad="P$4"/>
<connect gate="G$1" pin="COL4" pad="P$10"/>
<connect gate="G$1" pin="COL5" pad="P$6"/>
<connect gate="G$1" pin="COL6" pad="P$11"/>
<connect gate="G$1" pin="COL7" pad="P$15"/>
<connect gate="G$1" pin="COL8" pad="P$16"/>
<connect gate="G$1" pin="ROW1" pad="P$5"/>
<connect gate="G$1" pin="ROW2" pad="P$2"/>
<connect gate="G$1" pin="ROW3" pad="P$7"/>
<connect gate="G$1" pin="ROW4" pad="P$1"/>
<connect gate="G$1" pin="ROW5" pad="P$12"/>
<connect gate="G$1" pin="ROW6" pad="P$8"/>
<connect gate="G$1" pin="ROW7" pad="P$14"/>
<connect gate="G$1" pin="ROW8" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="interboard">
<packages>
<package name="ONE_SIDED">
<smd name="P$1" x="4.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$2" x="6.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$3" x="8.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$4" x="10.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$5" x="12.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$6" x="14.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$7" x="16.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$8" x="18.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$9" x="20.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$10" x="22.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$11" x="24.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$12" x="26.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$13" x="28.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$14" x="30.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$15" x="32.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$16" x="34.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$17" x="36.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$18" x="38.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$19" x="40.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$20" x="42.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$21" x="44.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$22" x="46.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$23" x="48.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$24" x="50.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$25" x="52.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$26" x="54.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$27" x="56.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$28" x="58.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$29" x="60.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$30" x="62.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$31" x="64.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$32" x="66.564" y="-2.317" dx="1.5" dy="3" layer="1"/>
<smd name="P$64" x="4.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$63" x="6.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$62" x="8.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$61" x="10.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$60" x="12.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$59" x="14.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$58" x="16.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$57" x="18.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$56" x="20.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$55" x="22.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$54" x="24.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$53" x="26.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$52" x="28.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$51" x="30.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$50" x="32.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$49" x="34.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$48" x="36.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$47" x="38.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$46" x="40.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$45" x="42.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$44" x="44.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$43" x="46.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$42" x="48.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$41" x="50.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$40" x="52.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$39" x="54.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$38" x="56.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$37" x="58.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$36" x="60.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$35" x="62.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$34" x="64.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<smd name="P$33" x="66.556" y="2.236" dx="1.5" dy="3" layer="1"/>
<pad name="GND@1" x="1.564" y="-1.501" drill="1" diameter="3" shape="square"/>
<pad name="GND@2" x="69.564" y="-1.501" drill="1" diameter="3" shape="square"/>
<pad name="GND@3" x="1.564" y="1.547" drill="1" diameter="3" shape="square"/>
<pad name="GND@4" x="69.564" y="1.547" drill="1" diameter="3" shape="square"/>
</package>
<package name="TWO_SIDED">
<smd name="P$1" x="4.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$2" x="6.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$3" x="8.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$4" x="10.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$5" x="12.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$6" x="14.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$7" x="16.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$8" x="18.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$9" x="20.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$10" x="22.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$11" x="24.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$12" x="26.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$13" x="28.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$14" x="30.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$15" x="32.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$16" x="34.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$17" x="36.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$18" x="38.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$19" x="40.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$20" x="42.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$21" x="44.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$22" x="46.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$23" x="48.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$24" x="50.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$25" x="52.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$26" x="54.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$27" x="56.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$28" x="58.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$29" x="60.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$30" x="62.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$31" x="64.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$32" x="66.5" y="1.5" dx="1.5" dy="3" layer="1"/>
<smd name="P$33" x="66.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$34" x="64.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$35" x="62.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$36" x="60.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$37" x="58.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$38" x="56.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$39" x="54.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$40" x="52.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$41" x="50.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$42" x="48.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$43" x="46.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$44" x="44.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$45" x="42.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$46" x="40.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$47" x="38.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$48" x="36.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$49" x="34.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$50" x="32.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$51" x="30.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$52" x="28.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$53" x="26.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$54" x="24.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$55" x="22.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$56" x="20.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$57" x="18.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$58" x="16.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$59" x="14.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$60" x="12.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$61" x="10.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$62" x="8.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$63" x="6.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<smd name="P$64" x="4.5" y="1.5" dx="1.5" dy="3" layer="16" rot="R180"/>
<pad name="GND@1" x="1.5" y="1.5" drill="1" diameter="3" shape="square"/>
<pad name="GND@2" x="69.5" y="1.5" drill="1" diameter="3" shape="square"/>
<pad name="GND@3" x="1.5" y="4.8" drill="1" diameter="3" shape="square"/>
<pad name="GND@4" x="69.5" y="4.9" drill="1" diameter="3" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="ANGLE_BOARD_CONNECTOR">
<pin name="P$1" x="-5.08" y="0" length="middle"/>
<pin name="P$2" x="-5.08" y="-2.54" length="middle"/>
<pin name="P$3" x="-5.08" y="-5.08" length="middle"/>
<pin name="P$4" x="-5.08" y="-7.62" length="middle"/>
<pin name="P$5" x="-5.08" y="-10.16" length="middle"/>
<pin name="P$6" x="-5.08" y="-12.7" length="middle"/>
<pin name="P$7" x="-5.08" y="-15.24" length="middle"/>
<pin name="P$8" x="-5.08" y="-17.78" length="middle"/>
<pin name="P$9" x="-5.08" y="-20.32" length="middle"/>
<pin name="P$10" x="-5.08" y="-22.86" length="middle"/>
<pin name="P$11" x="-5.08" y="-25.4" length="middle"/>
<pin name="P$12" x="-5.08" y="-27.94" length="middle"/>
<pin name="P$13" x="-5.08" y="-30.48" length="middle"/>
<pin name="P$14" x="-5.08" y="-33.02" length="middle"/>
<pin name="P$15" x="-5.08" y="-35.56" length="middle"/>
<pin name="P$16" x="-5.08" y="-38.1" length="middle"/>
<pin name="P$17" x="-5.08" y="-40.64" length="middle"/>
<pin name="P$18" x="-5.08" y="-43.18" length="middle"/>
<pin name="P$19" x="-5.08" y="-45.72" length="middle"/>
<pin name="P$20" x="-5.08" y="-48.26" length="middle"/>
<pin name="P$21" x="-5.08" y="-50.8" length="middle"/>
<pin name="P$22" x="-5.08" y="-53.34" length="middle"/>
<pin name="P$23" x="-5.08" y="-55.88" length="middle"/>
<pin name="P$24" x="-5.08" y="-58.42" length="middle"/>
<pin name="P$25" x="-5.08" y="-60.96" length="middle"/>
<pin name="P$26" x="-5.08" y="-63.5" length="middle"/>
<pin name="P$27" x="-5.08" y="-66.04" length="middle"/>
<pin name="P$28" x="-5.08" y="-68.58" length="middle"/>
<pin name="P$29" x="-5.08" y="-71.12" length="middle"/>
<pin name="P$30" x="-5.08" y="-73.66" length="middle"/>
<pin name="P$31" x="-5.08" y="-76.2" length="middle"/>
<pin name="P$32" x="-5.08" y="-78.74" length="middle"/>
<pin name="P$33" x="20.32" y="-78.74" length="middle" rot="R180"/>
<pin name="P$34" x="20.32" y="-76.2" length="middle" rot="R180"/>
<pin name="P$35" x="20.32" y="-73.66" length="middle" rot="R180"/>
<pin name="P$36" x="20.32" y="-71.12" length="middle" rot="R180"/>
<pin name="P$37" x="20.32" y="-68.58" length="middle" rot="R180"/>
<pin name="P$38" x="20.32" y="-66.04" length="middle" rot="R180"/>
<pin name="P$39" x="20.32" y="-63.5" length="middle" rot="R180"/>
<pin name="P$40" x="20.32" y="-60.96" length="middle" rot="R180"/>
<pin name="P$41" x="20.32" y="-58.42" length="middle" rot="R180"/>
<pin name="P$42" x="20.32" y="-55.88" length="middle" rot="R180"/>
<pin name="P$43" x="20.32" y="-53.34" length="middle" rot="R180"/>
<pin name="P$44" x="20.32" y="-50.8" length="middle" rot="R180"/>
<pin name="P$45" x="20.32" y="-48.26" length="middle" rot="R180"/>
<pin name="P$46" x="20.32" y="-45.72" length="middle" rot="R180"/>
<pin name="P$47" x="20.32" y="-43.18" length="middle" rot="R180"/>
<pin name="P$48" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="P$49" x="20.32" y="-38.1" length="middle" rot="R180"/>
<pin name="P$50" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="P$51" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="P$52" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="P$53" x="20.32" y="-27.94" length="middle" rot="R180"/>
<pin name="P$54" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="P$55" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="P$56" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="P$57" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="P$58" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="P$59" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="P$60" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="P$61" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="P$62" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="P$63" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="P$64" x="20.32" y="0" length="middle" rot="R180"/>
<wire x1="0" y1="-81.28" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="2.54" x2="15.24" y2="-81.28" width="0.254" layer="94"/>
<wire x1="15.24" y1="-81.28" x2="0" y2="-81.28" width="0.254" layer="94"/>
<pin name="GND@1" x="5.08" y="-86.36" visible="off" length="middle" rot="R90"/>
<pin name="GND@2" x="10.16" y="-86.36" visible="off" length="middle" rot="R90"/>
<pin name="GND@3" x="5.08" y="7.62" visible="off" length="middle" rot="R270"/>
<pin name="GND@4" x="10.16" y="7.62" visible="off" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ANGLE_BOARD_CONNECTOR">
<description>Angle interboard connector</description>
<gates>
<gate name="G$1" symbol="ANGLE_BOARD_CONNECTOR" x="0" y="-2.54"/>
</gates>
<devices>
<device name="ONE_SIDED" package="ONE_SIDED">
<connects>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$10" pad="P$10"/>
<connect gate="G$1" pin="P$11" pad="P$11"/>
<connect gate="G$1" pin="P$12" pad="P$12"/>
<connect gate="G$1" pin="P$13" pad="P$13"/>
<connect gate="G$1" pin="P$14" pad="P$14"/>
<connect gate="G$1" pin="P$15" pad="P$15"/>
<connect gate="G$1" pin="P$16" pad="P$16"/>
<connect gate="G$1" pin="P$17" pad="P$17"/>
<connect gate="G$1" pin="P$18" pad="P$18"/>
<connect gate="G$1" pin="P$19" pad="P$19"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$20" pad="P$20"/>
<connect gate="G$1" pin="P$21" pad="P$21"/>
<connect gate="G$1" pin="P$22" pad="P$22"/>
<connect gate="G$1" pin="P$23" pad="P$23"/>
<connect gate="G$1" pin="P$24" pad="P$24"/>
<connect gate="G$1" pin="P$25" pad="P$25"/>
<connect gate="G$1" pin="P$26" pad="P$26"/>
<connect gate="G$1" pin="P$27" pad="P$27"/>
<connect gate="G$1" pin="P$28" pad="P$28"/>
<connect gate="G$1" pin="P$29" pad="P$29"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$30" pad="P$30"/>
<connect gate="G$1" pin="P$31" pad="P$31"/>
<connect gate="G$1" pin="P$32" pad="P$32"/>
<connect gate="G$1" pin="P$33" pad="P$33"/>
<connect gate="G$1" pin="P$34" pad="P$34"/>
<connect gate="G$1" pin="P$35" pad="P$35"/>
<connect gate="G$1" pin="P$36" pad="P$36"/>
<connect gate="G$1" pin="P$37" pad="P$37"/>
<connect gate="G$1" pin="P$38" pad="P$38"/>
<connect gate="G$1" pin="P$39" pad="P$39"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$40" pad="P$40"/>
<connect gate="G$1" pin="P$41" pad="P$41"/>
<connect gate="G$1" pin="P$42" pad="P$42"/>
<connect gate="G$1" pin="P$43" pad="P$43"/>
<connect gate="G$1" pin="P$44" pad="P$44"/>
<connect gate="G$1" pin="P$45" pad="P$45"/>
<connect gate="G$1" pin="P$46" pad="P$46"/>
<connect gate="G$1" pin="P$47" pad="P$47"/>
<connect gate="G$1" pin="P$48" pad="P$48"/>
<connect gate="G$1" pin="P$49" pad="P$49"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$50" pad="P$50"/>
<connect gate="G$1" pin="P$51" pad="P$51"/>
<connect gate="G$1" pin="P$52" pad="P$52"/>
<connect gate="G$1" pin="P$53" pad="P$53"/>
<connect gate="G$1" pin="P$54" pad="P$54"/>
<connect gate="G$1" pin="P$55" pad="P$55"/>
<connect gate="G$1" pin="P$56" pad="P$56"/>
<connect gate="G$1" pin="P$57" pad="P$57"/>
<connect gate="G$1" pin="P$58" pad="P$58"/>
<connect gate="G$1" pin="P$59" pad="P$59"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$60" pad="P$60"/>
<connect gate="G$1" pin="P$61" pad="P$61"/>
<connect gate="G$1" pin="P$62" pad="P$62"/>
<connect gate="G$1" pin="P$63" pad="P$63"/>
<connect gate="G$1" pin="P$64" pad="P$64"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
<connect gate="G$1" pin="P$9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TWO_SIDED" package="TWO_SIDED">
<connects>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$10" pad="P$10"/>
<connect gate="G$1" pin="P$11" pad="P$11"/>
<connect gate="G$1" pin="P$12" pad="P$12"/>
<connect gate="G$1" pin="P$13" pad="P$13"/>
<connect gate="G$1" pin="P$14" pad="P$14"/>
<connect gate="G$1" pin="P$15" pad="P$15"/>
<connect gate="G$1" pin="P$16" pad="P$16"/>
<connect gate="G$1" pin="P$17" pad="P$17"/>
<connect gate="G$1" pin="P$18" pad="P$18"/>
<connect gate="G$1" pin="P$19" pad="P$19"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$20" pad="P$20"/>
<connect gate="G$1" pin="P$21" pad="P$21"/>
<connect gate="G$1" pin="P$22" pad="P$22"/>
<connect gate="G$1" pin="P$23" pad="P$23"/>
<connect gate="G$1" pin="P$24" pad="P$24"/>
<connect gate="G$1" pin="P$25" pad="P$25"/>
<connect gate="G$1" pin="P$26" pad="P$26"/>
<connect gate="G$1" pin="P$27" pad="P$27"/>
<connect gate="G$1" pin="P$28" pad="P$28"/>
<connect gate="G$1" pin="P$29" pad="P$29"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$30" pad="P$30"/>
<connect gate="G$1" pin="P$31" pad="P$31"/>
<connect gate="G$1" pin="P$32" pad="P$32"/>
<connect gate="G$1" pin="P$33" pad="P$33"/>
<connect gate="G$1" pin="P$34" pad="P$34"/>
<connect gate="G$1" pin="P$35" pad="P$35"/>
<connect gate="G$1" pin="P$36" pad="P$36"/>
<connect gate="G$1" pin="P$37" pad="P$37"/>
<connect gate="G$1" pin="P$38" pad="P$38"/>
<connect gate="G$1" pin="P$39" pad="P$39"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$40" pad="P$40"/>
<connect gate="G$1" pin="P$41" pad="P$41"/>
<connect gate="G$1" pin="P$42" pad="P$42"/>
<connect gate="G$1" pin="P$43" pad="P$43"/>
<connect gate="G$1" pin="P$44" pad="P$44"/>
<connect gate="G$1" pin="P$45" pad="P$45"/>
<connect gate="G$1" pin="P$46" pad="P$46"/>
<connect gate="G$1" pin="P$47" pad="P$47"/>
<connect gate="G$1" pin="P$48" pad="P$48"/>
<connect gate="G$1" pin="P$49" pad="P$49"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$50" pad="P$50"/>
<connect gate="G$1" pin="P$51" pad="P$51"/>
<connect gate="G$1" pin="P$52" pad="P$52"/>
<connect gate="G$1" pin="P$53" pad="P$53"/>
<connect gate="G$1" pin="P$54" pad="P$54"/>
<connect gate="G$1" pin="P$55" pad="P$55"/>
<connect gate="G$1" pin="P$56" pad="P$56"/>
<connect gate="G$1" pin="P$57" pad="P$57"/>
<connect gate="G$1" pin="P$58" pad="P$58"/>
<connect gate="G$1" pin="P$59" pad="P$59"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$60" pad="P$60"/>
<connect gate="G$1" pin="P$61" pad="P$61"/>
<connect gate="G$1" pin="P$62" pad="P$62"/>
<connect gate="G$1" pin="P$63" pad="P$63"/>
<connect gate="G$1" pin="P$64" pad="P$64"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
<connect gate="G$1" pin="P$9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
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
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
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
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="U$2" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="U$3" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="U$4" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="U$5" library="interboard" deviceset="ANGLE_BOARD_CONNECTOR" device="ONE_SIDED"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="45.72" y="91.44"/>
<instance part="U$2" gate="G$1" x="86.36" y="91.44"/>
<instance part="U$3" gate="G$1" x="124.46" y="91.44"/>
<instance part="U$4" gate="G$1" x="162.56" y="91.44"/>
<instance part="U$5" gate="G$1" x="76.2" y="17.78" rot="R90"/>
<instance part="GND1" gate="1" x="68.58" y="20.32"/>
<instance part="GND2" gate="1" x="162.56" y="20.32"/>
</instances>
<busses>
<bus name="M1C1,M1C2,M1C3,M1C4,M1C5,M1C6,M1C7,M1C8,M1R1,M1R2,M1R3,M1R4,M1R5,M1R6,M1R7,M1R8,M2C1,M2C2,M2C3,M2C4,M2C5,M2C6,M2C7,M2C8,M2R1,M2R2,M2R3,M2R4,M2R5,M2R6,M2R7,M2R8,M3C1,M3C2,M3C3,M3C4,M3C5,M3C6,M3C7,M3C8,M3R1,M3R2,M3R3,M3R4,M3R5,M3R6,M3R7,M3R8,M4C1,M4C2,M4C3,M4C4,M4C5,M4C6,M4C7,M4C8,M4R1,M4R2,M4R3,M4R4,M4R5,M4R6,M4R7,M4R8">
<segment>
<wire x1="35.56" y1="88.9" x2="35.56" y2="53.34" width="0.762" layer="92"/>
<wire x1="35.56" y1="53.34" x2="55.88" y2="53.34" width="0.762" layer="92"/>
<wire x1="55.88" y1="53.34" x2="76.2" y2="53.34" width="0.762" layer="92"/>
<wire x1="76.2" y1="53.34" x2="116.84" y2="53.34" width="0.762" layer="92"/>
<wire x1="116.84" y1="53.34" x2="154.94" y2="53.34" width="0.762" layer="92"/>
<wire x1="154.94" y1="53.34" x2="198.12" y2="53.34" width="0.762" layer="92"/>
<wire x1="198.12" y1="53.34" x2="198.12" y2="88.9" width="0.762" layer="92"/>
<wire x1="154.94" y1="53.34" x2="154.94" y2="88.9" width="0.762" layer="92"/>
<wire x1="116.84" y1="88.9" x2="116.84" y2="53.34" width="0.762" layer="92"/>
<wire x1="76.2" y1="88.9" x2="76.2" y2="53.34" width="0.762" layer="92"/>
<wire x1="157.48" y1="5.08" x2="55.88" y2="5.08" width="0.762" layer="92"/>
<wire x1="55.88" y1="5.08" x2="55.88" y2="53.34" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="GND@3"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="U$5" gate="G$1" pin="GND@4"/>
<wire x1="68.58" y1="27.94" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<junction x="68.58" y="22.86"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND@1"/>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="U$5" gate="G$1" pin="GND@2"/>
<wire x1="162.56" y1="27.94" x2="162.56" y2="22.86" width="0.1524" layer="91"/>
<junction x="162.56" y="22.86"/>
</segment>
</net>
<net name="M1R1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW1"/>
<wire x1="43.18" y1="88.9" x2="35.56" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$1"/>
<wire x1="76.2" y1="12.7" x2="76.2" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW2"/>
<wire x1="43.18" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$2"/>
<wire x1="78.74" y1="12.7" x2="78.74" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW3"/>
<wire x1="43.18" y1="83.82" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$3"/>
<wire x1="81.28" y1="12.7" x2="81.28" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW4"/>
<wire x1="43.18" y1="81.28" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$4"/>
<wire x1="83.82" y1="12.7" x2="83.82" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW5"/>
<wire x1="43.18" y1="78.74" x2="35.56" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$5"/>
<wire x1="86.36" y1="12.7" x2="86.36" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW6"/>
<wire x1="43.18" y1="76.2" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$6"/>
<wire x1="88.9" y1="12.7" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW7"/>
<wire x1="43.18" y1="73.66" x2="35.56" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$7"/>
<wire x1="91.44" y1="12.7" x2="91.44" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1R8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ROW8"/>
<wire x1="43.18" y1="71.12" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$8"/>
<wire x1="93.98" y1="12.7" x2="93.98" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R1" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$9"/>
<wire x1="96.52" y1="12.7" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW1"/>
<wire x1="83.82" y1="88.9" x2="76.2" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R2" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$10"/>
<wire x1="99.06" y1="12.7" x2="99.06" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW2"/>
<wire x1="83.82" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R3" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$11"/>
<wire x1="101.6" y1="12.7" x2="101.6" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW3"/>
<wire x1="83.82" y1="83.82" x2="76.2" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R4" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$12"/>
<wire x1="104.14" y1="12.7" x2="104.14" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW4"/>
<wire x1="83.82" y1="81.28" x2="76.2" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R5" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$13"/>
<wire x1="106.68" y1="12.7" x2="106.68" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW5"/>
<wire x1="83.82" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R6" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$14"/>
<wire x1="109.22" y1="12.7" x2="109.22" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW6"/>
<wire x1="83.82" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R7" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$15"/>
<wire x1="111.76" y1="12.7" x2="111.76" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW7"/>
<wire x1="83.82" y1="73.66" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2R8" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="P$16"/>
<wire x1="114.3" y1="12.7" x2="114.3" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="ROW8"/>
<wire x1="83.82" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R1" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW1"/>
<wire x1="121.92" y1="88.9" x2="116.84" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$17"/>
<wire x1="116.84" y1="12.7" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R2" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW2"/>
<wire x1="121.92" y1="86.36" x2="116.84" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$18"/>
<wire x1="119.38" y1="12.7" x2="119.38" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW3"/>
<wire x1="121.92" y1="83.82" x2="116.84" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$19"/>
<wire x1="121.92" y1="12.7" x2="121.92" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R4" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW4"/>
<wire x1="121.92" y1="81.28" x2="116.84" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$20"/>
<wire x1="124.46" y1="12.7" x2="124.46" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R5" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW5"/>
<wire x1="121.92" y1="78.74" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$21"/>
<wire x1="127" y1="12.7" x2="127" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R6" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW6"/>
<wire x1="121.92" y1="76.2" x2="116.84" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$22"/>
<wire x1="129.54" y1="12.7" x2="129.54" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R7" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW7"/>
<wire x1="121.92" y1="73.66" x2="116.84" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$23"/>
<wire x1="132.08" y1="12.7" x2="132.08" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3R8" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ROW8"/>
<wire x1="121.92" y1="71.12" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$24"/>
<wire x1="134.62" y1="12.7" x2="134.62" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R1" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW1"/>
<wire x1="160.02" y1="88.9" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$25"/>
<wire x1="137.16" y1="12.7" x2="137.16" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R2" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW2"/>
<wire x1="160.02" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$26"/>
<wire x1="139.7" y1="12.7" x2="139.7" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R3" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW3"/>
<wire x1="160.02" y1="83.82" x2="154.94" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$27"/>
<wire x1="142.24" y1="12.7" x2="142.24" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R4" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW4"/>
<wire x1="160.02" y1="81.28" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$28"/>
<wire x1="144.78" y1="12.7" x2="144.78" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R5" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW5"/>
<wire x1="160.02" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$29"/>
<wire x1="147.32" y1="12.7" x2="147.32" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R6" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW6"/>
<wire x1="160.02" y1="76.2" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$30"/>
<wire x1="149.86" y1="12.7" x2="149.86" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R7" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW7"/>
<wire x1="160.02" y1="73.66" x2="154.94" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$31"/>
<wire x1="152.4" y1="12.7" x2="152.4" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4R8" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="ROW8"/>
<wire x1="160.02" y1="71.12" x2="154.94" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$32"/>
<wire x1="154.94" y1="12.7" x2="154.94" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL1"/>
<wire x1="71.12" y1="88.9" x2="76.2" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$64"/>
<wire x1="76.2" y1="38.1" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL2"/>
<wire x1="71.12" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$63"/>
<wire x1="78.74" y1="38.1" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL3"/>
<wire x1="71.12" y1="83.82" x2="76.2" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$62"/>
<wire x1="81.28" y1="38.1" x2="81.28" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL4"/>
<wire x1="71.12" y1="81.28" x2="76.2" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$61"/>
<wire x1="83.82" y1="38.1" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL5"/>
<wire x1="71.12" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$60"/>
<wire x1="86.36" y1="38.1" x2="86.36" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL6"/>
<wire x1="71.12" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$59"/>
<wire x1="88.9" y1="38.1" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL7"/>
<wire x1="71.12" y1="73.66" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$58"/>
<wire x1="91.44" y1="38.1" x2="91.44" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1C8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="COL8"/>
<wire x1="71.12" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$57"/>
<wire x1="93.98" y1="38.1" x2="93.98" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL1"/>
<wire x1="111.76" y1="88.9" x2="116.84" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$56"/>
<wire x1="96.52" y1="38.1" x2="96.52" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL2"/>
<wire x1="111.76" y1="86.36" x2="116.84" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$55"/>
<wire x1="99.06" y1="38.1" x2="99.06" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C3" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL3"/>
<wire x1="111.76" y1="83.82" x2="116.84" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$54"/>
<wire x1="101.6" y1="38.1" x2="101.6" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL4"/>
<wire x1="111.76" y1="81.28" x2="116.84" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$53"/>
<wire x1="104.14" y1="38.1" x2="104.14" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL5"/>
<wire x1="111.76" y1="78.74" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$52"/>
<wire x1="106.68" y1="38.1" x2="106.68" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C6" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL6"/>
<wire x1="111.76" y1="76.2" x2="116.84" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$51"/>
<wire x1="109.22" y1="38.1" x2="109.22" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C7" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL7"/>
<wire x1="111.76" y1="73.66" x2="116.84" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$50"/>
<wire x1="111.76" y1="38.1" x2="111.76" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M2C8" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="COL8"/>
<wire x1="111.76" y1="71.12" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$49"/>
<wire x1="114.3" y1="38.1" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C1" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL1"/>
<wire x1="149.86" y1="88.9" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$48"/>
<wire x1="116.84" y1="38.1" x2="116.84" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C2" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL2"/>
<wire x1="149.86" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$47"/>
<wire x1="119.38" y1="38.1" x2="119.38" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL3"/>
<wire x1="149.86" y1="83.82" x2="154.94" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$46"/>
<wire x1="121.92" y1="38.1" x2="121.92" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C4" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL4"/>
<wire x1="149.86" y1="81.28" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$45"/>
<wire x1="124.46" y1="38.1" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C5" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL5"/>
<wire x1="149.86" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$44"/>
<wire x1="127" y1="38.1" x2="127" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C6" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL6"/>
<wire x1="149.86" y1="76.2" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$43"/>
<wire x1="129.54" y1="38.1" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C7" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL7"/>
<wire x1="149.86" y1="73.66" x2="154.94" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$42"/>
<wire x1="132.08" y1="38.1" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M3C8" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COL8"/>
<wire x1="149.86" y1="71.12" x2="154.94" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$41"/>
<wire x1="134.62" y1="38.1" x2="134.62" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C1" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL1"/>
<wire x1="187.96" y1="88.9" x2="198.12" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$40"/>
<wire x1="137.16" y1="38.1" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C2" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL2"/>
<wire x1="187.96" y1="86.36" x2="198.12" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$39"/>
<wire x1="139.7" y1="38.1" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C3" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL3"/>
<wire x1="187.96" y1="83.82" x2="198.12" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$38"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C4" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL4"/>
<wire x1="187.96" y1="81.28" x2="198.12" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$37"/>
<wire x1="144.78" y1="38.1" x2="144.78" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C5" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL5"/>
<wire x1="187.96" y1="78.74" x2="198.12" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$36"/>
<wire x1="147.32" y1="38.1" x2="147.32" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C6" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL6"/>
<wire x1="187.96" y1="76.2" x2="198.12" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$35"/>
<wire x1="149.86" y1="38.1" x2="149.86" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C7" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL7"/>
<wire x1="187.96" y1="73.66" x2="198.12" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$34"/>
<wire x1="152.4" y1="38.1" x2="152.4" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M4C8" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COL8"/>
<wire x1="187.96" y1="71.12" x2="198.12" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="P$33"/>
<wire x1="154.94" y1="38.1" x2="154.94" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
