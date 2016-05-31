<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_100" />
        <signal name="XLXN_27" />
        <signal name="RX" />
        <signal name="TX" />
        <signal name="CLK" />
        <signal name="tx_en" />
        <signal name="tx_data(7:0)" />
        <signal name="rx_data(7:0)" />
        <signal name="rx_en" />
        <signal name="tx_ready" />
        <signal name="tx_fifo_empty" />
        <signal name="XLXN_61" />
        <signal name="tx_fifo_not_empty" />
        <signal name="tx_fifo_data(7:0)" />
        <signal name="tx_fifo_wr_en" />
        <signal name="LRCLK" />
        <signal name="BCLK" />
        <signal name="SDATA_IN1" />
        <signal name="SDATA_IN2" />
        <signal name="SDATA_OUT1" />
        <signal name="SDATA_OUT2" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66(7:0)" />
        <signal name="XLXN_69(15:0)" />
        <signal name="XLXN_72(15:0)" />
        <signal name="XLXN_73(15:0)" />
        <port polarity="Input" name="RX" />
        <port polarity="Output" name="TX" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="LRCLK" />
        <port polarity="Input" name="BCLK" />
        <port polarity="Input" name="SDATA_IN1" />
        <port polarity="Input" name="SDATA_IN2" />
        <port polarity="Output" name="SDATA_OUT1" />
        <port polarity="Output" name="SDATA_OUT2" />
        <blockdef name="i2s_mux2">
            <timestamp>2016-5-31T19:32:24</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect style="linecolor:rgb(0,0,255);linestyle:Dot" width="140" x="68" y="-244" height="232" />
            <rect style="linecolor:rgb(255,0,0);linestyle:Dot" width="176" x="252" y="-248" height="112" />
            <rect style="linecolor:rgb(0,128,0);linestyle:Dot" width="360" x="68" y="0" height="180" />
            <line x2="64" y1="-288" y2="-288" x1="0" />
            <rect width="368" x="64" y="-328" height="520" />
            <line x2="368" y1="144" y2="144" style="linecolor:rgb(0,128,0)" x1="416" />
            <rect width="64" x="432" y="116" height="24" />
            <line x2="432" y1="128" y2="128" x1="496" />
            <line x2="400" y1="144" y2="160" style="linecolor:rgb(0,128,0)" x1="416" />
            <line x2="356" y1="96" y2="80" style="linecolor:rgb(0,128,0)" x1="372" />
            <line x2="400" y1="80" y2="80" style="linecolor:rgb(0,128,0)" x1="356" />
            <line x2="496" y1="64" y2="64" x1="432" />
            <rect width="64" x="432" y="52" height="24" />
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
        <blockdef name="basic_uart">
            <timestamp>2016-5-30T11:30:8</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="clk_32_to_100MHz">
            <timestamp>2016-5-30T11:44:21</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="uart_to_contol_interface">
            <timestamp>2016-5-31T18:39:29</timestamp>
            <rect width="400" x="64" y="-308" height="500" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="464" y="132" height="24" />
            <line x2="528" y1="144" y2="144" x1="464" />
            <line x2="528" y1="80" y2="80" x1="464" />
            <rect style="linecolor:rgb(255,0,0);linestyle:Dot;fillcolor:rgb(128,0,0)" width="144" x="316" y="56" height="112" />
            <rect style="linecolor:rgb(0,128,0);linestyle:Dot" width="264" x="196" y="-276" height="284" />
            <rect width="64" x="0" y="132" height="24" />
            <line x2="0" y1="144" y2="144" x1="64" />
            <line x2="0" y1="80" y2="80" x1="64" />
            <rect style="linecolor:rgb(0,0,255);linestyle:Dot" width="136" x="68" y="56" height="112" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="464" y1="-80" y2="-80" x1="528" />
            <rect width="64" x="464" y="-92" height="24" />
            <line x2="528" y1="-128" y2="-128" x1="464" />
            <rect width="64" x="464" y="-140" height="24" />
            <line x2="528" y1="-208" y2="-208" x1="464" />
            <line x2="528" y1="-240" y2="-240" x1="464" />
        </blockdef>
        <blockdef name="fifo_16x8bit">
            <timestamp>2016-5-30T12:52:59</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="pulldown" name="XLXI_5">
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="uart_to_contol_interface" name="XLXI_12">
            <blockpin signalname="CLK_100" name="clk" />
            <blockpin signalname="tx_fifo_data(7:0)" name="tx_data(7:0)" />
            <blockpin signalname="tx_fifo_wr_en" name="tx_enable" />
            <blockpin signalname="rx_data(7:0)" name="rx_data(7:0)" />
            <blockpin signalname="rx_en" name="rx_enable" />
            <blockpin signalname="XLXN_72(15:0)" name="control_data_out(15:0)" />
            <blockpin signalname="XLXN_73(15:0)" name="control_data_in(15:0)" />
            <blockpin signalname="XLXN_66(7:0)" name="control_address(7:0)" />
            <blockpin signalname="XLXN_65" name="control_write_en" />
            <blockpin signalname="XLXN_64" name="control_read_en" />
        </block>
        <block symbolname="basic_uart" name="XLXI_8">
            <blockpin signalname="CLK_100" name="clk" />
            <blockpin signalname="XLXN_27" name="reset" />
            <blockpin signalname="tx_en" name="tx_enable" />
            <blockpin signalname="RX" name="rx" />
            <blockpin signalname="tx_data(7:0)" name="tx_data(7:0)" />
            <blockpin signalname="rx_en" name="rx_enable" />
            <blockpin signalname="tx_ready" name="tx_ready" />
            <blockpin signalname="TX" name="tx" />
            <blockpin signalname="rx_data(7:0)" name="rx_data(7:0)" />
        </block>
        <block symbolname="clk_32_to_100MHz" name="XLXI_11">
            <blockpin signalname="CLK" name="CLK_IN1" />
            <blockpin signalname="CLK_100" name="CLK_OUT1" />
        </block>
        <block symbolname="fifo_16x8bit" name="XLXI_16">
            <blockpin signalname="CLK_100" name="clk" />
            <blockpin signalname="tx_fifo_wr_en" name="wr_en" />
            <blockpin signalname="tx_en" name="rd_en" />
            <blockpin signalname="tx_fifo_data(7:0)" name="din(7:0)" />
            <blockpin signalname="XLXN_61" name="full" />
            <blockpin signalname="tx_fifo_empty" name="empty" />
            <blockpin signalname="tx_data(7:0)" name="dout(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="tx_fifo_empty" name="I" />
            <blockpin signalname="tx_fifo_not_empty" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="tx_ready" name="I0" />
            <blockpin signalname="tx_fifo_not_empty" name="I1" />
            <blockpin signalname="tx_en" name="O" />
        </block>
        <block symbolname="i2s_mux2" name="XLXI_3">
            <blockpin signalname="LRCLK" name="LRCLK" />
            <blockpin signalname="BCLK" name="BCLK" />
            <blockpin signalname="SDATA_IN1" name="SDATAIN_1" />
            <blockpin signalname="SDATA_IN2" name="SDATAIN_2" />
            <blockpin signalname="XLXN_64" name="READ_ENABLE" />
            <blockpin signalname="XLXN_65" name="WRITE_ENABLE" />
            <blockpin signalname="XLXN_66(7:0)" name="ADDRESS(7:0)" />
            <blockpin signalname="SDATA_OUT1" name="SDATAOUT_1" />
            <blockpin signalname="SDATA_OUT2" name="SDATAOUT_2" />
            <blockpin signalname="CLK_100" name="CLK" />
            <blockpin signalname="XLXN_73(15:0)" name="DATA_OUT(15:0)" />
            <blockpin signalname="XLXN_72(15:0)" name="DATA_IN(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="496" y="1792" name="XLXI_8" orien="R0">
        </instance>
        <branch name="CLK_100">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1504" type="branch" />
            <wire x2="496" y1="1504" y2="1504" x1="464" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="96" y1="1568" y2="1680" x1="96" />
            <wire x2="496" y1="1568" y2="1568" x1="96" />
        </branch>
        <branch name="RX">
            <wire x2="496" y1="1696" y2="1696" x1="336" />
        </branch>
        <branch name="TX">
            <wire x2="960" y1="1664" y2="1664" x1="880" />
        </branch>
        <branch name="CLK">
            <wire x2="192" y1="144" y2="144" x1="176" />
        </branch>
        <instance x="192" y="176" name="XLXI_11" orien="R0">
        </instance>
        <branch name="CLK_100">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="144" type="branch" />
            <wire x2="608" y1="144" y2="144" x1="576" />
        </branch>
        <iomarker fontsize="28" x="176" y="144" name="CLK" orien="R180" />
        <instance x="32" y="1840" name="XLXI_5" orien="R0" />
        <branch name="tx_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1632" type="branch" />
            <wire x2="496" y1="1632" y2="1632" x1="400" />
        </branch>
        <branch name="tx_data(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1760" type="branch" />
            <wire x2="496" y1="1760" y2="1760" x1="400" />
        </branch>
        <branch name="rx_data(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1744" type="branch" />
            <wire x2="960" y1="1744" y2="1744" x1="880" />
        </branch>
        <iomarker fontsize="28" x="336" y="1696" name="RX" orien="R180" />
        <branch name="tx_ready">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1584" type="branch" />
            <wire x2="960" y1="1584" y2="1584" x1="880" />
        </branch>
        <branch name="rx_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1504" type="branch" />
            <wire x2="960" y1="1504" y2="1504" x1="880" />
        </branch>
        <instance x="1536" y="1488" name="XLXI_16" orien="R0">
        </instance>
        <branch name="CLK_100">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1264" type="branch" />
            <wire x2="1536" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="tx_fifo_wr_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1328" type="branch" />
            <wire x2="1536" y1="1328" y2="1328" x1="1472" />
        </branch>
        <branch name="tx_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1392" type="branch" />
            <wire x2="1536" y1="1392" y2="1392" x1="1472" />
        </branch>
        <branch name="tx_fifo_data(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1456" type="branch" />
            <wire x2="1536" y1="1456" y2="1456" x1="1472" />
        </branch>
        <branch name="tx_fifo_empty">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1360" type="branch" />
            <wire x2="2000" y1="1360" y2="1360" x1="1920" />
            <wire x2="2080" y1="1360" y2="1360" x1="2000" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2000" y1="1264" y2="1264" x1="1920" />
        </branch>
        <branch name="tx_data(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1456" type="branch" />
            <wire x2="2000" y1="1456" y2="1456" x1="1920" />
        </branch>
        <instance x="2080" y="1392" name="XLXI_17" orien="R0" />
        <branch name="tx_fifo_not_empty">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1360" type="branch" />
            <wire x2="2480" y1="1360" y2="1360" x1="2304" />
        </branch>
        <branch name="tx_fifo_not_empty">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2000" type="branch" />
            <wire x2="560" y1="2000" y2="2000" x1="480" />
        </branch>
        <instance x="560" y="2128" name="XLXI_18" orien="R0" />
        <branch name="tx_ready">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2064" type="branch" />
            <wire x2="560" y1="2064" y2="2064" x1="480" />
        </branch>
        <branch name="tx_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2032" type="branch" />
            <wire x2="880" y1="2032" y2="2032" x1="816" />
        </branch>
        <iomarker fontsize="28" x="960" y="1664" name="TX" orien="R0" />
        <branch name="LRCLK">
            <wire x2="1536" y1="144" y2="144" x1="1472" />
        </branch>
        <branch name="BCLK">
            <wire x2="1536" y1="208" y2="208" x1="1472" />
        </branch>
        <branch name="SDATA_IN1">
            <wire x2="1536" y1="272" y2="272" x1="1472" />
        </branch>
        <branch name="SDATA_IN2">
            <wire x2="1536" y1="336" y2="336" x1="1472" />
        </branch>
        <branch name="SDATA_OUT1">
            <wire x2="2192" y1="144" y2="144" x1="2032" />
        </branch>
        <instance x="1536" y="368" name="XLXI_3" orien="R0">
        </instance>
        <branch name="SDATA_OUT2">
            <wire x2="2192" y1="208" y2="208" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="1472" y="144" name="LRCLK" orien="R180" />
        <iomarker fontsize="28" x="1472" y="208" name="BCLK" orien="R180" />
        <iomarker fontsize="28" x="1472" y="272" name="SDATA_IN1" orien="R180" />
        <iomarker fontsize="28" x="1472" y="336" name="SDATA_IN2" orien="R180" />
        <iomarker fontsize="28" x="2192" y="208" name="SDATA_OUT2" orien="R0" />
        <iomarker fontsize="28" x="2192" y="144" name="SDATA_OUT1" orien="R0" />
        <instance x="560" y="976" name="XLXI_12" orien="R0">
        </instance>
        <branch name="tx_fifo_data(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1120" type="branch" />
            <wire x2="1216" y1="1120" y2="1120" x1="1088" />
        </branch>
        <branch name="tx_fifo_wr_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1056" type="branch" />
            <wire x2="1216" y1="1056" y2="1056" x1="1088" />
        </branch>
        <branch name="CLK_100">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="752" type="branch" />
            <wire x2="560" y1="752" y2="752" x1="464" />
        </branch>
        <branch name="rx_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="1056" type="branch" />
            <wire x2="560" y1="1056" y2="1056" x1="448" />
        </branch>
        <branch name="rx_data(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="1120" type="branch" />
            <wire x2="560" y1="1120" y2="1120" x1="448" />
        </branch>
        <branch name="CLK_100">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="80" type="branch" />
            <wire x2="1536" y1="80" y2="80" x1="1360" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1312" y1="736" y2="736" x1="1088" />
            <wire x2="1312" y1="400" y2="736" x1="1312" />
            <wire x2="1536" y1="400" y2="400" x1="1312" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1328" y1="768" y2="768" x1="1088" />
            <wire x2="1328" y1="464" y2="768" x1="1328" />
            <wire x2="1536" y1="464" y2="464" x1="1328" />
        </branch>
        <branch name="XLXN_66(7:0)">
            <wire x2="1344" y1="848" y2="848" x1="1088" />
            <wire x2="1344" y1="528" y2="848" x1="1344" />
            <wire x2="1536" y1="528" y2="528" x1="1344" />
        </branch>
        <branch name="XLXN_72(15:0)">
            <wire x2="2160" y1="944" y2="944" x1="1088" />
            <wire x2="2160" y1="432" y2="432" x1="2032" />
            <wire x2="2160" y1="432" y2="944" x1="2160" />
        </branch>
        <branch name="XLXN_73(15:0)">
            <wire x2="1376" y1="896" y2="896" x1="1088" />
            <wire x2="2112" y1="896" y2="896" x1="1376" />
            <wire x2="2112" y1="496" y2="496" x1="2032" />
            <wire x2="2112" y1="496" y2="896" x1="2112" />
        </branch>
    </sheet>
</drawing>