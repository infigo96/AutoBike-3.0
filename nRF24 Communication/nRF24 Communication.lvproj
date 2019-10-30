<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Project Documentation" Type="Folder">
			<Item Name="Documentation Images" Type="Folder">
				<Item Name="roboRIO_Project_Diagram.png" Type="Document" URL="../documentation/roboRIO_Project_Diagram.png"/>
			</Item>
			<Item Name="roboRIO Project Documentation.html" Type="Document" URL="../documentation/roboRIO Project Documentation.html"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="Test1" Type="RT roboRIO">
		<Property Name="alias.name" Type="Str">Test1</Property>
		<Property Name="alias.value" Type="Str">172.22.11.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,76F2;FPGAPersonality,myRIO_FP_Default;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76F2</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Begin.vi" Type="VI" URL="../Begin.vi"/>
		<Item Name="Decoder.vi" Type="VI" URL="../Decoder.vi"/>
		<Item Name="DisableAA.vi" Type="VI" URL="../DisableAA.vi"/>
		<Item Name="FIFOEmpty.vi" Type="VI" URL="../FIFOEmpty.vi"/>
		<Item Name="FlushTxRx.vi" Type="VI" URL="../FlushTxRx.vi"/>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Main2.vi" Type="VI" URL="../Main2.vi"/>
		<Item Name="OpenPipeline.vi" Type="VI" URL="../OpenPipeline.vi"/>
		<Item Name="Read.vi" Type="VI" URL="../Read.vi"/>
		<Item Name="ResetFlags.vi" Type="VI" URL="../ResetFlags.vi"/>
		<Item Name="RW_Mutex.vi" Type="VI" URL="../RW_Mutex.vi"/>
		<Item Name="RW_Mutex_Give.vi" Type="VI" URL="../RW_Mutex_Give.vi"/>
		<Item Name="RW_Mutex_Take.vi" Type="VI" URL="../RW_Mutex_Take.vi"/>
		<Item Name="StartListening.vi" Type="VI" URL="../StartListening.vi"/>
		<Item Name="StopListening.vi" Type="VI" URL="../StopListening.vi"/>
		<Item Name="Write.vi" Type="VI" URL="../Write.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Calculate Clock Settings.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate Clock Settings.vi"/>
				<Item Name="Calculate Frequency (Normal Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate Frequency (Normal Mode).vi"/>
				<Item Name="Calculate Frequency (Phase Correct Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate Frequency (Phase Correct Mode).vi"/>
				<Item Name="Calculate TOP (Normal Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate TOP (Normal Mode).vi"/>
				<Item Name="Calculate TOP (Phase Correct Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate TOP (Phase Correct Mode).vi"/>
				<Item Name="Clock Calculation Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Clock Calculation Parameters.ctl"/>
				<Item Name="Clock Settings.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Clock Settings.ctl"/>
				<Item Name="Configuration Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Configuration Manager.vi"/>
				<Item Name="DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bank Enum.ctl"/>
				<Item Name="DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bitmask to Channel Map.ctl"/>
				<Item Name="DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels Enum.ctl"/>
				<Item Name="DIO Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels List.ctl"/>
				<Item Name="DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO FPGA Reference.ctl"/>
				<Item Name="DIO.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/DIO/DIO.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Find Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Find Mutex.vi"/>
				<Item Name="FPGA Ref Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/FPGA Ref Manager Action Enum.ctl"/>
				<Item Name="FPGA Ref Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/FPGA Ref Manager.vi"/>
				<Item Name="Generic FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Generic FPGA Reference.ctl"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Hardware Version Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Hardware Version Enum.ctl"/>
				<Item Name="IO Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/IO Manager.vi"/>
				<Item Name="Is FPGA Ref Available.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Is FPGA Ref Available.vi"/>
				<Item Name="Lock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Lock Mutex.vi"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="Mutex Collection.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Mutex Collection.ctl"/>
				<Item Name="myRIO Generic Hardware Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO Generic Hardware Reference.ctl"/>
				<Item Name="myRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="myRIO v1.0 Close.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/myRIO v1.0 Close.vi"/>
				<Item Name="myRIO v1.0 Configure SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/vis/myRIO v1.0 Configure SPI.vi"/>
				<Item Name="myRIO v1.0 Create Configuration List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Create Configuration List.vi"/>
				<Item Name="myRIO v1.0 Generate Register Values SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/vis/myRIO v1.0 Generate Register Values SPI.vi"/>
				<Item Name="myRIO v1.0 Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO v1.0 Reference.ctl"/>
				<Item Name="myRIO v1.0 Wait for RDY.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/vis/myRIO v1.0 Wait for RDY.vi"/>
				<Item Name="myRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Write DIO.vi"/>
				<Item Name="myRIO v1.0 Write Read SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/vis/myRIO v1.0 Write Read SPI.vi"/>
				<Item Name="Named Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Named Mutex.ctl"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Reentrant Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Reentrant Mutex.ctl"/>
				<Item Name="Ref Counter Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Ref Counter Action Enum.ctl"/>
				<Item Name="Ref Counter.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Ref Counter.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Resource Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Resource Manager Action Enum.ctl"/>
				<Item Name="roboRIO DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bank Enum.ctl"/>
				<Item Name="roboRIO DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bitmask to Channel Map.ctl"/>
				<Item Name="roboRIO DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO FPGA Reference.ctl"/>
				<Item Name="roboRIO IO Config FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO IO Config FPGA Reference.ctl"/>
				<Item Name="roboRIO SPI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/typedefs/roboRIO SPI Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="roboRIO v1.0 Build Mutex Name.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Build Mutex Name.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build MUX Configuration DIO.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Build MUX Configuration SPI.vi"/>
				<Item Name="roboRIO v1.0 Channel Reservation Info.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Channel Reservation Info.ctl"/>
				<Item Name="roboRIO v1.0 Channel Reservation List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Channel Reservation List.ctl"/>
				<Item Name="roboRIO v1.0 Configure IO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Configure IO.vi"/>
				<Item Name="roboRIO v1.0 Configure SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Configure SPI.vi"/>
				<Item Name="roboRIO v1.0 Connector List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Connector List.ctl"/>
				<Item Name="roboRIO v1.0 Create Configuration List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Create Configuration List.vi"/>
				<Item Name="roboRIO v1.0 DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO v1.0 DIO Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 FPGA.lvbitx" Type="Document" URL="/&lt;vilib&gt;/myRIO/FPGA/bitfiles/roboRIO v1.0 FPGA.lvbitx"/>
				<Item Name="roboRIO v1.0 Open DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Open DIO.vi"/>
				<Item Name="roboRIO v1.0 Open SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Open SPI.vi"/>
				<Item Name="roboRIO v1.0 Open.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/roboRIO v1.0 Open.vi"/>
				<Item Name="roboRIO v1.0 Reserve Channel List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Reserve Channel List.vi"/>
				<Item Name="roboRIO v1.0 Reserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Reserve Channel.vi"/>
				<Item Name="roboRIO v1.0 Reserve DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Reserve DIO.vi"/>
				<Item Name="roboRIO v1.0 Reserve SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Reserve SPI.vi"/>
				<Item Name="roboRIO v1.0 SPI Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/typedefs/roboRIO v1.0 SPI Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Unreserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Unreserve Channel.vi"/>
				<Item Name="roboRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Write DIO.vi"/>
				<Item Name="roboRIO v1.0 Write Read SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Write Read SPI.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="SPI Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Channels Enum.ctl"/>
				<Item Name="SPI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Channels FPGA Reference.ctl"/>
				<Item Name="SPI Clock Phase.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Clock Phase.ctl"/>
				<Item Name="SPI Clock Polarity.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Clock Polarity.ctl"/>
				<Item Name="SPI Configuration v1.0.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Configuration v1.0.ctl"/>
				<Item Name="SPI Data Direction.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Data Direction.ctl"/>
				<Item Name="SPI Frame Length.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Frame Length.ctl"/>
				<Item Name="SPI.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/SPI/SPI.lvlib"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="System FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/typedefs/System FPGA Reference.ctl"/>
				<Item Name="Unlock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Unlock Mutex.vi"/>
				<Item Name="Validate Channels.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Validate Channels.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
