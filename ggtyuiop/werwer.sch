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
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="Clk_50MHz" />
        <signal name="Reset_Onboard" />
        <signal name="Seg_T" />
        <signal name="Seg_A" />
        <signal name="Seg_B" />
        <signal name="Seg_C" />
        <signal name="Seg_D" />
        <signal name="COMM_0" />
        <signal name="XLXN_19" />
        <signal name="Seg_E" />
        <signal name="Seg_F" />
        <signal name="Seg_G" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset_Onboard" />
        <port polarity="Output" name="Seg_T" />
        <port polarity="Output" name="Seg_A" />
        <port polarity="Output" name="Seg_B" />
        <port polarity="Output" name="Seg_C" />
        <port polarity="Output" name="Seg_D" />
        <port polarity="Output" name="COMM_0" />
        <port polarity="Output" name="Seg_E" />
        <port polarity="Output" name="Seg_F" />
        <port polarity="Output" name="Seg_G" />
        <blockdef name="Decode_7Seg">
            <timestamp>2018-5-4T9:1:32</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Gen_1Hz">
            <timestamp>2018-5-4T9:2:4</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="Decode_7Seg" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="XLXN_2" name="B" />
            <blockpin signalname="XLXN_1" name="A" />
            <blockpin signalname="Seg_T" name="ledt" />
            <blockpin signalname="Seg_A" name="leda" />
            <blockpin signalname="Seg_B" name="ledb" />
            <blockpin signalname="Seg_C" name="ledc" />
            <blockpin signalname="Seg_D" name="ledd" />
            <blockpin signalname="Seg_E" name="lede" />
            <blockpin signalname="Seg_F" name="ledf" />
            <blockpin signalname="Seg_G" name="ledg" />
        </block>
        <block symbolname="Gen_1Hz" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="Clk_In" />
            <blockpin signalname="XLXN_5" name="Clk_Out" />
        </block>
        <block symbolname="cb4ce" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_6" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_1" name="Q0" />
            <blockpin signalname="XLXN_2" name="Q1" />
            <blockpin signalname="XLXN_3" name="Q2" />
            <blockpin signalname="XLXN_4" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="Reset_Onboard" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="COMM_0" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2384" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <instance x="896" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1568" y="1280" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2160" y1="832" y2="832" x1="1952" />
            <wire x2="2160" y1="832" y2="1264" x1="2160" />
            <wire x2="2384" y1="1264" y2="1264" x1="2160" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2144" y1="896" y2="896" x1="1952" />
            <wire x2="2144" y1="896" y2="1120" x1="2144" />
            <wire x2="2384" y1="1120" y2="1120" x1="2144" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="2128" y1="960" y2="960" x1="1952" />
            <wire x2="2128" y1="960" y2="976" x1="2128" />
            <wire x2="2384" y1="976" y2="976" x1="2128" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2176" y1="1024" y2="1024" x1="1952" />
            <wire x2="2176" y1="832" y2="1024" x1="2176" />
            <wire x2="2384" y1="832" y2="832" x1="2176" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1424" y1="1184" y2="1184" x1="1280" />
            <wire x2="1424" y1="1152" y2="1184" x1="1424" />
            <wire x2="1568" y1="1152" y2="1152" x1="1424" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1552" y1="1312" y2="1312" x1="1536" />
            <wire x2="1568" y1="1248" y2="1248" x1="1552" />
            <wire x2="1552" y1="1248" y2="1312" x1="1552" />
        </branch>
        <instance x="1312" y="1344" name="XLXI_4" orien="R0" />
        <branch name="Clk_50MHz">
            <wire x2="896" y1="1184" y2="1184" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="1184" name="Clk_50MHz" orien="R180" />
        <branch name="Reset_Onboard">
            <wire x2="1312" y1="1312" y2="1312" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1312" name="Reset_Onboard" orien="R180" />
        <branch name="Seg_T">
            <wire x2="2800" y1="832" y2="832" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="832" name="Seg_T" orien="R0" />
        <branch name="Seg_A">
            <wire x2="2800" y1="896" y2="896" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="896" name="Seg_A" orien="R0" />
        <branch name="Seg_B">
            <wire x2="2800" y1="960" y2="960" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="960" name="Seg_B" orien="R0" />
        <branch name="Seg_C">
            <wire x2="2800" y1="1024" y2="1024" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1024" name="Seg_C" orien="R0" />
        <branch name="Seg_D">
            <wire x2="2800" y1="1088" y2="1088" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1088" name="Seg_D" orien="R0" />
        <branch name="COMM_0">
            <wire x2="2288" y1="1440" y2="1456" x1="2288" />
            <wire x2="2352" y1="1456" y2="1456" x1="2288" />
            <wire x2="2688" y1="1456" y2="1456" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1456" name="COMM_0" orien="R0" />
        <instance x="1424" y="1056" name="XLXI_5" orien="R0" />
        <instance x="2224" y="1440" name="XLXI_6" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1488" y1="1056" y2="1088" x1="1488" />
            <wire x2="1568" y1="1088" y2="1088" x1="1488" />
        </branch>
        <branch name="Seg_E">
            <wire x2="2800" y1="1152" y2="1152" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1152" name="Seg_E" orien="R0" />
        <branch name="Seg_F">
            <wire x2="2800" y1="1216" y2="1216" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1216" name="Seg_F" orien="R0" />
        <branch name="Seg_G">
            <wire x2="2800" y1="1280" y2="1280" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1280" name="Seg_G" orien="R0" />
    </sheet>
</drawing>