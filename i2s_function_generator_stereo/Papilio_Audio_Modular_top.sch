<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ARDUINO_22" />
        <signal name="ARDUINO_26" />
        <signal name="ARDUINO_24" />
        <signal name="XLXN_15" />
        <signal name="XLXN_76(15:0)" />
        <signal name="XLXN_6" />
        <signal name="ARDUINO_28" />
        <signal name="CLK" />
        <signal name="ARDUINO_29" />
        <signal name="accum(31:0)" />
        <signal name="ARDUINO_31" />
        <signal name="XLXN_321(15:0)" />
        <signal name="XLXN_322(31:0)" />
        <signal name="ARDUINO_35" />
        <signal name="ARDUINO_33" />
        <signal name="XLXN_370" />
        <signal name="XLXN_373" />
        <signal name="XLXN_375(15:0)" />
        <signal name="XLXN_378" />
        <signal name="XLXN_379(15:0)" />
        <signal name="XLXN_380(23:0)" />
        <signal name="XLXN_381(23:0)" />
        <signal name="XLXN_383" />
        <signal name="XLXN_384(23:0)" />
        <signal name="XLXN_385" />
        <signal name="XLXN_386" />
        <signal name="XLXN_387" />
        <signal name="XLXN_388" />
        <signal name="XLXN_390(23:0)" />
        <signal name="XLXN_391(23:0)" />
        <signal name="XLXN_392" />
        <signal name="XLXN_393" />
        <signal name="XLXN_394(23:0)" />
        <signal name="XLXN_395(23:0)" />
        <signal name="XLXN_396" />
        <signal name="XLXN_397" />
        <signal name="XLXN_398" />
        <signal name="XLXN_399" />
        <signal name="XLXN_400" />
        <signal name="XLXN_401" />
        <signal name="XLXN_402" />
        <signal name="XLXN_403" />
        <signal name="XLXN_404" />
        <signal name="XLXN_405" />
        <signal name="XLXN_406" />
        <signal name="XLXN_407" />
        <signal name="XLXN_410" />
        <signal name="XLXN_411" />
        <port polarity="Output" name="ARDUINO_22" />
        <port polarity="Output" name="ARDUINO_26" />
        <port polarity="Output" name="ARDUINO_24" />
        <port polarity="Output" name="ARDUINO_28" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ARDUINO_29" />
        <port polarity="Input" name="ARDUINO_31" />
        <port polarity="Input" name="ARDUINO_35" />
        <port polarity="Input" name="ARDUINO_33" />
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
        <blockdef name="shift_left_16_to_24">
            <timestamp>2016-4-10T17:57:30</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="BasicFilter_LowPass">
            <timestamp>2016-4-17T11:0:12</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="ROT_CTRL">
            <timestamp>2016-4-19T22:26:44</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fn_generator_stereo_sine">
            <timestamp>2016-4-20T20:29:25</timestamp>
            <rect width="432" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-236" height="24" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <block symbolname="pulldown" name="XLXI_7">
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="clk_32MHz_to_100MHz" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK_IN1" />
            <blockpin signalname="XLXN_396" name="CLK_OUT1" />
        </block>
        <block symbolname="i2s_master" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="reset" />
            <blockpin signalname="XLXN_396" name="clk" />
            <blockpin signalname="XLXN_394(23:0)" name="data_l(23:0)" />
            <blockpin signalname="XLXN_395(23:0)" name="data_r(23:0)" />
            <blockpin signalname="ARDUINO_22" name="mclk" />
            <blockpin signalname="ARDUINO_24" name="lrclk" />
            <blockpin signalname="ARDUINO_26" name="sclk" />
            <blockpin signalname="ARDUINO_28" name="sdata" />
        </block>
        <block symbolname="ROT_CTRL" name="XLXI_83">
            <blockpin signalname="ARDUINO_24" name="CLOCK" />
            <blockpin signalname="ARDUINO_31" name="ROT_A" />
            <blockpin signalname="ARDUINO_29" name="ROT_B" />
            <blockpin name="DIRECTION(1:0)" />
            <blockpin signalname="accum(31:0)" name="counter(31:0)" />
        </block>
        <block symbolname="fn_generator_stereo_sine" name="XLXI_84">
            <blockpin signalname="ARDUINO_24" name="clk" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="accum(31:0)" name="phase_inc_left(31:0)" />
            <blockpin signalname="XLXN_322(31:0)" name="phase_inc_right(31:0)" />
            <blockpin signalname="XLXN_76(15:0)" name="sin_out_left(15:0)" />
            <blockpin signalname="XLXN_321(15:0)" name="sin_out_right(15:0)" />
        </block>
        <block symbolname="ROT_CTRL" name="XLXI_85">
            <blockpin signalname="ARDUINO_24" name="CLOCK" />
            <blockpin signalname="ARDUINO_35" name="ROT_A" />
            <blockpin signalname="ARDUINO_33" name="ROT_B" />
            <blockpin name="DIRECTION(1:0)" />
            <blockpin signalname="XLXN_322(31:0)" name="counter(31:0)" />
        </block>
        <block symbolname="BasicFilter_LowPass" name="XLXI_40">
            <blockpin signalname="ARDUINO_24" name="clk" />
            <blockpin signalname="XLXN_391(23:0)" name="data_in(23:0)" />
            <blockpin signalname="XLXN_395(23:0)" name="data_out(23:0)" />
        </block>
        <block symbolname="BasicFilter_LowPass" name="XLXI_39">
            <blockpin signalname="ARDUINO_24" name="clk" />
            <blockpin signalname="XLXN_390(23:0)" name="data_in(23:0)" />
            <blockpin signalname="XLXN_394(23:0)" name="data_out(23:0)" />
        </block>
        <block symbolname="shift_left_16_to_24" name="XLXI_19">
            <blockpin signalname="XLXN_321(15:0)" name="data_in(15:0)" />
            <blockpin signalname="XLXN_391(23:0)" name="data_out(23:0)" />
        </block>
        <block symbolname="shift_left_16_to_24" name="XLXI_18">
            <blockpin signalname="XLXN_76(15:0)" name="data_in(15:0)" />
            <blockpin signalname="XLXN_390(23:0)" name="data_out(23:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ARDUINO_22">
            <wire x2="3120" y1="480" y2="480" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3120" y="480" name="ARDUINO_22" orien="R0" />
        <iomarker fontsize="28" x="3120" y="544" name="ARDUINO_24" orien="R0" />
        <iomarker fontsize="28" x="3120" y="608" name="ARDUINO_26" orien="R0" />
        <iomarker fontsize="28" x="3120" y="672" name="ARDUINO_28" orien="R0" />
        <iomarker fontsize="28" x="48" y="928" name="ARDUINO_31" orien="R90" />
        <iomarker fontsize="28" x="96" y="928" name="ARDUINO_29" orien="R90" />
        <branch name="ARDUINO_29">
            <wire x2="160" y1="752" y2="752" x1="96" />
            <wire x2="96" y1="752" y2="928" x1="96" />
        </branch>
        <branch name="ARDUINO_31">
            <wire x2="160" y1="688" y2="688" x1="48" />
            <wire x2="48" y1="688" y2="928" x1="48" />
        </branch>
        <branch name="XLXN_76(15:0)">
            <wire x2="1488" y1="624" y2="624" x1="1408" />
        </branch>
        <branch name="XLXN_321(15:0)">
            <wire x2="1488" y1="816" y2="816" x1="1408" />
        </branch>
        <branch name="XLXN_322(31:0)">
            <wire x2="768" y1="1568" y2="1568" x1="576" />
            <wire x2="768" y1="816" y2="1568" x1="768" />
            <wire x2="848" y1="816" y2="816" x1="768" />
        </branch>
        <iomarker fontsize="28" x="48" y="1392" name="ARDUINO_33" orien="R270" />
        <iomarker fontsize="28" x="96" y="1392" name="ARDUINO_35" orien="R270" />
        <text style="fontsize:64;fontname:Arial" x="20" y="2652">Nic Newdigate I2S-121 2016-04-21</text>
        <branch name="ARDUINO_33">
            <wire x2="48" y1="1392" y2="1568" x1="48" />
            <wire x2="192" y1="1568" y2="1568" x1="48" />
        </branch>
        <branch name="ARDUINO_35">
            <wire x2="96" y1="1392" y2="1504" x1="96" />
            <wire x2="192" y1="1504" y2="1504" x1="96" />
        </branch>
        <instance x="192" y="1600" name="XLXI_85" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1488" y1="368" y2="368" x1="1424" />
            <wire x2="1504" y1="368" y2="368" x1="1488" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="672" y1="448" y2="688" x1="672" />
            <wire x2="848" y1="688" y2="688" x1="672" />
        </branch>
        <instance x="2240" y="320" name="XLXI_7" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="2304" y1="144" y2="160" x1="2304" />
            <wire x2="2592" y1="144" y2="144" x1="2304" />
            <wire x2="2592" y1="144" y2="480" x1="2592" />
        </branch>
        <instance x="2096" y="848" name="XLXI_40" orien="R0">
        </instance>
        <instance x="2096" y="656" name="XLXI_39" orien="R0">
        </instance>
        <instance x="2592" y="704" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_390(23:0)">
            <wire x2="2096" y1="624" y2="624" x1="1920" />
        </branch>
        <branch name="XLXN_391(23:0)">
            <wire x2="2096" y1="816" y2="816" x1="1920" />
        </branch>
        <instance x="848" y="848" name="XLXI_84" orien="R0">
        </instance>
        <instance x="1488" y="848" name="XLXI_19" orien="R0">
        </instance>
        <instance x="1488" y="656" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_394(23:0)">
            <wire x2="2560" y1="560" y2="560" x1="2528" />
            <wire x2="2560" y1="560" y2="608" x1="2560" />
            <wire x2="2592" y1="608" y2="608" x1="2560" />
        </branch>
        <branch name="XLXN_395(23:0)">
            <wire x2="2560" y1="752" y2="752" x1="2528" />
            <wire x2="2560" y1="672" y2="752" x1="2560" />
            <wire x2="2592" y1="672" y2="672" x1="2560" />
        </branch>
        <branch name="ARDUINO_28">
            <wire x2="3120" y1="672" y2="672" x1="2976" />
        </branch>
        <branch name="ARDUINO_26">
            <wire x2="3120" y1="608" y2="608" x1="2976" />
        </branch>
        <branch name="ARDUINO_24">
            <wire x2="16" y1="112" y2="1440" x1="16" />
            <wire x2="192" y1="1440" y2="1440" x1="16" />
            <wire x2="80" y1="112" y2="112" x1="16" />
            <wire x2="80" y1="112" y2="624" x1="80" />
            <wire x2="160" y1="624" y2="624" x1="80" />
            <wire x2="800" y1="112" y2="112" x1="80" />
            <wire x2="800" y1="112" y2="624" x1="800" />
            <wire x2="848" y1="624" y2="624" x1="800" />
            <wire x2="2080" y1="112" y2="112" x1="800" />
            <wire x2="2096" y1="112" y2="112" x1="2080" />
            <wire x2="3072" y1="112" y2="112" x1="2096" />
            <wire x2="3072" y1="112" y2="544" x1="3072" />
            <wire x2="3120" y1="544" y2="544" x1="3072" />
            <wire x2="2080" y1="112" y2="560" x1="2080" />
            <wire x2="2096" y1="560" y2="560" x1="2080" />
            <wire x2="2080" y1="560" y2="752" x1="2080" />
            <wire x2="2096" y1="752" y2="752" x1="2080" />
            <wire x2="3072" y1="544" y2="544" x1="2976" />
        </branch>
        <branch name="accum(31:0)">
            <wire x2="848" y1="752" y2="752" x1="544" />
        </branch>
        <instance x="160" y="784" name="XLXI_83" orien="R0">
        </instance>
        <instance x="608" y="448" name="XLXI_6" orien="R0" />
        <branch name="XLXN_396">
            <wire x2="2576" y1="368" y2="368" x1="1888" />
            <wire x2="2576" y1="368" y2="544" x1="2576" />
            <wire x2="2592" y1="544" y2="544" x1="2576" />
        </branch>
        <instance x="1504" y="400" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1424" y="368" name="CLK" orien="R180" />
    </sheet>
</drawing>