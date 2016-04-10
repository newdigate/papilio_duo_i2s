<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="CLK" />
        <signal name="XLXN_20(23:0)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_2(11:0)" />
        <signal name="XLXN_28(23:0)" />
        <signal name="XLXN_6" />
        <signal name="ARDUINO_22" />
        <signal name="ARDUINO_24" />
        <signal name="ARDUINO_26" />
        <signal name="XLXN_35" />
        <signal name="ARDUINO_28" />
        <signal name="XLXN_15" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42(31:0)" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_47(11:0)" />
        <signal name="XLXN_48(15:0)" />
        <signal name="XLXN_49(23:0)" />
        <signal name="XLXN_52(15:0)" />
        <signal name="XLXN_53(23:0)" />
        <signal name="XLXN_54(23:0)" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_64(23:0)" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_70" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="ARDUINO_22" />
        <port polarity="Output" name="ARDUINO_24" />
        <port polarity="Output" name="ARDUINO_26" />
        <port polarity="Output" name="ARDUINO_28" />
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
        <blockdef name="waveform_gen_14addr_16value">
            <timestamp>2016-4-10T17:31:13</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="shift_left_16_to_24">
            <timestamp>2016-4-10T17:57:30</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="clk_32MHz_to_100MHz" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK_IN1" />
            <blockpin signalname="XLXN_5" name="CLK_OUT1" />
        </block>
        <block symbolname="pullup" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="i2s_master" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="reset" />
            <blockpin signalname="XLXN_5" name="clk" />
            <blockpin signalname="XLXN_53(23:0)" name="data_l(23:0)" />
            <blockpin signalname="XLXN_54(23:0)" name="data_r(23:0)" />
            <blockpin signalname="ARDUINO_22" name="mclk" />
            <blockpin signalname="ARDUINO_24" name="lrclk" />
            <blockpin signalname="ARDUINO_26" name="sclk" />
            <blockpin signalname="ARDUINO_28" name="sdata" />
        </block>
        <block symbolname="pulldown" name="XLXI_7">
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="waveform_gen_14addr_16value" name="XLXI_16">
            <blockpin signalname="ARDUINO_24" name="clk" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="XLXN_42(31:0)" name="phase_inc(31:0)" />
            <blockpin signalname="XLXN_52(15:0)" name="sin_out(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_17">
            <attr value="000049D2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_42(31:0)" name="O" />
        </block>
        <block symbolname="shift_left_16_to_24" name="XLXI_18">
            <blockpin signalname="XLXN_52(15:0)" name="data_in(15:0)" />
            <blockpin signalname="XLXN_53(23:0)" name="data_out(23:0)" />
        </block>
        <block symbolname="shift_left_16_to_24" name="XLXI_19">
            <blockpin signalname="XLXN_52(15:0)" name="data_in(15:0)" />
            <blockpin signalname="XLXN_54(23:0)" name="data_out(23:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="CLK">
            <wire x2="640" y1="256" y2="256" x1="192" />
        </branch>
        <branch name="ARDUINO_22">
            <wire x2="2288" y1="192" y2="192" x1="2192" />
        </branch>
        <branch name="ARDUINO_24">
            <wire x2="576" y1="528" y2="960" x1="576" />
            <wire x2="640" y1="960" y2="960" x1="576" />
            <wire x2="2208" y1="528" y2="528" x1="576" />
            <wire x2="2208" y1="256" y2="256" x1="2192" />
            <wire x2="2272" y1="256" y2="256" x1="2208" />
            <wire x2="2208" y1="256" y2="528" x1="2208" />
        </branch>
        <branch name="ARDUINO_26">
            <wire x2="2272" y1="320" y2="320" x1="2192" />
        </branch>
        <branch name="ARDUINO_28">
            <wire x2="2272" y1="384" y2="384" x1="2192" />
        </branch>
        <instance x="304" y="1552" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_42(31:0)">
            <wire x2="464" y1="1584" y2="1584" x1="448" />
            <wire x2="640" y1="1088" y2="1088" x1="464" />
            <wire x2="464" y1="1088" y2="1584" x1="464" />
        </branch>
        <instance x="640" y="1120" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="368" y1="816" y2="1024" x1="368" />
            <wire x2="640" y1="1024" y2="1024" x1="368" />
        </branch>
        <instance x="1184" y="1488" name="XLXI_19" orien="R0">
        </instance>
        <instance x="1200" y="1280" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_52(15:0)">
            <wire x2="1136" y1="960" y2="960" x1="1088" />
            <wire x2="1136" y1="960" y2="1248" x1="1136" />
            <wire x2="1136" y1="1248" y2="1456" x1="1136" />
            <wire x2="1184" y1="1456" y2="1456" x1="1136" />
            <wire x2="1200" y1="1248" y2="1248" x1="1136" />
        </branch>
        <branch name="XLXN_53(23:0)">
            <wire x2="1744" y1="1248" y2="1248" x1="1632" />
            <wire x2="1808" y1="320" y2="320" x1="1744" />
            <wire x2="1744" y1="320" y2="1248" x1="1744" />
        </branch>
        <branch name="XLXN_54(23:0)">
            <wire x2="1792" y1="1456" y2="1456" x1="1616" />
            <wire x2="1808" y1="384" y2="384" x1="1792" />
            <wire x2="1792" y1="384" y2="1456" x1="1792" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1808" y1="256" y2="256" x1="1024" />
        </branch>
        <instance x="1808" y="416" name="XLXI_3" orien="R0">
        </instance>
        <instance x="640" y="288" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="256" name="CLK" orien="R180" />
        <instance x="1344" y="224" name="XLXI_7" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1408" y1="48" y2="64" x1="1408" />
            <wire x2="1792" y1="48" y2="48" x1="1408" />
            <wire x2="1792" y1="48" y2="192" x1="1792" />
            <wire x2="1808" y1="192" y2="192" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="2288" y="192" name="ARDUINO_22" orien="R0" />
        <iomarker fontsize="28" x="2272" y="256" name="ARDUINO_24" orien="R0" />
        <iomarker fontsize="28" x="2272" y="320" name="ARDUINO_26" orien="R0" />
        <iomarker fontsize="28" x="2272" y="384" name="ARDUINO_28" orien="R0" />
        <instance x="304" y="816" name="XLXI_6" orien="R0" />
    </sheet>
</drawing>