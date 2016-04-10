<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(11:0)" />
        <signal name="XLXN_2(11:0)" />
        <signal name="XLXN_3(23:0)" />
        <signal name="XLXN_4(23:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="CLK" />
        <signal name="XLXN_6" />
        <signal name="XLXN_14(31:0)" />
        <signal name="XLXN_15" />
        <signal name="ARDUINO_22" />
        <signal name="ARDUINO_24" />
        <signal name="ARDUINO_26" />
        <signal name="ARDUINO_28" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="ARDUINO_22" />
        <port polarity="Output" name="ARDUINO_24" />
        <port polarity="Output" name="ARDUINO_26" />
        <port polarity="Output" name="ARDUINO_28" />
        <blockdef name="waveform_gen">
            <timestamp>2016-4-10T9:39:41</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="shift_left_12_to_24">
            <timestamp>2016-4-10T9:39:36</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="i2s_master">
            <timestamp>2016-4-10T9:50:37</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clk_32MHz_to_100MHz">
            <timestamp>2016-4-10T9:39:22</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="waveform_gen" name="XLXI_1">
            <blockpin signalname="XLXN_5" name="clk" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="XLXN_14(31:0)" name="phase_inc(31:0)" />
            <blockpin signalname="XLXN_1(11:0)" name="sin_out(11:0)" />
            <blockpin name="cos_out(11:0)" />
            <blockpin name="squ_out(11:0)" />
            <blockpin signalname="XLXN_2(11:0)" name="saw_out(11:0)" />
        </block>
        <block symbolname="shift_left_12_to_24" name="XLXI_2">
            <blockpin signalname="XLXN_1(11:0)" name="data_in(11:0)" />
            <blockpin signalname="XLXN_3(23:0)" name="data_out(23:0)" />
        </block>
        <block symbolname="i2s_master" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="reset" />
            <blockpin signalname="XLXN_5" name="clk" />
            <blockpin signalname="XLXN_3(23:0)" name="data_l(23:0)" />
            <blockpin signalname="XLXN_4(23:0)" name="data_r(23:0)" />
            <blockpin signalname="ARDUINO_22" name="mclk" />
            <blockpin signalname="ARDUINO_24" name="lrclk" />
            <blockpin signalname="ARDUINO_26" name="sclk" />
            <blockpin signalname="ARDUINO_28" name="sdata" />
        </block>
        <block symbolname="shift_left_12_to_24" name="XLXI_4">
            <blockpin signalname="XLXN_2(11:0)" name="data_in(11:0)" />
            <blockpin signalname="XLXN_4(23:0)" name="data_out(23:0)" />
        </block>
        <block symbolname="clk_32MHz_to_100MHz" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK_IN1" />
            <blockpin signalname="XLXN_5" name="CLK_OUT1" />
        </block>
        <block symbolname="pullup" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="pulldown" name="XLXI_7">
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_8">
            <attr value="000049D2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_14(31:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1040" y="672" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1664" y="736" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1040" y="864" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1(11:0)">
            <wire x2="1040" y1="640" y2="640" x1="944" />
        </branch>
        <branch name="XLXN_2(11:0)">
            <wire x2="1040" y1="832" y2="832" x1="944" />
        </branch>
        <branch name="XLXN_3(23:0)">
            <wire x2="1664" y1="640" y2="640" x1="1472" />
        </branch>
        <branch name="XLXN_4(23:0)">
            <wire x2="1568" y1="832" y2="832" x1="1472" />
            <wire x2="1568" y1="704" y2="832" x1="1568" />
            <wire x2="1664" y1="704" y2="704" x1="1568" />
        </branch>
        <instance x="1488" y="512" name="XLXI_7" orien="R0" />
        <instance x="16" y="80" name="XLXI_5" orien="R90">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="192" y="80" type="branch" />
            <wire x2="192" y1="80" y2="80" x1="48" />
            <wire x2="240" y1="80" y2="80" x1="192" />
        </branch>
        <iomarker fontsize="28" x="240" y="80" name="CLK" orien="R0" />
        <instance x="336" y="448" name="XLXI_6" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="48" y1="464" y2="480" x1="48" />
            <wire x2="1056" y1="480" y2="480" x1="48" />
            <wire x2="1056" y1="480" y2="576" x1="1056" />
            <wire x2="1664" y1="576" y2="576" x1="1056" />
            <wire x2="48" y1="480" y2="640" x1="48" />
            <wire x2="480" y1="640" y2="640" x1="48" />
        </branch>
        <instance x="480" y="864" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="400" y1="448" y2="736" x1="400" />
            <wire x2="480" y1="736" y2="736" x1="400" />
        </branch>
        <instance x="160" y="800" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_14(31:0)">
            <wire x2="480" y1="832" y2="832" x1="304" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1552" y1="288" y2="352" x1="1552" />
            <wire x2="1632" y1="288" y2="288" x1="1552" />
            <wire x2="1632" y1="288" y2="512" x1="1632" />
            <wire x2="1664" y1="512" y2="512" x1="1632" />
        </branch>
        <branch name="ARDUINO_22">
            <wire x2="2160" y1="512" y2="512" x1="2048" />
        </branch>
        <branch name="ARDUINO_24">
            <wire x2="2160" y1="576" y2="576" x1="2048" />
        </branch>
        <branch name="ARDUINO_26">
            <wire x2="2160" y1="640" y2="640" x1="2048" />
        </branch>
        <branch name="ARDUINO_28">
            <wire x2="2160" y1="704" y2="704" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2160" y="512" name="ARDUINO_22" orien="R0" />
        <iomarker fontsize="28" x="2160" y="576" name="ARDUINO_24" orien="R0" />
        <iomarker fontsize="28" x="2160" y="640" name="ARDUINO_26" orien="R0" />
        <iomarker fontsize="28" x="2160" y="704" name="ARDUINO_28" orien="R0" />
    </sheet>
</drawing>