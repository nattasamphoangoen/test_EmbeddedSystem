<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="Data_Input" />
        <signal name="Clk_Out" />
        <signal name="Shift_Load" />
        <signal name="xCount(7:0)" />
        <signal name="XLXN_6" />
        <signal name="zClock" />
        <signal name="zLatch" />
        <signal name="zData" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Data_Input" />
        <port polarity="Output" name="Clk_Out" />
        <port polarity="Output" name="Shift_Load" />
        <port polarity="Output" name="xCount(7:0)" />
        <port polarity="Output" name="zClock" />
        <port polarity="Output" name="zLatch" />
        <port polarity="Output" name="zData" />
        <blockdef name="Clk_2000Hz">
            <timestamp>2018-5-11T7:21:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Read_8SIPO">
            <timestamp>2018-5-11T7:19:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Drive_74595">
            <timestamp>2018-5-11T7:18:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Clk_2000Hz" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_In" />
            <blockpin signalname="XLXN_6" name="Clk_Out" />
        </block>
        <block symbolname="Read_8SIPO" name="XLXI_2">
            <blockpin signalname="Data_Input" name="Ser_I" />
            <blockpin signalname="XLXN_6" name="Clk_I" />
            <blockpin signalname="Clk_Out" name="Clk_O" />
            <blockpin signalname="Shift_Load" name="SH_LD" />
            <blockpin signalname="xCount(7:0)" name="Parl_O(7:0)" />
        </block>
        <block symbolname="Drive_74595" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="Clock" />
            <blockpin signalname="xCount(7:0)" name="Data_In(7:0)" />
            <blockpin signalname="zClock" name="Shift" />
            <blockpin signalname="zLatch" name="Latch" />
            <blockpin signalname="zData" name="Data_Out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1584" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="1024" y1="1280" y2="1280" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1280" name="Clk_50MHz" orien="R180" />
        <branch name="Data_Input">
            <wire x2="1584" y1="976" y2="976" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1552" y="976" name="Data_Input" orien="R180" />
        <branch name="Clk_Out">
            <wire x2="2000" y1="976" y2="976" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="976" name="Clk_Out" orien="R0" />
        <branch name="Shift_Load">
            <wire x2="2000" y1="1040" y2="1040" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1040" name="Shift_Load" orien="R0" />
        <branch name="xCount(7:0)">
            <wire x2="1984" y1="1104" y2="1104" x1="1968" />
            <wire x2="2048" y1="1104" y2="1104" x1="1984" />
            <wire x2="2208" y1="1104" y2="1104" x1="2048" />
            <wire x2="2048" y1="1104" y2="1392" x1="2048" />
            <wire x2="2304" y1="1392" y2="1392" x1="2048" />
        </branch>
        <instance x="2304" y="1424" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2208" y="1104" name="xCount(7:0)" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1488" y1="1280" y2="1280" x1="1408" />
            <wire x2="1584" y1="1104" y2="1104" x1="1488" />
            <wire x2="1488" y1="1104" y2="1264" x1="1488" />
            <wire x2="1488" y1="1264" y2="1280" x1="1488" />
            <wire x2="2304" y1="1264" y2="1264" x1="1488" />
        </branch>
        <branch name="zClock">
            <wire x2="2720" y1="1264" y2="1264" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1264" name="zClock" orien="R0" />
        <branch name="zLatch">
            <wire x2="2720" y1="1328" y2="1328" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1328" name="zLatch" orien="R0" />
        <branch name="zData">
            <wire x2="2720" y1="1392" y2="1392" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1392" name="zData" orien="R0" />
    </sheet>
</drawing>