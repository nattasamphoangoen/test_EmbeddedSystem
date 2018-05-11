<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="Clk_50MHz" />
        <signal name="zClock" />
        <signal name="zLatch" />
        <signal name="zData" />
        <signal name="xCount(7:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="zClock" />
        <port polarity="Output" name="zLatch" />
        <port polarity="Output" name="zData" />
        <port polarity="Output" name="xCount(7:0)" />
        <blockdef name="Clk_1Hz">
            <timestamp>2018-5-11T6:53:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Clk_2000Hz">
            <timestamp>2018-5-11T6:53:37</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Drive_74595">
            <timestamp>2018-5-11T6:54:27</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cj8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="Clk_1Hz" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_In" />
            <blockpin signalname="XLXN_1" name="Clk_Out" />
        </block>
        <block symbolname="Clk_2000Hz" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="Clk_In" />
            <blockpin signalname="XLXN_2" name="Clk_Out" />
        </block>
        <block symbolname="Drive_74595" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="Clock" />
            <blockpin signalname="xCount(7:0)" name="Data_In(7:0)" />
            <blockpin signalname="zClock" name="Shift" />
            <blockpin signalname="zLatch" name="Latch" />
            <blockpin signalname="zData" name="Data_Out" />
        </block>
        <block symbolname="cj8ce" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="C" />
            <blockpin signalname="XLXN_6" name="CE" />
            <blockpin signalname="XLXN_5" name="CLR" />
            <blockpin signalname="xCount(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="176" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1296" y1="1856" y2="1856" x1="1088" />
            <wire x2="1312" y1="1840" y2="1840" x1="1296" />
            <wire x2="1296" y1="1840" y2="1856" x1="1296" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1312" y1="1936" y2="1936" x1="1296" />
            <wire x2="1296" y1="1936" y2="2000" x1="1296" />
            <wire x2="1376" y1="2000" y2="2000" x1="1296" />
            <wire x2="1376" y1="2000" y2="2064" x1="1376" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1248" y1="1648" y2="1776" x1="1248" />
            <wire x2="1312" y1="1776" y2="1776" x1="1248" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="112" y1="1088" y2="1184" x1="112" />
            <wire x2="176" y1="1184" y2="1184" x1="112" />
            <wire x2="608" y1="1088" y2="1088" x1="112" />
            <wire x2="608" y1="1088" y2="1840" x1="608" />
            <wire x2="688" y1="1840" y2="1840" x1="608" />
            <wire x2="688" y1="1840" y2="1856" x1="688" />
            <wire x2="704" y1="1856" y2="1856" x1="688" />
            <wire x2="608" y1="1840" y2="1840" x1="528" />
        </branch>
        <instance x="1712" y="1392" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="576" y1="1184" y2="1184" x1="560" />
            <wire x2="576" y1="1184" y2="1232" x1="576" />
            <wire x2="1712" y1="1232" y2="1232" x1="576" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1200" name="zClock" orien="R0" />
        <branch name="zClock">
            <wire x2="2112" y1="1232" y2="1232" x1="2096" />
            <wire x2="2352" y1="1200" y2="1200" x1="2112" />
            <wire x2="2112" y1="1200" y2="1232" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1280" name="zLatch" orien="R0" />
        <branch name="zLatch">
            <wire x2="2112" y1="1296" y2="1296" x1="2096" />
            <wire x2="2352" y1="1280" y2="1280" x1="2112" />
            <wire x2="2112" y1="1280" y2="1296" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1376" name="zData" orien="R0" />
        <branch name="zData">
            <wire x2="2112" y1="1360" y2="1360" x1="2096" />
            <wire x2="2112" y1="1360" y2="1376" x1="2112" />
            <wire x2="2336" y1="1376" y2="1376" x1="2112" />
        </branch>
        <instance x="1312" y="1968" name="XLXI_4" orien="R0" />
        <instance x="1312" y="2192" name="XLXI_6" orien="R0" />
        <instance x="1184" y="1648" name="XLXI_5" orien="R0" />
        <instance x="704" y="1888" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="528" y="1840" name="Clk_50MHz" orien="R180" />
        <branch name="xCount(7:0)">
            <wire x2="1648" y1="1360" y2="1584" x1="1648" />
            <wire x2="1760" y1="1584" y2="1584" x1="1648" />
            <wire x2="1760" y1="1584" y2="1648" x1="1760" />
            <wire x2="1760" y1="1648" y2="1712" x1="1760" />
            <wire x2="1840" y1="1648" y2="1648" x1="1760" />
            <wire x2="1712" y1="1360" y2="1360" x1="1648" />
            <wire x2="1760" y1="1712" y2="1712" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1648" name="xCount(7:0)" orien="R0" />
    </sheet>
</drawing>