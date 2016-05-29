<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LRLCK" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="BLCK" />
        <signal name="SDATA_IN1" />
        <signal name="SDATA_IN2" />
        <signal name="SDATA_OUT1" />
        <signal name="SDATA_OUT2" />
        <port polarity="Input" name="LRLCK" />
        <port polarity="Input" name="BLCK" />
        <port polarity="Input" name="SDATA_IN1" />
        <port polarity="Input" name="SDATA_IN2" />
        <port polarity="Output" name="SDATA_OUT1" />
        <port polarity="Output" name="SDATA_OUT2" />
        <blockdef name="i2s_mux2">
            <timestamp>2016-5-28T18:12:4</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="i2s_mux2" name="XLXI_3">
            <blockpin signalname="LRLCK" name="LRCLK" />
            <blockpin signalname="BLCK" name="BCLK" />
            <blockpin signalname="SDATA_IN1" name="SDATAIN_1" />
            <blockpin signalname="SDATA_IN2" name="SDATAIN_2" />
            <blockpin signalname="SDATA_OUT1" name="SDATAOUT_1" />
            <blockpin signalname="SDATA_OUT2" name="SDATAOUT_2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <iomarker fontsize="28" x="240" y="320" name="LRLCK" orien="R180" />
        <instance x="736" y="544" name="XLXI_3" orien="R0">
        </instance>
        <branch name="LRLCK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="320" type="branch" />
            <wire x2="272" y1="320" y2="320" x1="240" />
            <wire x2="736" y1="320" y2="320" x1="272" />
        </branch>
        <branch name="BLCK">
            <wire x2="736" y1="384" y2="384" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="384" name="BLCK" orien="R180" />
        <branch name="SDATA_IN1">
            <wire x2="736" y1="448" y2="448" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="448" name="SDATA_IN1" orien="R180" />
        <branch name="SDATA_IN2">
            <wire x2="736" y1="512" y2="512" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="512" name="SDATA_IN2" orien="R180" />
        <branch name="SDATA_OUT1">
            <wire x2="1472" y1="320" y2="320" x1="1152" />
        </branch>
        <branch name="SDATA_OUT2">
            <wire x2="1456" y1="512" y2="512" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1472" y="320" name="SDATA_OUT1" orien="R0" />
        <iomarker fontsize="28" x="1456" y="512" name="SDATA_OUT2" orien="R0" />
    </sheet>
</drawing>