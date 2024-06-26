<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4">
	<Header id="TestICD" />
	<IED name="Base" type="TypeTest" manufacturer="ManTest" originalSclVersion="2007" originalSclRevision="B" originalRelease="4">
		<NewThing>
			<P type="solution" />
		</NewThing>
		<Services nameLength="64">
			<SettingGroups>
				<SGEdit resvTms="true" />
			</SettingGroups>
			<GetDirectory />
			<GetDataObjectDefinition />
			<DataObjectDirectory />
			<GetDataSetValue />
			<DataSetDirectory />
			<ConfDataSet modify="true" maxAttributes="100" max="50" />
			<ReadWrite />
			<ConfReportControl bufMode="both" bufConf="true" max="60" />
			<GetCBValues />
			<ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" cbName="Conf" datSet="Dyn" />
			<GSESettings appID="Conf" dataLabel="Fix" cbName="Conf" datSet="Conf" />
			<GOOSE fixedOffs="false" max="16" />
			<ConfLNs fixPrefix="false" fixLnInst="false" />
			<ConfLdName />
			<SupSubscription maxGo="128" maxSv="60" />
			<ValueHandling setToRO="false" />
		</Services>
		<AccessPoint name="E">
			<Server timeout="0">
				<LDevice inst="TestLD">
					<LN0 lnClass="LLN0" inst="" lnType="Dummy.LLN0">
						<DOI name="Mod" />
						<DOI name="Beh" />
						<DOI name="Health" />
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>
									2019-11-07 08:52:28
								</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>
									IEC 61850-7-4:2007
								</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPHD" inst="1" lnType="Dummy.LPHD1">
						<DOI name="PhyNam">
							<DAI name="vendor">
								<Val>
									OMICRON electronics
								</Val>
							</DAI>
							<DAI name="hwRev">
								<Val>
									OMICRON PRISCILLA Type G Rev: 0002
								</Val>
							</DAI>
							<DAI name="swRev">
								<Val>
									2.11.0014
								</Val>
							</DAI>
							<DAI name="serNum">
								<Val>
									AM156K
								</Val>
							</DAI>
							<DAI name="model">
								<Val>
									ISIO 200
								</Val>
							</DAI>
						</DOI>
						<DOI name="Proxy">
							<DAI name="d">
								<Val>
									not a proxy
								</Val>
							</DAI>
						</DOI>
						<DOI name="Sim">
							<DAI name="ctlModel">
								<Val>
									sbo-with-enhanced-security
								</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>
									30000
								</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>
									10000
								</Val>
							</DAI>
							<DAI name="d">
								<Val />
							</DAI>
						</DOI>
					</LN>
					<LN prefix="" lnClass="XCBR" inst="1" lnType="Dummy.XCBR1">
						<DOI name="Mod" />
						<DOI name="Beh" />
						<DOI name="Health" />
						<DOI name="NamPlt">
							<DAI name="configRev">
								<Val>
									2019-11-07 08:52:28
								</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" />
						<DOI name="OpCnt" />
						<DOI name="Pos">
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>
										pulse
									</Val>
								</DAI>
								<DAI name="onDur">
									<Val>
										100
									</Val>
								</DAI>
								<DAI name="offDur">
									<Val>
										0
									</Val>
								</DAI>
								<DAI name="numPls">
									<Val>
										1
									</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block opening" />
						<DOI name="BlkCls" desc="Block closing" />
					</LN>
					<LN prefix="" lnClass="CSWI" inst="1" lnType="Dummy.CSWI">
						<DOI name="Mod" />
						<DOI name="Beh" />
						<DOI name="Health" />
						<DOI name="NamPlt">
							<DAI name="configRev">
								<Val>
									2019-11-07 08:52:28
								</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" />
						<DOI name="Pos">
							<DAI name="ctlModel">
								<Val>
									sbo-with-enhanced-security
								</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>
									30000
								</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>
									1000
								</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="" lnClass="CILO" inst="1" lnType="Dummy.CILO">
						<DOI name="Mod" />
						<DOI name="Beh" />
						<DOI name="Health" />
						<DOI name="NamPlt">
							<DAI name="configRev">
								<Val>
									2019-11-07 08:52:28
								</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" />
						<DOI name="EnaCls" />
					</LN>
				</LDevice>
			</Server>
			<Services>
				<DynAssociation max="6" />
				<DynDataSet maxAttributes="60" max="30" />
				<FileHandling />
				<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="false" supportsLdName="true" maxGOOSE="128">
					<TimeSyncProt sntp="true" />
				</ClientServices>
				<ValueHandling setToRO="false" />
				<RedProt hsr="true" prp="true" rstp="true" />
				<CommProt ipv6="false" />
			</Services>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<LNodeType lnClass="LLN0" id="Dummy.LLN0">
			<DO name="Mod" type="Dummy.LLN0.Mod" />
			<DO name="Beh" type="Dummy.LLN0.Beh" />
			<DO name="Health" type="Dummy.LLN0.Health" />
			<DO name="NamPlt" type="Dummy.LLN0.NamPlt" />
		</LNodeType>
		<LNodeType lnClass="LLN0" id="unreferenced.LLN0">
			<DO name="Mod" type="Dummy.LLN0.Mod" />
			<DO name="Beh" type="Dummy.LLN0.Beh" />
			<DO name="Health" type="Dummy.LLN0.Health" />
			<DO name="NamPlt" type="Dummy.LLN0.NamPlt" />
		</LNodeType>
		<LNodeType lnClass="LPHD" id="Dummy.LPHD1">
			<DO name="PhyNam" type="Dummy.LPHD1.PhyNam" />
			<DO name="PhyHealth" type="Dummy.LLN0.Health" />
			<DO name="Proxy" type="Dummy.SPS" />
			<DO name="Sim" type="Dummy.LPHD1.Sim" />
		</LNodeType>
		<LNodeType lnClass="XCBR" id="Dummy.XCBR1">
			<DO name="Beh" type="Dummy.LLN0.Beh" />
			<DO name="NamPlt" type="Dummy.XCBR1.NamPlt" />
			<DO name="Loc" type="Dummy.SPS" />
			<DO name="OpCnt" type="Dummy.XCBR1.OpCnt" />
			<DO name="Pos" type="Dummy.XCBR1.Pos" />
			<DO name="BlkOpn" type="Dummy.XCBR1.BlkOpn" />
			<DO name="BlkCls" type="Dummy.XCBR1.BlkOpn" />
		</LNodeType>
		<LNodeType lnClass="CSWI" id="Dummy.CSWI">
			<DO name="Beh" type="Dummy.LLN0.Beh" />
			<DO name="NamPlt" type="Dummy.XCBR1.NamPlt" />
			<DO name="Loc" type="Dummy.SPS" />
			<DO name="OpCnt" type="Dummy.XCBR1.OpCnt" />
			<DO name="Pos" type="Dummy.CSWI.Pos1" />
		</LNodeType>
		<LNodeType lnClass="CILO" id="Dummy.CILO">
			<DO name="Beh" type="Dummy.LLN0.Beh" />
			<DO name="NamPlt" type="Dummy.XCBR1.NamPlt" />
			<DO name="EnaOpn" type="Dummy.SPS" />
			<DO name="EnaCls" type="Dummy.SPS" />
		</LNodeType>
		<DOType cdc="ENC" id="Dummy.LLN0.Mod">
			<DA fc="ST" name="stVal" bType="Enum" type="Dummy_Beh" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="ST" name="stSeld" bType="BOOLEAN" />
			<DA fc="OR" name="opRcvd" bType="BOOLEAN" />
			<DA fc="OR" name="opOk" bType="BOOLEAN" />
			<DA fc="OR" name="tOpOk" bType="Timestamp" />
			<DA fc="CF" name="ctlModel" bType="Enum" type="Dummy_ctlModel" />
			<DA fc="CF" name="sboTimeout" bType="INT32U" />
			<DA fc="CF" name="operTimeout" bType="INT32U" />
			<DA fc="CO" name="SBO" bType="ObjRef" />
			<DA fc="CO" name="SBOw" bType="Struct" type="Dummy.LLN0.Mod.SBOw" />
			<DA fc="CO" name="Oper" bType="Struct" type="Dummy.LLN0.Mod.SBOw" />
			<DA fc="CO" name="Cancel" bType="Struct" type="Dummy.LLN0.Mod.Cancel" />
		</DOType>
		<DOType cdc="ENS" id="Dummy.LLN0.Beh">
			<DA fc="ST" name="stVal" bType="Enum" type="Dummy_Beh" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType cdc="ENS" id="unreferenced.ENS">
			<DA fc="ST" name="stVal" bType="Enum" type="Dummy_Beh" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType cdc="ENS" id="Dummy.LLN0.Health">
			<DA fc="ST" name="stVal" bType="Enum" type="Dummy_Health" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType cdc="LPL" id="Dummy.LLN0.NamPlt">
			<DA fc="DC" name="vendor" bType="VisString255" />
			<DA fc="DC" name="swRev" bType="VisString255" />
			<DA fc="DC" name="d" bType="VisString255" />
			<DA fc="DC" name="configRev" bType="VisString255" />
			<DA fc="EX" name="ldNs" bType="VisString255" />
		</DOType>
		<DOType cdc="DPL" id="Dummy.LPHD1.PhyNam">
			<DA fc="DC" name="vendor" bType="VisString255" />
			<DA fc="DC" name="hwRev" bType="VisString255" />
			<DA fc="DC" name="swRev" bType="VisString255" />
			<DA fc="DC" name="serNum" bType="VisString255" />
			<DA fc="DC" name="model" bType="VisString255" />
		</DOType>
		<DOType cdc="SPC" id="Dummy.LPHD1.Sim">
			<DA fc="ST" name="stVal" bType="BOOLEAN" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="ST" name="stSeld" bType="BOOLEAN" />
			<DA fc="OR" name="opRcvd" bType="BOOLEAN" />
			<DA fc="OR" name="opOk" bType="BOOLEAN" />
			<DA fc="OR" name="tOpOk" bType="Timestamp" />
			<DA fc="CF" name="ctlModel" bType="Enum" type="Dummy_ctlModel" />
			<DA fc="CF" name="sboTimeout" bType="INT32U" />
			<DA fc="CF" name="operTimeout" bType="INT32U" />
			<DA fc="DC" name="d" bType="VisString255" />
			<DA fc="CO" name="SBO" bType="ObjRef" />
			<DA fc="CO" name="SBOw" bType="Struct" type="Dummy.LPHD1.Sim.SBOw" />
			<DA fc="CO" name="Oper" bType="Struct" type="Dummy.LPHD1.Sim.SBOw" />
			<DA fc="CO" name="Cancel" bType="Struct" type="Dummy.LPHD1.Sim.Cancel" />
		</DOType>
		<DOType cdc="DPC" id="Dummy.XCBR1.Pos">
			<DA fc="ST" name="stVal" bType="Dbpos" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="CF" name="ctlModel" bType="Enum" type="Dummy_ctlModel" />
			<DA fc="DC" name="d" bType="VisString255" />
		</DOType>
		<DOType cdc="DPC" id="Dummy.CSWI.Pos1">
			<DA fc="ST" name="stVal" bType="Dbpos" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="CF" name="ctlModel" bType="Enum" type="Dummy_ctlModel">
				<Val>
					sbo-with-enhanced-security
				</Val>
			</DA>
			<DA fc="DC" name="d" bType="VisString255" />
		</DOType>
		<DOType cdc="INS" id="Dummy.XCBR1.OpCnt">
			<DA fc="ST" name="stVal" bType="INT32" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType cdc="LPL" id="Dummy.XCBR1.NamPlt">
			<DA fc="DC" name="vendor" bType="VisString255" />
			<DA fc="DC" name="swRev" bType="VisString255" />
			<DA fc="DC" name="d" bType="VisString255" />
		</DOType>
		<DOType cdc="SPC" id="Dummy.XCBR1.BlkOpn">
			<DA fc="ST" name="stVal" bType="BOOLEAN" />
			<DA fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="CF" name="ctlModel" bType="Enum" type="Dummy_ctlModel" />
			<DA fc="DC" name="d" bType="VisString255" />
		</DOType>
		<DOType cdc="SPS" id="Dummy.SPS">
			<DA fc="ST" dchg="true" name="stVal" bType="BOOLEAN" />
			<DA fc="ST" qchg="true" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DAType id="Dummy_origin">
			<BDA name="orCat" bType="Enum" type="Dummy_orCategory" />
			<BDA name="orIdent" bType="Octet64" />
		</DAType>
		<DAType id="unreferenced.origin">
			<BDA name="orCat" bType="Enum" type="Dummy_orCategory" />
			<BDA name="orIdent" bType="Octet64" />
		</DAType>
		<DAType id="Dummy.LLN0.Mod.SBOw">
			<BDA name="ctlVal" bType="Enum" type="Dummy_Beh" />
			<BDA name="origin" bType="Struct" type="Dummy_origin" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
			<ProtNs>
				IEC 61850-8-1:2003
			</ProtNs>
		</DAType>
		<DAType id="Dummy.LLN0.Mod.Cancel">
			<BDA name="ctlVal" bType="Enum" type="Dummy_Beh" />
			<BDA name="origin" bType="Struct" type="Dummy_origin" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
		</DAType>
		<DAType id="Dummy.LPHD1.Sim.SBOw">
			<BDA name="ctlVal" bType="BOOLEAN" />
			<BDA name="origin" bType="Struct" type="Dummy_origin" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
		</DAType>
		<DAType id="Dummy.LPHD1.Sim.Cancel">
			<BDA name="ctlVal" bType="BOOLEAN" />
			<BDA name="origin" bType="Struct" type="Dummy_origin" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
		</DAType>
		<EnumType id="Dummy_ctlModel">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
			<EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="unreferened.EnumType">
			<EnumVal ord="0">status-only</EnumVal>
		</EnumType>
		<EnumType id="Dummy_Beh">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="Dummy_Health">
			<EnumVal ord="1">Ok</EnumVal>
			<EnumVal ord="2">Warning</EnumVal>
			<EnumVal ord="3">Alarm</EnumVal>
		</EnumType>
		<EnumType id="Dummy_orCategory">
			<EnumVal ord="0">not-supported</EnumVal>
			<EnumVal ord="1">bay-control</EnumVal>
			<EnumVal ord="2">station-control</EnumVal>
			<EnumVal ord="3">remote-control</EnumVal>
			<EnumVal ord="4">automatic-bay</EnumVal>
			<EnumVal ord="5">automatic-station</EnumVal>
			<EnumVal ord="6">automatic-remote</EnumVal>
			<EnumVal ord="7">maintenance</EnumVal>
			<EnumVal ord="8">process</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>
