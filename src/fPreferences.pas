(*
 ***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License.        *
 *                                                                         *
 ***************************************************************************
*)


unit fPreferences;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, StdCtrls, Buttons, inifiles, DB, process, Spin, ColorBox, lcltype,
  uCWKeying, types;

type

  { TfrmPreferences }

  TfrmPreferences = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    btnDefineProfile1: TButton;
    btnSecondLoad: TButton;
    btnFrequencies1: TButton;
    btnLoadFifth: TButton;
    btnLoadFourth: TButton;
    btnLoadThird: TButton;
    btnLoadSecond: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    btnFrequencies: TButton;
    btnDefineProfile: TButton;
    btnSplit: TButton;
    btnThirdLoad: TButton;
    btnSetRadio3: TButton;
    btnSetRadio4: TButton;
    btnSelbFont: TButton;
    btnSeleFont: TButton;
    btnSelsFont: TButton;
    btnSelqFont: TButton;
    btnSetFirst: TButton;
    btnSetSecond: TButton;
    btnSetThird: TButton;
    btnSetFourth: TButton;
    btnSetFifth: TButton;
    btnLoadFirst: TButton;
    btnHelp: TButton;
    btnSelectBandFont: TButton;
    Button1: TButton;
    Button2: TButton;
    btnTestXplanet: TButton;
    btnFirstLoad: TButton;
    btnChangeDefaultFreq: TButton;
    btnKeyText: TButton;
    btnBrowseBackup: TButton;
    btnFldigiPath: TButton;
    btnChangeDefFreq: TButton;
    btnChangeDefMode: TButton;
    btnAlertCallsigns: TButton;
    btnCfgStorage: TButton;
    cb10m1: TCheckBox;
    cb12m1: TCheckBox;
    cb136kHz: TCheckBox;
    cb472kHz: TCheckBox;
    cb13cm1: TCheckBox;
    cb15m1: TCheckBox;
    cb160m: TCheckBox;
    cb160m1: TCheckBox;
    cb17m1: TCheckBox;
    cb1cm1: TCheckBox;
    cb20m1: TCheckBox;
    cb23cm1: TCheckBox;
    cb2m1: TCheckBox;
    cb30m1: TCheckBox;
    cb3cm1: TCheckBox;
    cb40m1: TCheckBox;
    cb47GHz1: TCheckBox;
    cb5cm1: TCheckBox;
    cb6m1: TCheckBox;
    cb70cm1: TCheckBox;
    cb76GHz1: TCheckBox;
    cb80m: TCheckBox;
    cb40m: TCheckBox;
    cb30m: TCheckBox;
    cb20m: TCheckBox;
    cb17m: TCheckBox;
    cb15m: TCheckBox;
    cb12m: TCheckBox;
    cb10m: TCheckBox;
    cb6m: TCheckBox;
    cb2m: TCheckBox;
    cb70cm: TCheckBox;
    cb23cm: TCheckBox;
    cb13cm: TCheckBox;
    cb80m1: TCheckBox;
    cb8cm: TCheckBox;
    cb5cm: TCheckBox;
    cb3cm: TCheckBox;
    cb1cm: TCheckBox;
    cb47GHz: TCheckBox;
    cb76GHz: TCheckBox;
    cb8cm1: TCheckBox;
    cb4m: TCheckBox;
    cb125m: TCheckBox;
    cb60m: TCheckBox;
    cb30cm: TCheckBox;
    chkExpCommet: TCheckBox;
    chkPlusToBandMap: TCheckBox;
    chkgridshowhint: TCheckBox;
    chkgriddotsinsteadspaces: TCheckBox;
    chkgridboldtitle: TCheckBox;
    chkgridsmallrows: TCheckBox;
    chkgridgreenbar: TCheckBox;
    chkCloseAfterUpload : TCheckBox;
    chkUseNewQSOFreqMode: TCheckBox;
    chkUseCallBookData: TCheckBox;
    chkHrUpEnabled: TCheckBox;
    chkHrUpOnline: TCheckBox;
    chkHaUpEnabled: TCheckBox;
    chkClUpEnabled: TCheckBox;
    chkHaupOnline: TCheckBox;
    chkAskBackup : TCheckBox;
    chkClUpOnline: TCheckBox;
    chkShow630M : TCheckBox;
    chkRBNAutoConn : TCheckBox;
    chkShowMiles : TCheckBox;
    chkIgnoreBandFreq : TCheckBox;
    chkRot1RunRotCtld: TCheckBox;
    chkRot2RunRotCtld: TCheckBox;
    chkShowDxcCountry : TCheckBox;
    chkClearNewQSOFreq : TCheckBox;
    chkClearRIT : TCheckBox;
    chkCountry: TCheckBox;
    chkR1RunRigCtld: TCheckBox;
    chkR2RunRigCtld: TCheckBox;
    chkR1SendCWR: TCheckBox;
    chkR2SendCWR: TCheckBox;
    chkShowBckEQSL: TCheckBox;
    chkSysUTC: TCheckBox;
    chkAllVariants: TCheckBox;
    chkeQSLRcvd: TCheckBox;
    chkeQSLRcvdDate: TCheckBox;
    chkQSLRAll: TCheckBox;
    chkeQSLSentDate: TCheckBox;
    chkeQSLSent: TCheckBox;
    chkexeQSLR: TCheckBox;
    chkexeQSLRDate: TCheckBox;
    chkexeQSLS: TCheckBox;
    chkexeQSLSDate: TCheckBox;
    chkShowLoTWInfo: TCheckBox;
    chkShowBckLoTW: TCheckBox;
    chkAutoQSLS: TCheckBox;
    chkAutoDQSLS: TCheckBox;
    chkAutoQQSLS: TCheckBox;
    chkIntQSLViewer: TCheckBox;
    chkexQSLRDate: TCheckBox;
    chkexQSLSDate: TCheckBox;
    chkQSLSentDate: TCheckBox;
    chkQSLRcvdDate: TCheckBox;
    chkAddAfterSaveQSO: TCheckBox;
    chkRunFldigi: TCheckBox;
    chkIgnoreQRZQSL: TCheckBox;
    chkMvToRem: TCheckBox;
    chkXplanetColor: TCheckBox;
    chkEnableBackup: TCheckBox;
    chkCompressBackup: TCheckBox;
    chkCont: TCheckBox;
    chkExCont: TCheckBox;
    chkNewQSLTables: TCheckBox;
    chkSunUTC: TCheckBox;
    chkShow60M: TCheckBox;
    chkShow125M: TCheckBox;
    chkPotSpeed: TCheckBox;
    chkShowRecentQSOs: TCheckBox;
    chkUseDXCColors: TCheckBox;
    chkexLQSLR: TCheckBox;
    chkexLQSLSDate: TCheckBox;
    chkexLQSLS: TCheckBox;
    chkexAward: TCheckBox;
    chkexCall: TCheckBox;
    chkexCounty: TCheckBox;
    chkexDate: TCheckBox;
    chkexDXCC: TCheckBox;
    chkexFreq: TCheckBox;
    chkexIOTA: TCheckBox;
    chkexITU: TCheckBox;
    chkexLoc: TCheckBox;
    chkexLQSLRDate: TCheckBox;
    chkexMode: TCheckBox;
    chkexMyLoc: TCheckBox;
    chkexName: TCheckBox;
    chkexNote: TCheckBox;
    chkexPower: TCheckBox;
    chkexQSLR: TCheckBox;
    chkexQSLS: TCheckBox;
    chkexQSLVIA: TCheckBox;
    chkexQTH: TCheckBox;
    chkexRemarks: TCheckBox;
    chkexRSTR: TCheckBox;
    chkexRSTS: TCheckBox;
    chkexState: TCheckBox;
    chkexTimeoff: TCheckBox;
    chkexTimeon: TCheckBox;
    chkexWAZ: TCheckBox;
    chkNewQSOLoTW: TCheckBox;
    chkIncLoTWDXCC: TCheckBox;
    chkLoTWQSLSDate: TCheckBox;
    chkLoTWQSLRDate: TCheckBox;
    chkLoTWQSLS: TCheckBox;
    chkLoTWQSLR: TCheckBox;
    chkProfile: TCheckBox;
    chkState: TCheckBox;
    chkShowDeleted: TCheckBox;
    chkNewDXCCTables: TCheckBox;
    chkShow4M: TCheckBox;
    chkDeleteAfterQSO: TCheckBox;
    chkConToDXC: TCheckBox;
    chkAutoSearch: TCheckBox;
    chkShowXplanet: TCheckBox;
    chkCloseXplanet: TCheckBox;
    chkShowActiveBand: TCheckBox;
    chkShowActiveMode: TCheckBox;
    chkSaveBandMap: TCheckBox;
    chkBandMapkHz: TCheckBox;
    chkShowIOTAInfo: TCheckBox;
    chkShowITUInfo: TCheckBox;
    chkShowWAZInfo: TCheckBox;
    chkUseDefaultSEttings: TCheckBox;
    chkAward3: TCheckBox;
    chkAward4: TCheckBox;
    chkAward5: TCheckBox;
    chkCallSign3: TCheckBox;
    chkCallSign4: TCheckBox;
    chkCallSign5: TCheckBox;
    chkCounty3: TCheckBox;
    chkCounty4: TCheckBox;
    chkCounty5: TCheckBox;
    chkCW1: TCheckBox;
    chkDate3: TCheckBox;
    chkDate4: TCheckBox;
    chkDate5: TCheckBox;
    chkDXCC3: TCheckBox;
    chkDXCC4: TCheckBox;
    chkDXCC5: TCheckBox;
    chkexAward1: TCheckBox;
    chkexCall1: TCheckBox;
    chkexCounty1: TCheckBox;
    chkexDate1: TCheckBox;
    chkexDXCC1: TCheckBox;
    chkexFreq1: TCheckBox;
    chkexIOTA1: TCheckBox;
    chkexITU1: TCheckBox;
    chkexLoc1: TCheckBox;
    chkexMode1: TCheckBox;
    chkexMyLoc1: TCheckBox;
    chkexName1: TCheckBox;
    chkexNote1: TCheckBox;
    chkexPower1: TCheckBox;
    chkexQSLR1: TCheckBox;
    chkexQSLS1: TCheckBox;
    chkexQSLVIA1: TCheckBox;
    chkexQTH1: TCheckBox;
    chkexRemarks1: TCheckBox;
    chkexRSTR1: TCheckBox;
    chkexRSTS1: TCheckBox;
    chkexTimeoff1: TCheckBox;
    chkexTimeon1: TCheckBox;
    chkexWAZ1: TCheckBox;
    chkFreq3: TCheckBox;
    chkFreq4: TCheckBox;
    chkFreq5: TCheckBox;
    chkIOTA3: TCheckBox;
    chkIOTA4: TCheckBox;
    chkIOTA5: TCheckBox;
    chkITU3: TCheckBox;
    chkITU4: TCheckBox;
    chkITU5: TCheckBox;
    chkLoc3: TCheckBox;
    chkLoc4: TCheckBox;
    chkLoc5: TCheckBox;
    chkMode3: TCheckBox;
    chkMode4: TCheckBox;
    chkMode5: TCheckBox;
    chkMyLoc3: TCheckBox;
    chkMyLoc4: TCheckBox;
    chkMyLoc5: TCheckBox;
    chkName3: TCheckBox;
    chkName4: TCheckBox;
    chkName5: TCheckBox;
    chkPower3: TCheckBox;
    chkPower4: TCheckBox;
    chkPower5: TCheckBox;
    chkProfile1: TCheckBox;
    chkQSL_R3: TCheckBox;
    chkQSL_R4: TCheckBox;
    chkQSL_R5: TCheckBox;
    chkQSL_S3: TCheckBox;
    chkQSL_S4: TCheckBox;
    chkQSL_S5: TCheckBox;
    chkQSL_VIA3: TCheckBox;
    chkQSL_VIA4: TCheckBox;
    chkQSL_VIA5: TCheckBox;
    chkQTH3: TCheckBox;
    chkQTH4: TCheckBox;
    chkQTH5: TCheckBox;
    chkRefreshAfterSave1: TCheckBox;
    chkRemarks3: TCheckBox;
    chkRemarks4: TCheckBox;
    chkRemarks5: TCheckBox;
    chkRST_R3: TCheckBox;
    chkRST_R4: TCheckBox;
    chkRST_R5: TCheckBox;
    chkRST_S3: TCheckBox;
    chkRST_S4: TCheckBox;
    chkRST_S5: TCheckBox;
    chkShow10m1: TCheckBox;
    chkShow12m1: TCheckBox;
    chkShow136k1: TCheckBox;
    chkShow13cm1: TCheckBox;
    chkShow15m1: TCheckBox;
    chkShow160m1: TCheckBox;
    chkShow17m1: TCheckBox;
    chkShow1cm1: TCheckBox;
    chkShow20m1: TCheckBox;
    chkShow23cm1: TCheckBox;
    chkShow2m1: TCheckBox;
    chkShow30m1: TCheckBox;
    chkShow3cm1: TCheckBox;
    chkShow3mm1: TCheckBox;
    chkShow40m1: TCheckBox;
    chkShow5cm1: TCheckBox;
    chkShow6m1: TCheckBox;
    chkShow6mm1: TCheckBox;
    chkShow33CM: TCheckBox;
    chkShow80m1: TCheckBox;
    chkShow8cm1: TCheckBox;
    chkSkipModeFreq: TCheckBox;
    chkRefreshAfterSave: TCheckBox;
    chkCW: TCheckBox;
    chkSkipModeFreq1: TCheckBox;
    chkSSB: TCheckBox;
    chkShow125CM: TCheckBox;
    chkShow23CM: TCheckBox;
    chkShow3CM: TCheckBox;
    chkShow4MM: TCheckBox;
    chkShow70CM: TCheckBox;
    chkShow6CM: TCheckBox;
    chkShow9CM: TCheckBox;
    chkShow6M: TCheckBox;
    chkShow2M: TCheckBox;
    chkShow10M: TCheckBox;
    chkShow30M: TCheckBox;
    chkShow20M: TCheckBox;
    chkShow12M: TCheckBox;
    chkShow40M: TCheckBox;
    chkShow15M: TCheckBox;
    chkShow13CM: TCheckBox;
    chkShow80M: TCheckBox;
    chkShow160M: TCheckBox;
    chkShow2190M: TCheckBox;
    chkCloseAterSave1: TCheckBox;
    chkNoConnection1: TCheckBox;
    chkOpenAfterRun1: TCheckBox;
    chkProfileLocator1: TCheckBox;
    chkProfileQTH1: TCheckBox;
    chkProfileRig: TCheckBox;
    chkProfileQTH: TCheckBox;
    chkProfileLocator: TCheckBox;
    chkProfileRig1: TCheckBox;
    chkShow17M: TCheckBox;
    chkShow6MM: TCheckBox;
    chkShowGrayline1: TCheckBox;
    chkShowTRXwindow1: TCheckBox;
    chkSSB1: TCheckBox;
    chkTimeOff3: TCheckBox;
    chkTimeOff4: TCheckBox;
    chkTimeOff5: TCheckBox;
    chkTimeOn3: TCheckBox;
    chkTimeOn4: TCheckBox;
    chkTimeOn5: TCheckBox;
    chkUseProfiles: TCheckBox;
    chkUseProfiles1: TCheckBox;
    chkUseSpaceBar: TCheckBox;
    chkITU: TCheckBox;
    chkUseSpaceBar1: TCheckBox;
    chkWAZ: TCheckBox;
    chkRemarks: TCheckBox;
    chkDXCC: TCheckBox;
    chkPower: TCheckBox;
    chkCounty: TCheckBox;
    chkAward: TCheckBox;
    chkIOTA: TCheckBox;
    chkMyLoc: TCheckBox;
    chkLoc: TCheckBox;
    chkQSL_VIA: TCheckBox;
    chkQTH: TCheckBox;
    chkName: TCheckBox;
    chkRST_R: TCheckBox;
    chkRST_S: TCheckBox;
    chkQSL_R: TCheckBox;
    chkQSL_S: TCheckBox;
    chkFreq: TCheckBox;
    chkMode: TCheckBox;
    chkCallSign: TCheckBox;
    chkTimeOff: TCheckBox;
    chkTimeOn: TCheckBox;
    chkDate: TCheckBox;
    chkWAZ3: TCheckBox;
    chkWAZ4: TCheckBox;
    chkWAZ5: TCheckBox;
    cl20db : TColorBox;
    cl30db : TColorBox;
    clOver30db : TColorBox;
    clBoxBandITU: TColorBox;
    clboxQSLIOTA: TColorBox;
    clboxNewITU: TColorBox;
    clboxNewIOTA: TColorBox;
    clBoxQSLITU: TColorBox;
    cmbDataBitsR2: TComboBox;
    cmbDataBitsRot1: TComboBox;
    cmbDataBitsRot2: TComboBox;
    cmbDTRR1: TComboBox;
    cmbDTRRot1: TComboBox;
    cmbDTRRot2: TComboBox;
    cmbHaColor: TColorBox;
    cmbClColor: TColorBox;
    cmbHrColor: TColorBox;
    cmbHanshakeRot1: TComboBox;
    cmbHanshakeRot2: TComboBox;
    cmbParityRot1: TComboBox;
    cmbParityRot2: TComboBox;
    cmbRTSR1: TComboBox;
    cmbDTRR2: TComboBox;
    cmbRTSR2: TComboBox;
    cmbHanshakeR2: TComboBox;
    cmbParityR2: TComboBox;
    cmbRTSRot1: TComboBox;
    cmbRTSRot2: TComboBox;
    cmbSpeedR1: TComboBox;
    cmbSpeedR2: TComboBox;
    cmbSpeedRot1: TComboBox;
    cmbSpeedRot2: TComboBox;
    cmbStopBitsR1: TComboBox;
    cmbDefaultMode: TComboBox;
    cmbDefaultMode1: TComboBox;
    cmbeQSLBckColor: TColorBox;
    cmbHanshakeR1: TComboBox;
    cmbParityR1: TComboBox;
    cmbQSL_S: TComboBox;
    cmbSecondSaveTo: TComboBox;
    cmbStopBitsR2: TComboBox;
    cmbStopBitsRot1: TComboBox;
    cmbStopBitsRot2: TComboBox;
    cmbThirdSaveTo: TComboBox;
    cmbSecondZip: TComboBox;
    cmbSecondClub: TComboBox;
    cmbThirdZip: TComboBox;
    cmbThirdClub: TComboBox;
    cmbFourthClub: TComboBox;
    cmbFifthClub: TComboBox;
    cmbMode: TComboBox;
    cmbMode1: TComboBox;
    cmbNewBand1: TColorBox;
    cmbNewMode: TColorBox;
    cmbQSLNeeded: TColorBox;
    cmbFreq: TComboBox;
    cmbProfiles: TComboBox;
    cmbNewCountry: TColorBox;
    cmbNewBand: TColorBox;
    clboxNewWaz: TColorBox;
    clBoxBandWAZ: TColorBox;
    clBoxQSLWAZ: TColorBox;
    cmbFirstClub: TComboBox;
    cmbQSOBandColor: TColorBox;
    cmbFrmDXCColor: TColorBox;
    cmbFirstZip: TComboBox;
    cmbFirstSaveTo: TComboBox;
    cmbIfaceType: TComboBox;
    cmbXplanetColor: TColorBox;
    cmbLoTWBckColor: TColorBox;
    cmbDataBitsR1: TComboBox;
    cl10db : TColorBox;
    edtK3NGSerSpeed: TEdit;
    edtAlertCmd: TEdit;
    edtRBNServer : TEdit;
    edtClEmail: TEdit;
    edtHrCode: TEdit;
    edtHrUserName: TEdit;
    edtHaPasswd: TEdit;
    edtClPasswd: TEdit;
    edtHaUserName: TEdit;
    edtDelAfter : TEdit;
    edtClUserName: TEdit;
    edtRotor2: TEdit;
    edtWatchFor : TEdit;
    edtRBNLogin : TEdit;
    edtFreqChange : TEdit;
    edtPoll1: TEdit;
    edtPoll2: TEdit;
    edtRot1Poll: TEdit;
    edtRot2Poll: TEdit;
    edtR1Device: TEdit;
    edtRot1Device: TEdit;
    edtRot1Host: TEdit;
    edtRot1RotCtldArgs: TEdit;
    edtRot1RotCtldPort: TEdit;
    edtR2Device: TEdit;
    edtR1Host: TEdit;
    edtRot2Device: TEdit;
    edtR2Host: TEdit;
    edtR1RigCtldArgs: TEdit;
    edtRot2Host: TEdit;
    edtR2RigCtldArgs: TEdit;
    edtR1RigCtldPort: TEdit;
    edtRot2RotCtldArgs: TEdit;
    edtR2RigCtldPort: TEdit;
    edtRot2RotCtldPort: TEdit;
    edtRadio1: TEdit;
    edtRadio2: TEdit;
    edtRotor1: TEdit;
    edtRigCtldPath: TEdit;
    edtAM1: TSpinEdit;
    edtClub1Date: TEdit;
    edtClub2Date: TEdit;
    edtClub4Date: TEdit;
    edtClub5Date: TEdit;
    edtClub3Date: TEdit;
    edtCW1: TSpinEdit;
    edtCW2: TSpinEdit;
    edtFM1: TSpinEdit;
    edtFM2: TSpinEdit;
    edtImgFiles: TEdit;
    edtHtmlFiles: TEdit;
    edtCbPass: TEdit;
    edtCbUser: TEdit;
    edteQSLName: TEdit;
    edteQSLPass: TEdit;
    edtRot1ID: TEdit;
    edtRot2ID: TEdit;
    edtRotCtldPath: TEdit;
    edtRigID1: TEdit;
    edtRigID2: TEdit;
    edtRTTY1: TSpinEdit;
    edtRTTY2: TSpinEdit;
    edtSSB1: TSpinEdit;
    edtSSB2: TSpinEdit;
    edtTxtFiles: TEdit;
    edtDigiModes: TEdit;
    edtFldigiPath: TEdit;
    edtBackupPath: TEdit;
    edtDefaultFreq: TEdit;
    edtDefaultRST: TEdit;
    edtGrayLineOffset: TEdit;
    edtSunOffset: TEdit;
    edtLoadFromFldigi1: TSpinEdit;
    edtOffset: TEdit;
    edtCWAddress: TEdit;
    edtCWPort: TEdit;
    edtPdfFiles: TEdit;
    edtWinPort: TEdit;
    edtRecetQSOs: TEdit;
    edtLoTWPass: TEdit;
    edtLoTWName: TEdit;
    edtWAward: TEdit;
    edtWCall: TEdit;
    edtWCounty: TEdit;
    edtWDate: TEdit;
    edtWDXCC: TEdit;
    edtWFreq: TEdit;
    edtCWSpeed: TSpinEdit;
    edtWinMinSpeed: TSpinEdit;
    edtWinMaxSpeed: TSpinEdit;
    edtK3NGPort: TEdit;
    edtK3NGSpeed: TSpinEdit;
    edtWIOTA: TEdit;
    edtWITU: TEdit;
    edtWLoc: TEdit;
    edtWLQSLR: TEdit;
    edtWeQSLR: TEdit;
    edtWeQSLRDate: TEdit;
    edtWeQSLS: TEdit;
    edtWeQSLSDate: TEdit;
    edtWQSLRDate: TEdit;
    edtWQSLSDate: TEdit;
    edtWMode: TEdit;
    edtWMyLoc: TEdit;
    edtWName: TEdit;
    edtWNote: TEdit;
    edtWPower: TEdit;
    edtWQSLR: TEdit;
    edtWQSLS: TEdit;
    edtWLQSLRDate: TEdit;
    edtWQSLVIA: TEdit;
    edtWQTH: TEdit;
    edtWRemarks: TEdit;
    edtWRstR: TEdit;
    edtWRstS: TEdit;
    edtWState: TEdit;
    edtWLQSLS: TEdit;
    edtWLQSLSDate: TEdit;
    edtWTimeOff: TEdit;
    edtWTimeOn: TEdit;
    edtWWAZ: TEdit;
    edtXRefresh: TEdit;
    edtXLastSpots: TEdit;
    edtXTop: TEdit;
    edtXWidth: TEdit;
    edtXHeight: TEdit;
    edtXplanetPath: TEdit;
    edtFirst: TEdit;
    edtSecond: TEdit;
    edtDisep: TEdit;
    edtWebBrowser: TEdit;
    edtDoNotShow1: TEdit;
    edtWAward1: TEdit;
    edtDoNotShow: TEdit;
    edtXLeft: TEdit;
    edtAM2: TSpinEdit;
    edtCIV3: TEdit;
    edtPasswd1: TEdit;
    edtPort1: TEdit;
    edtRadioPort2: TEdit;
    edtPasswd: TEdit;
    edtUser: TEdit;
    edtPort: TEdit;
    edtProxy: TEdit;
    edtComments: TEdit;
    edtPWR: TEdit;
    edtRST_S: TEdit;
    edtLoc: TEdit;
    edtCall: TEdit;
    edtQTH: TEdit;
    edtName: TEdit;
    edtRST_R: TEdit;
    dlgFont: TFontDialog;
    gbProfiles1: TGroupBox;
    grbSerialR2: TGroupBox;
    grbSerialR3: TGroupBox;
    grbSerialR4: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    GroupBox24: TGroupBox;
    GroupBox25: TGroupBox;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    GroupBox29: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox30: TGroupBox;
    GroupBox31: TGroupBox;
    GroupBox32: TGroupBox;
    GroupBox33: TGroupBox;
    GroupBox34: TGroupBox;
    GroupBox35: TGroupBox;
    GroupBox36: TGroupBox;
    GroupBox37: TGroupBox;
    GroupBox38: TGroupBox;
    GroupBox39: TGroupBox;
    gbProfiles: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox40: TGroupBox;
    grbSerialR1: TGroupBox;
    GroupBox41: TGroupBox;
    GroupBox42: TGroupBox;
    GroupBox43: TGroupBox;
    GroupBox44: TGroupBox;
    GroupBox45: TGroupBox;
    GroupBox46: TGroupBox;
    GroupBox47: TGroupBox;
    GroupBox48: TGroupBox;
    GroupBox49: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label11: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label12: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label13: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label14: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label15: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label16: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166 : TLabel;
    Label167 : TLabel;
    Label168 : TLabel;
    Label169 : TLabel;
    Label17: TLabel;
    Label170 : TLabel;
    Label171 : TLabel;
    Label172 : TLabel;
    Label173 : TLabel;
    Label174 : TLabel;
    Label175 : TLabel;
    Label176 : TLabel;
    Label177 : TLabel;
    Label178 : TLabel;
    Label179: TLabel;
    Label18: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190 : TLabel;
    Label191 : TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    lbl: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26 : TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    lbl1: TLabel;
    lblButtons: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label5: TLabel;
    lblbFont: TLabel;
    lblEdits: TLabel;
    lblStatistics: TLabel;
    lblQSOList: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    lbleFont: TLabel;
    lblgFont: TLabel;
    lblqFont: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    lblBandMapFont: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label9: TLabel;
    lbleFont1: TLabel;
    lbPreferences: TListBox;
    dlgOpen: TOpenDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pgTRXControl: TPageControl;
    pgPreferences: TPageControl;
    Panel1: TPanel;
    pgROTControl: TPageControl;
    rbHamQTH: TRadioButton;
    rbQRZ: TRadioButton;
    rgBackupType: TRadioGroup;
    rgRSTFrom: TRadioGroup;
    RadioGroup2: TRadioGroup;
    rbRSTDefault1: TRadioButton;
    rbRSTFldigi1: TRadioButton;
    rgFreqFrom1: TRadioGroup;
    rgModeFrom: TRadioGroup;
    rgFreqFrom: TRadioGroup;
    rgFirstZipPos: TRadioGroup;
    rgModeFrom1: TRadioGroup;
    rgSecondZipPos: TRadioGroup;
    rgThirdZipPos: TRadioGroup;
    rgShowFrom: TRadioGroup;
    rgProjection: TRadioGroup;
    rgStatistics: TRadioGroup;
    rbShowAll1: TRadioButton;
    rbShowSince1: TRadioButton;
    edtWinSpeed: TSpinEdit;
    edtLoadFromFldigi: TSpinEdit;
    tabExport: TTabSheet;
    tabExport1: TTabSheet;
    tabFont1: TTabSheet;
    tabModes1: TTabSheet;
    tabQTHProfiles1: TTabSheet;
    tabBandMap: TTabSheet;
    tabLoTW: TTabSheet;
    tabCWInterface: TTabSheet;
    tabFldigi1: TTabSheet;
    tabAutoBackup: TTabSheet;
    tabExtViewers: TTabSheet;
    tabCallbook: TTabSheet;
    TabROTcontrol: TTabSheet;
    tabRBN : TTabSheet;
    tabOnlineLog: TTabSheet;
    tabTRX2: TTabSheet;
    tabTRX1: TTabSheet;
    tabRot1: TTabSheet;
    tabRot2: TTabSheet;
    tabZipCode: TTabSheet;
    tabXplanet: TTabSheet;
    tabStation: TTabSheet;
    tabFont: TTabSheet;
    tabIOTA: TTabSheet;
    tabMemebership: TTabSheet;
    tabWazItu: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    tabNewQSO: TTabSheet;
    tabProgram: TTabSheet;
    tabVisibleColumns: TTabSheet;
    tabBands: TTabSheet;
    tabTRXcontrol: TTabSheet;
    tabModes: TTabSheet;
    tabQTHProfiles: TTabSheet;
    tabDXCluster: TTabSheet;
    procedure btnAlertCallsignsClick(Sender: TObject);
    procedure btnCfgStorageClick(Sender: TObject);
    procedure btnChangeDefFreqClick(Sender: TObject);
    procedure btnChangeDefModeClick(Sender: TObject);
    procedure btnFldigiPathClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnBrowseBackupClick(Sender: TObject);
    procedure btnChangeDefaultFreqClick(Sender: TObject);
    procedure btnKeyTextClick(Sender: TObject);
    procedure btnSplitClick(Sender: TObject);
    procedure chkClUpEnabledChange(Sender: TObject);
    procedure chkHaUpEnabledChange(Sender: TObject);
    procedure chkHrUpEnabledChange(Sender: TObject);
    procedure chkPotSpeedChange(Sender: TObject);
    procedure chkProfileLocatorClick(Sender: TObject);
    procedure chkProfileQTHClick(Sender: TObject);
    procedure chkProfileRigClick(Sender: TObject);
    procedure chkSysUTCClick(Sender: TObject);
    procedure chkUseDXCColorsChange(Sender: TObject);
    procedure btnFirstLoadClick(Sender: TObject);
    procedure btnSecondLoadClick(Sender: TObject);
    procedure btnThirdLoadClick(Sender: TObject);
    procedure cmbDataBitsR1Change(Sender : TObject);
    procedure cmbDataBitsR2Change(Sender : TObject);
    procedure cmbDTRR1Change(Sender : TObject);
    procedure cmbDTRR2Change(Sender : TObject);
    procedure cmbHanshakeR1Change(Sender : TObject);
    procedure cmbHanshakeR2Change(Sender : TObject);
    procedure cmbIfaceTypeChange(Sender: TObject);
    procedure cmbParityR1Change(Sender : TObject);
    procedure cmbParityR2Change(Sender : TObject);
    procedure cmbRTSR1Change(Sender : TObject);
    procedure cmbRTSR2Change(Sender : TObject);
    procedure cmbSpeedR1Change(Sender : TObject);
    procedure cmbSpeedR2Change(Sender : TObject);
    procedure cmbStopBitsR1Change(Sender : TObject);
    procedure cmbStopBitsR2Change(Sender : TObject);
    procedure edtK3NGSerSpeedChange(Sender: TObject);
    procedure edtR1RigCtldArgsChange(Sender: TObject);
    procedure edtR1RigCtldPortChange(Sender : TObject);
    procedure edtR2RigCtldArgsChange(Sender : TObject);
    procedure edtR2RigCtldPortChange(Sender : TObject);
    procedure edtRadio1Change(Sender: TObject);
    procedure edtRadio2Change(Sender: TObject);
    procedure edtRecetQSOsKeyPress(Sender: TObject; var Key: char);
    procedure edtWinMaxSpeedChange(Sender: TObject);
    procedure edtWinMinSpeedChange(Sender: TObject);
    procedure edtWinPortChange(Sender: TObject);
    procedure edtWinSpeedChange(Sender: TObject);
    procedure lbPreferencesClick(Sender: TObject);
    procedure btnDefineProfileClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnLoadFifthClick(Sender: TObject);
    procedure btnLoadFirstClick(Sender: TObject);
    procedure btnLoadFourthClick(Sender: TObject);
    procedure btnLoadSecondClick(Sender: TObject);
    procedure btnLoadThirdClick(Sender: TObject);
    procedure btnSelbFontClick(Sender: TObject);
    procedure btnSeleFontClick(Sender: TObject);
    procedure btnSelectBandFontClick(Sender: TObject);
    procedure btnSelqFontClick(Sender: TObject);
    procedure btnSelsFontClick(Sender: TObject);
    procedure btnSetFifthClick(Sender: TObject);
    procedure btnSetFirstClick(Sender: TObject);
    procedure btnSetFourthClick(Sender: TObject);
    procedure btnSetSecondClick(Sender: TObject);
    procedure btnSetThirdClick(Sender: TObject);
    procedure btnTestXplanetClick(Sender: TObject);
    procedure chkUseProfilesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnFrequenciesClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPoll2Exit(Sender: TObject);
    procedure edtPoll1Exit(Sender: TObject);
    procedure pgPreferencesChange(Sender: TObject);
  private
    wasOnlineLogSupportEnabled : Boolean;
  public
    { public declarations }
  end;

var
  frmPreferences: TfrmPreferences;
  feSize: integer;
  fbSize: integer;
  fgSize: integer;
  fqSize: integer;
  fbandSize: integer;
  TRXChanged: boolean;
  ReloadFreq: Boolean = False;
  ReloadModes: Boolean = False;
  WinKeyerChanged : Boolean;

implementation

{ TfrmPreferences }
uses dUtils, dData, fMain, fFreq, fQTHProfiles, fSerialPort, fClubSettings, fLoadClub,
  fGrayline, fNewQSO, fBandMap, fBandMapFilter, fDefaultFreq, fKeyTexts, fTRXControl,
  fSplitSettings, uMyIni, fNewQSODefValues, fDXCluster, fCallAlert, fConfigStorage;

procedure TfrmPreferences.btnOKClick(Sender: TObject);
var
  freq : Currency;
  int  : integer;
  KeyType: TKeyType;
begin
  cqrini.WriteString('Station', 'Call', edtCall.Text);
  cqrini.WriteString('Station', 'Name', edtName.Text);
  cqrini.WriteString('Station', 'QTH', edtQTH.Text);
  cqrini.WriteString('Station', 'LOC', edtLoc.Text);

  cqrini.WriteString('NewQSO', 'RST_S', edtRST_S.Text);
  cqrini.WriteString('NewQSO', 'RST_R', edtRST_R.Text);
  cqrini.WriteString('NewQSO', 'PWR', edtPWR.Text);
  cqrini.WriteString('NewQSO', 'FREQ', cmbFreq.Text);
  cqrini.WriteString('NewQSO', 'Mode', cmbMode.Text);
  cqrini.WriteString('NewQSO', 'QSL_S', cmbQSL_S.Text);
  cqrini.WriteString('NewQSO', 'RemQSO', edtComments.Text);
  cqrini.WriteBool('NewQSO', 'UseSpaceBar', chkUseSpaceBar.Checked);
  cqrini.WriteBool('NewQSO', 'RefreshAfterSave', chkRefreshAfterSave.Checked);
  cqrini.WriteBool('NewQSO', 'SkipModeFreq', chkSkipModeFreq.Checked);
  cqrini.WriteBool('NewQSO', 'AutoSearch', chkAutoSearch.Checked);
  cqrini.WriteBool('NewQSO', 'ShowRecentQSOs', chkShowRecentQSOs.Checked);
  cqrini.WriteString('NewQSO', 'RecQSOsNum', edtRecetQSOs.Text);
  cqrini.WriteBool('NewQSO', 'IgnoreQRZ', chkIgnoreQRZQSL.Checked);
  cqrini.WriteBool('NewQSO', 'MvToRem', chkMvToRem.Checked);
  cqrini.WriteBool('NewQSO', 'AutoQSLS', chkAutoQSLS.Checked);
  cqrini.WriteBool('NewQSO', 'AutoDQSLS', chkAutoDQSLS.Checked);
  cqrini.WriteBool('NewQSO', 'AutoQQSLS', chkAutoQQSLS.Checked);
  cqrini.WriteBool('NewQSO', 'AllVariants', chkAllVariants.Checked);
  cqrini.WriteBool('NewQSO','ClearRIT',chkClearRIT.Checked);
  if TryStrToCurr(edtFreqChange.Text,Freq) then
    cqrini.WriteFloat('NewQSO','FreqChange',freq/1000)
  else
    cqrini.WriteFloat('NewQSO','FreqChange',0.010);
  cqrini.WriteBool('NewQSO','ClearAfterFreqChange',chkClearNewQSOFreq.Checked);
  cqrini.WriteBool('NewQSO','UseCallBookData',chkUseCallBookData.Checked);

  cqrini.WriteString('Program', 'Proxy', edtProxy.Text);
  cqrini.WriteString('Program', 'Port', edtPort.Text);
  cqrini.WriteString('Program', 'User', edtUser.Text);
  cqrini.WriteString('Program', 'Passwd', edtPasswd.Text);
  cqrini.WriteFloat('Program', 'offset', StrToCurr(edtOffset.Text));
  cqrini.WriteInteger('Program', 'Options', pgPreferences.ActivePageIndex);
  cqrini.WriteBool('Program', 'BandStatMHz', rgStatistics.ItemIndex = 0);
  cqrini.WriteFloat('Program', 'GraylineOffset', StrToCurr(edtGrayLineOffset.Text));
  cqrini.WriteString('Program', 'WebBrowser', edtWebBrowser.Text);
  cqrini.WriteBool('Program', 'CheckDXCCTabs', chkNewDXCCTables.Checked);
  cqrini.WriteBool('Program', 'ShowDeleted', chkShowDeleted.Checked);
  cqrini.WriteBool('Program', 'SunUTC', chkSunUTC.Checked);
  cqrini.WriteBool('Program', 'CheckQSLTabs', chkNewQSLTables.Checked);
  cqrini.WriteFloat('Program', 'SunOffset', StrToCurr(edtSunOffset.Text));
  cqrini.WriteBool('Program', 'SysUTC', chkSysUTC.Checked);
  cqrini.WriteBool('Program','ShowMiles',chkShowMiles.Checked);

  cqrini.WriteBool('Columns', 'Date', chkDate.Checked);
  cqrini.WriteBool('Columns', 'time_on', chkTimeOn.Checked);
  cqrini.WriteBool('Columns', 'time_off', chkTimeOff.Checked);
  cqrini.WriteBool('Columns', 'CallSign', chkCallSign.Checked);
  cqrini.WriteBool('Columns', 'Mode', chkMode.Checked);
  cqrini.WriteBool('Columns', 'Freq', chkFreq.Checked);
  cqrini.WriteBool('Columns', 'RST_S', chkRST_S.Checked);
  cqrini.WriteBool('Columns', 'RST_R', chkRST_R.Checked);
  cqrini.WriteBool('Columns', 'Name', chkName.Checked);
  cqrini.WriteBool('Columns', 'QTH', chkQTH.Checked);
  cqrini.WriteBool('Columns', 'QSL_S', chkQSL_S.Checked);
  cqrini.WriteBool('Columns', 'QSL_R', chkQSL_R.Checked);
  cqrini.WriteBool('Columns', 'QSL_VIA', chkQSL_VIA.Checked);
  cqrini.WriteBool('Columns', 'Locator', chkLoc.Checked);
  cqrini.WriteBool('Columns', 'MyLoc', chkMyLoc.Checked);
  cqrini.WriteBool('Columns', 'IOTA', chkIOTA.Checked);
  cqrini.WriteBool('Columns', 'Award', chkAward.Checked);
  cqrini.WriteBool('Columns', 'Power', chkPower.Checked);
  cqrini.WriteBool('Columns', 'DXCC', chkDXCC.Checked);
  cqrini.WriteBool('Columns', 'Remarks', chkRemarks.Checked);
  cqrini.WriteBool('Columns', 'WAZ', chkWAZ.Checked);
  cqrini.WriteBool('Columns', 'ITU', chkITU.Checked);
  cqrini.WriteBool('Columns', 'County', chkCounty.Checked);
  cqrini.WriteBool('Columns', 'State', chkState.Checked);
  cqrini.WriteBool('Columns', 'LoTWQSLSDate', chkLoTWQSLSDate.Checked);
  cqrini.WriteBool('Columns', 'LoTWQSLRDate', chkLoTWQSLRDate.Checked);
  cqrini.WriteBool('Columns', 'LoTWQSLS', chkLoTWQSLS.Checked);
  cqrini.WriteBool('Columns', 'LOTWQSLR', chkLoTWQSLR.Checked);
  cqrini.WriteBool('Columns', 'Cont', chkCont.Checked);
  cqrini.WriteBool('Columns', 'QSLSDate', chkQSLSentDate.Checked);
  cqrini.WriteBool('Columns', 'QSLRDate', chkQSLRcvdDate.Checked);
  cqrini.WriteBool('Columns', 'eQSLQSLS', chkeQSLSent.Checked);
  cqrini.WriteBool('Columns', 'eQSLQSLSDate', chkeQSLSentDate.Checked);
  cqrini.WriteBool('Columns', 'eQSLQSLR', chkeQSLRcvd.Checked);
  cqrini.WriteBool('Columns', 'eQSLQSLRDate', chkeQSLRcvdDate.Checked);
  cqrini.WriteBool('Columns', 'QSLRAll', chkQSLRAll.Checked);
  cqrini.WriteBool('Columns', 'Country', chkCountry.Checked);

  cqrini.WriteBool('Bands', '137kHz', cb136kHz.Checked);
  cqrini.WriteBool('Bands', '472kHz', cb472kHz.Checked);
  cqrini.WriteBool('Bands', '160m', cb160m.Checked);
  cqrini.WriteBool('Bands', '80m', cb80m.Checked);
  cqrini.WriteBool('Bands', '60m', cb60m.Checked);
  cqrini.WriteBool('Bands', '40m', cb40m.Checked);
  cqrini.WriteBool('Bands', '30m', cb30m.Checked);
  cqrini.WriteBool('Bands', '20m', cb20m.Checked);
  cqrini.WriteBool('Bands', '17m', cb17m.Checked);
  cqrini.WriteBool('Bands', '15m', cb15m.Checked);
  cqrini.WriteBool('Bands', '12m', cb12m.Checked);
  cqrini.WriteBool('Bands', '10m', cb10m.Checked);

  cqrini.WriteBool('Bands', '4m', cb4m.Checked);
  cqrini.WriteBool('Bands', '6m', cb6m.Checked);
  cqrini.WriteBool('Bands', '2m', cb2m.Checked);
  cqrini.WriteBool('Bands', '1.25m', cb125m.Checked);
  cqrini.WriteBool('Bands', '70cm', cb70cm.Checked);
  cqrini.WriteBool('Bands', '33cm', cb30cm.Checked);
  cqrini.WriteBool('Bands', '23cm', cb23cm.Checked);
  cqrini.WriteBool('Bands', '13cm', cb13cm.Checked);
  cqrini.WriteBool('Bands', '8cm', cb8cm.Checked);
  cqrini.WriteBool('Bands', '5cm', cb5cm.Checked);
  cqrini.WriteBool('Bands', '3cm', cb3cm.Checked);
  cqrini.WriteBool('Bands', '1cm', cb1cm.Checked);
  cqrini.WriteBool('Bands', '47GHz', cb47GHz.Checked);
  cqrini.WriteBool('Bands', '76GHz', cb76GHz.Checked);

  cqrini.WriteString('TRX', 'RigCtldPath', edtRigCtldPath.Text);

  cqrini.WriteString('TRX1', 'device', edtR1Device.Text);
  cqrini.WriteString('TRX1', 'model', edtRigID1.Text);
  cqrini.WriteString('TRX1', 'poll', edtPoll1.Text);
  cqrini.WriteString('TRX1', 'Desc', edtRadio1.Text);
  cqrini.WriteBool('TRX1', 'CWR', chkR1SendCWR.Checked);
  cqrini.WriteString('TRX1', 'RigCtldPort', edtR1RigCtldPort.Text);
  cqrini.WriteString('TRX1', 'ExtraRigCtldArgs', edtR1RigCtldArgs.Text);
  cqrini.WriteBool('TRX1', 'RunRigCtld', chkR1RunRigCtld.Checked);
  cqrini.WriteString('TRX1', 'host', edtR1Host.Text);
  cqrini.WriteInteger('TRX1', 'SerialSpeed', cmbSpeedR1.ItemIndex);
  cqrini.WriteInteger('TRX1', 'DataBits', cmbDataBitsR1.ItemIndex);
  cqrini.WriteInteger('TRX1', 'StopBits', cmbStopBitsR1.ItemIndex);
  cqrini.WriteInteger('TRX1', 'Parity', cmbParityR1.ItemIndex);
  cqrini.WriteInteger('TRX1', 'HandShake', cmbHanshakeR1.ItemIndex);
  cqrini.WriteInteger('TRX1', 'DTR', cmbDTRR1.ItemIndex);
  cqrini.WriteInteger('TRX1', 'RTS', cmbRTSR1.ItemIndex);

  cqrini.WriteString('TRX2', 'device', edtR2Device.Text);
  cqrini.WriteString('TRX2', 'model', edtRigID2.Text);
  cqrini.WriteString('TRX2', 'poll', edtPoll2.Text);
  cqrini.WriteString('TRX2', 'Desc', edtRadio2.Text);
  cqrini.WriteBool('TRX2', 'CWR', chkR2SendCWR.Checked);
  cqrini.WriteString('TRX2', 'RigCtldPort', edtR2RigCtldPort.Text);
  cqrini.WriteString('TRX2', 'ExtraRigCtldArgs', edtR2RigCtldArgs.Text);
  cqrini.WriteBool('TRX2', 'RunRigCtld', chkR2RunRigCtld.Checked);
  cqrini.WriteString('TRX2', 'host', edtR2Host.Text);
  cqrini.WriteInteger('TRX2', 'SerialSpeed', cmbSpeedR2.ItemIndex);
  cqrini.WriteInteger('TRX2', 'DataBits', cmbDataBitsR2.ItemIndex);
  cqrini.WriteInteger('TRX2', 'StopBits', cmbStopBitsR2.ItemIndex);
  cqrini.WriteInteger('TRX2', 'Parity', cmbParityR2.ItemIndex);
  cqrini.WriteInteger('TRX2', 'HandShake', cmbHanshakeR2.ItemIndex);
  cqrini.WriteInteger('TRX2', 'DTR', cmbDTRR2.ItemIndex);
  cqrini.WriteInteger('TRX2', 'RTS', cmbRTSR2.ItemIndex);

  cqrini.WriteString('ROT', 'RotCtldPath', edtRotCtldPath.Text);

  cqrini.WriteString('ROT1', 'device', edtRot1Device.Text);
  cqrini.WriteString('ROT1', 'model', edtRot1ID.Text);
  cqrini.WriteString('ROT1', 'poll', edtRot1Poll.Text);
  cqrini.WriteString('ROT1', 'Desc', edtRotor1.Text);
  cqrini.WriteString('ROT1', 'RotCtldPort', edtRot1RotCtldPort.Text);
  cqrini.WriteString('ROT1', 'ExtraRotCtldArgs', edtRot1RotCtldArgs.Text);
  cqrini.WriteBool('ROT1', 'RunRotCtld', chkRot1RunRotCtld.Checked);
  cqrini.WriteString('ROT1', 'host', edtRot1Host.Text);
  cqrini.WriteInteger('ROT1', 'SerialSpeed', cmbSpeedRot1.ItemIndex);
  cqrini.WriteInteger('ROT1', 'DataBits', cmbDataBitsRot1.ItemIndex);
  cqrini.WriteInteger('ROT1', 'StopBits', cmbStopBitsRot1.ItemIndex);
  cqrini.WriteInteger('ROT1', 'Parity', cmbParityRot1.ItemIndex);
  cqrini.WriteInteger('ROT1', 'HandShake', cmbHanshakeRot1.ItemIndex);
  cqrini.WriteInteger('ROT1', 'DTR', cmbDTRRot1.ItemIndex);
  cqrini.WriteInteger('ROT1', 'RTS', cmbRTSRot1.ItemIndex);

  cqrini.WriteString('ROT2', 'device', edtRot2Device.Text);
  cqrini.WriteString('ROT2', 'model', edtRot2ID.Text);
  cqrini.WriteString('ROT2', 'poll', edtRot2Poll.Text);
  cqrini.WriteString('ROT2', 'Desc', edtRotor2.Text);
  cqrini.WriteString('ROT2', 'RotCtldPort', edtRot2RotCtldPort.Text);
  cqrini.WriteString('ROT2', 'ExtraRotCtldArgs', edtRot2RotCtldArgs.Text);
  cqrini.WriteBool('ROT2', 'RunRotCtld', chkRot2RunRotCtld.Checked);
  cqrini.WriteString('ROT2', 'host', edtRot2Host.Text);
  cqrini.WriteInteger('ROT2', 'SerialSpeed', cmbSpeedRot2.ItemIndex);
  cqrini.WriteInteger('ROT2', 'DataBits', cmbDataBitsRot2.ItemIndex);
  cqrini.WriteInteger('ROT2', 'StopBits', cmbStopBitsRot2.ItemIndex);
  cqrini.WriteInteger('ROT2', 'Parity', cmbParityRot2.ItemIndex);
  cqrini.WriteInteger('ROT2', 'HandShake', cmbHanshakeRot2.ItemIndex);
  cqrini.WriteInteger('ROT2', 'DTR', cmbDTRRot2.ItemIndex);
  cqrini.WriteInteger('ROT2', 'RTS', cmbRTSRot2.ItemIndex);

  cqrini.WriteInteger('Band1', 'CW', edtCW1.Value);
  cqrini.WriteInteger('Band1', 'SSB', edtSSB1.Value);
  cqrini.WriteInteger('Band1', 'RTTY', edtRTTY1.Value);
  cqrini.WriteInteger('Band1', 'AM', edtAM1.Value);
  cqrini.WriteInteger('Band1', 'FM', edtFM1.Value);

  cqrini.WriteInteger('Band2', 'CW', edtCW2.Value);
  cqrini.WriteInteger('Band2', 'SSB', edtSSB2.Value);
  cqrini.WriteInteger('Band2', 'RTTY', edtRTTY2.Value);
  cqrini.WriteInteger('Band2', 'AM', edtAM2.Value);
  cqrini.WriteInteger('Band2', 'FM', edtFM2.Value);

  cqrini.WriteString('Modes', 'Digi', edtDigiModes.Text);

  cqrini.WriteBool('Profiles', 'Use', chkUseProfiles.Checked);
  cqrini.WriteInteger('Profiles', 'Selected', dmData.GetNRFromProfile(cmbProfiles.Text));
  cqrini.WriteBool('Profiles', 'Locator', chkProfileLocator.Checked);
  cqrini.WriteBool('Profiles', 'QTH', chkProfileQTH.Checked);
  cqrini.WriteBool('Profiles', 'RIG', chkProfileRig.Checked);

  cqrini.WriteBool('Export', 'Date', chkexDate.Checked);
  cqrini.WriteBool('Export', 'time_on', chkexTimeOn.Checked);
  cqrini.WriteBool('Export', 'time_off', chkexTimeOff.Checked);
  cqrini.WriteBool('Export', 'CallSign', chkexCall.Checked);
  cqrini.WriteBool('Export', 'Mode', chkexMode.Checked);
  cqrini.WriteBool('Export', 'Freq', chkexFreq.Checked);
  cqrini.WriteBool('Export', 'RST_S', chkexRSTS.Checked);
  cqrini.WriteBool('Export', 'RST_R', chkexRSTR.Checked);
  cqrini.WriteBool('Export', 'Name', chkexName.Checked);
  cqrini.WriteBool('Export', 'QTH', chkexQTH.Checked);
  cqrini.WriteBool('Export', 'QSL_S', chkexQSLS.Checked);
  cqrini.WriteBool('Export', 'QSL_R', chkexQSLR.Checked);
  cqrini.WriteBool('Export', 'QSL_VIA', chkexQSLVIA.Checked);
  cqrini.WriteBool('Export', 'Locator', chkexLoc.Checked);
  cqrini.WriteBool('Export', 'MyLoc', chkexMyLoc.Checked);
  cqrini.WriteBool('Export', 'IOTA', chkexIOTA.Checked);
  cqrini.WriteBool('Export', 'Award', chkexAward.Checked);
  cqrini.WriteBool('Export', 'County', chkexCounty.Checked);
  cqrini.WriteBool('Export', 'Power', chkexPower.Checked);
  cqrini.WriteBool('Export', 'DXCC', chkexDXCC.Checked);
  cqrini.WriteBool('Export', 'Remarks', chkexRemarks.Checked);
  cqrini.WriteBool('Export', 'WAZ', chkexWAZ.Checked);
  cqrini.WriteBool('Export', 'ITU', chkexITU.Checked);
  cqrini.WriteBool('Export', 'Note', chkexNote.Checked);
  cqrini.WriteBool('Export', 'Profile', chkProfile.Checked);
  cqrini.WriteBool('Export', 'State', chkexState.Checked);
  cqrini.WriteBool('Export', 'LQSLS', chkexLQSLS.Checked);
  cqrini.WriteBool('Export', 'LQSLSDate', chkexLQSLSDate.Checked);
  cqrini.WriteBool('Export', 'LQSLR', chkexLQSLR.Checked);
  cqrini.WriteBool('Export', 'LQSLRDate', chkexLQSLRDate.Checked);
  cqrini.WriteBool('Export', 'Cont', chkExCont.Checked);
  cqrini.WriteBool('Export', 'QSLSDate', chkexQSLSDate.Checked);
  cqrini.WriteBool('Export', 'QSLRDate', chkexQSLRDate.Checked);
  cqrini.WriteBool('Export', 'eQSLS', chkexeQSLS.Checked);
  cqrini.WriteBool('Export', 'eQSLSDate', chkexeQSLSDate.Checked);
  cqrini.WriteBool('Export', 'eQSLR', chkexeQSLR.Checked);
  cqrini.WriteBool('Export', 'eQSLRDate', chkexeQSLRDate.Checked);

  cqrini.WriteString('Export', 'WDate', edtWDate.Text);
  cqrini.WriteString('Export', 'Wtime_on', edtWTimeOn.Text);
  cqrini.WriteString('Export', 'Wtime_off', edtWTimeOff.Text);
  cqrini.WriteString('Export', 'WCallSign', edtWCall.Text);
  cqrini.WriteString('Export', 'WMode', edtWMode.Text);
  cqrini.WriteString('Export', 'WFreq', edtWFreq.Text);
  cqrini.WriteString('Export', 'WRST_S', edtWRstS.Text);
  cqrini.WriteString('Export', 'WRST_R', edtWRstR.Text);
  cqrini.WriteString('Export', 'WName', edtWName.Text);
  cqrini.WriteString('Export', 'WQTH', edtWQTH.Text);
  cqrini.WriteString('Export', 'WQSL_S', edtWQSLS.Text);
  cqrini.WriteString('Export', 'WQSL_R', edtWQSLR.Text);
  cqrini.WriteString('Export', 'WQSL_VIA', edtWQSLVIA.Text);
  cqrini.WriteString('Export', 'WLocator', edtWLoc.Text);
  cqrini.WriteString('Export', 'WMyLoc', edtWMyLoc.Text);
  cqrini.WriteString('Export', 'WIOTA', edtWIOTA.Text);
  cqrini.WriteString('Export', 'WAward', edtWAward.Text);
  cqrini.WriteString('Export', 'WCounty', edtWCounty.Text);
  cqrini.WriteString('Export', 'WPower', edtWPower.Text);
  cqrini.WriteString('Export', 'WDXCC', edtWDXCC.Text);
  cqrini.WriteString('Export', 'WRemarks', edtWRemarks.Text);
  cqrini.WriteString('Export', 'WWAZ', edtWWAZ.Text);
  cqrini.WriteString('Export', 'WITU', edtWITU.Text);
  cqrini.WriteString('Export', 'WNote', edtWNote.Text);
  cqrini.WriteString('Export', 'WState', edtWState.Text);
  cqrini.WriteString('Export', 'WLQSLS', edtWLQSLS.Text);
  cqrini.WriteString('Export', 'WLQSLSDate', edtWLQSLSDate.Text);
  cqrini.WriteString('Export', 'WLQSLR', edtWLQSLR.Text);
  cqrini.WriteString('Export', 'WLQSLRDate', edtWLQSLRDate.Text);
  cqrini.WriteString('Export', 'WQSLSDate', edtWQSLSDate.Text);
  cqrini.WriteString('Export', 'WQSLRDate', edtWQSLRDate.Text);
  cqrini.WriteString('Export', 'WeQSLS', edtWeQSLS.Text);
  cqrini.WriteString('Export', 'WeQSLSDate', edtWeQSLSDate.Text);
  cqrini.WriteString('Export', 'WeQSLR', edtWeQSLR.Text);
  cqrini.WriteString('Export', 'WeQSLRDate', edtWeQSLRDate.Text);

  cqrini.WriteInteger('DXCluster', 'NewCountry', cmbNewCountry.Selected);
  cqrini.WriteInteger('DXCluster', 'NewBand', cmbNewBand.Selected);
  cqrini.WriteInteger('DXCluster', 'NewMode', cmbNewMode.Selected);
  cqrini.WriteInteger('DXCluster', 'NeedQSL', cmbQSLNeeded.Selected);
  cqrini.WriteBool('DXCluster', 'Show2190M', chkShow2190M.Checked);
  cqrini.WriteBool('DXCluster', 'Show630M', chkShow630M.Checked);
  cqrini.WriteBool('DXCluster', 'Show160M', chkShow160M.Checked);
  cqrini.WriteBool('DXCluster', 'Show80M', chkShow80M.Checked);
  cqrini.WriteBool('DXCluster', 'Show60M', chkShow60M.Checked);
  cqrini.WriteBool('DXCluster', 'Show40M', chkShow40M.Checked);
  cqrini.WriteBool('DXCluster', 'Show30M', chkShow30M.Checked);
  cqrini.WriteBool('DXCluster', 'Show20M', chkShow20M.Checked);
  cqrini.WriteBool('DXCluster', 'Show17M', chkShow17M.Checked);
  cqrini.WriteBool('DXCluster', 'Show15M', chkShow15M.Checked);
  cqrini.WriteBool('DXCluster', 'Show12M', chkShow12M.Checked);
  cqrini.WriteBool('DXCluster', 'Show10M', chkShow10M.Checked);
  cqrini.WriteBool('DXCluster', 'Show6M', chkShow6M.Checked);
  cqrini.WriteBool('DXCluster', 'Show4M', chkShow4M.Checked);
  cqrini.WriteBool('DXCluster', 'Show2M', chkShow2M.Checked);
  cqrini.WriteBool('DXCluster', 'Show125M', chkShow125M.Checked);
  cqrini.WriteBool('DXCluster', 'Show70CM', chkShow70CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show33CM', chkShow33CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show23CM', chkShow23CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show13CM', chkShow13CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show9CM', chkShow9CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show6CM', chkShow6CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show3CM', chkShow3CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show125CM', chkShow125CM.Checked);
  cqrini.WriteBool('DXCluster', 'Show6MM', chkShow6MM.Checked);
  cqrini.WriteBool('DXCluster', 'Show4MM', chkShow4MM.Checked);
  cqrini.WriteBool('DXCluster', 'CW', chkCW.Checked);
  cqrini.WriteBool('DXCluster', 'SSB', chkSSB.Checked);
  cqrini.WriteString('DXCluster', 'NotShow', edtDoNotShow.Text);
  cqrini.WriteBool('DXCluster', 'ConAfterRun', chkConToDXC.Checked);
  cqrini.WriteBool('DXCluster','ShowDxcCountry',chkShowDxcCountry.Checked);
  cqrini.WriteString('DXCluster','AlertCmd', edtAlertCmd.Text);

  cqrini.WriteBool('Fonts', 'UseDefault', chkUseDefaultSEttings.Checked);
  cqrini.WriteString('Fonts', 'Buttons', lblbFont.Caption);
  cqrini.WriteString('Fonts', 'Edits', lbleFont.Caption);
  cqrini.WriteString('Fonts', 'Grids', lblgFont.Caption);
  cqrini.WriteString('Fonts', 'QGrids', lblqFont.Caption);
  cqrini.WriteInteger('Fonts', 'eSize', feSize);
  cqrini.WriteInteger('Fonts', 'bSize', fbSize);
  cqrini.WriteInteger('Fonts', 'gSize', fgSize);
  cqrini.WriteInteger('Fonts', 'qSize', fqSize);

  cqrini.WriteBool('Fonts','GridGreenBar',chkgridgreenbar.Checked);
  cqrini.WriteBool('Fonts','GridBoldTitle',chkgridboldtitle.Checked);
  cqrini.WriteBool('Fonts','GridShowHint',chkgridshowhint.Checked);
  cqrini.WriteBool('Fonts','GridSmallRows',chkgridsmallrows.Checked);
  cqrini.WriteBool('Fonts','GridDotsInsteadSpaces',chkgriddotsinsteadspaces.Checked);

  cqrini.WriteInteger('Zones', 'NewWAZ', clboxNewWaz.Selected);
  cqrini.WriteInteger('Zones', 'NewBandWAZ', clBoxBandWAZ.Selected);
  cqrini.WriteInteger('Zones', 'QSLWAZ', clBoxQSLWAZ.Selected);
  cqrini.WriteInteger('Zones', 'NewITU', clboxNewITU.Selected);
  cqrini.WriteInteger('Zones', 'NewBandITU', clBoxBandITU.Selected);
  cqrini.WriteInteger('Zones', 'QSLITU', clBoxQSLITU.Selected);
  cqrini.WriteBool('Zones', 'ShowWAZInfo', chkShowWAZInfo.Checked);
  cqrini.WriteBool('Zones', 'ShowITUInfo', chkShowITUInfo.Checked);

  cqrini.WriteInteger('IOTA', 'NewIOTA', clboxNewIOTA.Selected);
  cqrini.WriteInteger('IOTA', 'QSLIOTA', clboxQSLIOTA.Selected);
  cqrini.WriteBool('IOTA', 'ShowIOTAInfo', chkShowIOTAInfo.Checked);

  cqrini.WriteString('Clubs', 'First', cmbFirstClub.Text);
  cqrini.WriteString('Clubs', 'Second', cmbSecondClub.Text);
  cqrini.WriteString('Clubs', 'Third', cmbThirdClub.Text);
  cqrini.WriteString('Clubs', 'Fourth', cmbFourthClub.Text);
  cqrini.WriteString('Clubs', 'Fifth', cmbFifthClub.Text);

  cqrini.WriteString('BandMap', 'BandFont', lblBandMapFont.Font.Name);
  cqrini.WriteInteger('BandMap', 'FontSize', fbandSize);
  cqrini.WriteInteger('BandMap', 'NewQSOColor', cmbQSOBandColor.Selected);
  cqrini.WriteBool('BnadMap', 'in_kHz', chkBandMapkHz.Checked);
  cqrini.WriteBool('BandMap', 'Save', chkSaveBandMap.Checked);
  cqrini.WriteInteger('BandMap', 'FirstAging', StrToInt(edtFirst.Text));
  cqrini.WriteInteger('BandMap', 'SecondAging', StrToInt(edtSecond.Text));
  cqrini.WriteInteger('BandMap', 'Disep', StrToInt(edtDisep.Text));
  cqrini.WriteInteger('BandMap', 'ClusterColor', cmbFrmDXCColor.Selected);
  cqrini.WriteBool('BnadMap', 'OnlyActiveBand', chkShowActiveBand.Checked);
  cqrini.WriteBool('BandMap', 'OnlyActiveMode', chkShowActiveMode.Checked);
  cqrini.WriteBool('BandMap', 'DeleteAfterQSO', chkDeleteAfterQSO.Checked);
  cqrini.WriteBool('BandMap', 'UseDXCColors', chkUseDXCColors.Checked);
  cqrini.WriteBool('BandMap', 'AddAfterQSO', chkAddAfterSaveQSO.Checked);
  cqrini.WriteBool('BandMap','IgnoreBandFreq',chkIgnoreBandFreq.Checked);
  cqrini.WriteBool('BandMap','UseNewQSOFreqMode',chkUseNewQSOFreqMode.Checked);
  cqrini.WriteBool('BandMap','PlusToBandMap',chkPlusToBandMap.Checked);

  cqrini.WriteString('xplanet', 'path', edtXplanetPath.Text);
  cqrini.WriteString('xplanet', 'height', edtXHeight.Text);
  cqrini.WriteString('xplanet', 'width', edtXWidth.Text);
  cqrini.WriteString('xplanet', 'top', edtXTop.Text);
  cqrini.WriteString('xplanet', 'left', edtXLeft.Text);
  cqrini.WriteBool('xplanet', 'run', chkShowXplanet.Checked);
  cqrini.WriteBool('xplanet', 'close', chkCloseXplanet.Checked);
  cqrini.WriteString('xplanet', 'refresh', edtXRefresh.Text);
  cqrini.WriteString('xplanet', 'LastSpots', edtXLastSpots.Text);
  cqrini.WriteInteger('xplanet', 'project', rgProjection.ItemIndex);
  cqrini.WriteInteger('xplanet', 'ShowFrom', rgShowFrom.ItemIndex);
  cqrini.WriteInteger('xplanet', 'color', cmbXplanetColor.Selected);
  cqrini.WriteBool('xplanet', 'UseDefColor', chkXplanetColor.Checked);

  cqrini.WriteString('ZipCode', 'First', cmbFirstZip.Text);
  cqrini.WriteString('ZipCode', 'FirstSaveTo', cmbFirstSaveTo.Text);
  cqrini.WriteInteger('ZipCode', 'FirstPos', rgFirstZipPos.ItemIndex);
  cqrini.WriteString('ZipCode', 'Second', cmbSecondZip.Text);
  cqrini.WriteString('ZipCode', 'SecondSaveTo', cmbSecondSaveTo.Text);
  cqrini.WriteInteger('ZipCode', 'SecondPos', rgSecondZipPos.ItemIndex);
  cqrini.WriteString('ZipCode', 'Third', cmbThirdZip.Text);
  cqrini.WriteString('ZipCode', 'ThirdSaveTo', cmbThirdSaveTo.Text);
  cqrini.WriteInteger('ZipCode', 'ThirdPos', rgThirdZipPos.ItemIndex);

  cqrini.WriteBool('LoTW', 'IncLoTWDXCC', chkIncLoTWDXCC.Checked);
  cqrini.WriteBool('LoTW', 'NewQSOLoTW', chkNewQSOLoTW.Checked);
  cqrini.WriteString('LoTW', 'LoTWName', edtLoTWName.Text);
  cqrini.WriteString('LoTW', 'LoTWPass', edtLoTWPass.Text);
  cqrini.WriteBool('LoTW', 'ShowInfo', chkShowLoTWInfo.Checked);
  cqrini.WriteBool('LoTW', 'UseBackColor', chkShowBckLoTW.Checked);
  cqrini.WriteInteger('LoTW', 'BckColor', cmbLoTWBckColor.Selected);
  cqrini.WriteString('LoTW', 'eQSLName', edteQSLName.Text);
  cqrini.WriteString('LoTW', 'eQSLPass', edteQSLPass.Text);
  cqrini.WriteBool('LoTW', 'eUseBackColor', chkShowBckEQSL.Checked);
  cqrini.WriteInteger('LoTW', 'eBckColor', cmbeQSLBckColor.Selected);
  cqrini.WriteBool('LoTW', 'ExpComment', chkExpCommet.Checked);

  cqrini.WriteInteger('CW', 'Type', cmbIfaceType.ItemIndex);
  cqrini.WriteString('CW', 'wk_port', edtWinPort.Text);
  cqrini.WriteBool('CW', 'PotSpeed', chkPotSpeed.Checked);
  cqrini.WriteInteger('CW', 'wk_speed', edtWinSpeed.Value);
  cqrini.WriteString('CW', 'cw_address', edtCWAddress.Text);
  cqrini.WriteString('CW', 'cw_port', edtCWPort.Text);
  cqrini.WriteInteger('CW', 'cw_speed', edtCWSpeed.Value);
  cqrini.WriteInteger('CW', 'wk_min', edtWinMinSpeed.Value);
  cqrini.WriteInteger('CW', 'wk_max', edtWinMaxSpeed.Value);
  cqrini.WriteString('CW','K3NGPort',edtK3NGPort.Text);
  cqrini.WriteInteger('CW','K3NGSerSpeed',StrToInt(edtK3NGSerSpeed.Text));
  cqrini.WriteInteger('CW','K3NGSpeed',StrToInt(edtK3NGSpeed.Text));

  cqrini.WriteInteger('fldigi', 'freq', rgFreqFrom.ItemIndex);
  cqrini.WriteString('fldigi', 'deffreq', edtDefaultFreq.Text);
  cqrini.WriteInteger('fldigi', 'mode', rgModeFrom.ItemIndex);
  cqrini.WriteString('fldigi', 'defmode', cmbDefaultMode.Text);
  cqrini.WriteString('fldigi', 'defrst', edtDefaultRST.Text);
  cqrini.WriteInteger('fldigi', 'rst', rgRSTFrom.ItemIndex);
  cqrini.WriteInteger('fldigi', 'interval', edtLoadFromFldigi.Value);
  cqrini.WriteBool('fldigi', 'run', chkRunFldigi.Checked);
  cqrini.WriteString('fldigi', 'path', edtFldigiPath.Text);

  if edtBackupPath.Text <> '' then
    if edtBackupPath.Text[Length(edtBackupPath.Text)] <> PathDelim then
      edtBackupPath.Text := edtBackupPath.Text + PathDelim;
  cqrini.WriteBool('Backup', 'Enable', chkEnableBackup.Checked);
  cqrini.WriteBool('Backup', 'Compress', chkCompressBackup.Checked);
  cqrini.WriteString('Backup', 'Path', edtBackupPath.Text);
  cqrini.WriteInteger('Backup', 'BackupType', rgBackupType.ItemIndex);
  cqrini.WriteBool('Backup','AskFirst',chkAskBackup.Checked);

  cqrini.WriteString('ExtView', 'txt', edtTxtFiles.Text);
  cqrini.WriteString('ExtView', 'pdf', edtPdfFiles.Text);
  cqrini.WriteString('ExtView', 'img', edtImgFiles.Text);
  cqrini.WriteString('ExtView', 'html', edtHtmlFiles.Text);
  cqrini.WriteBool('ExtView', 'QSL', chkIntQSLViewer.Checked);

  cqrini.WriteString('FirstClub', 'DateFrom', edtClub1Date.Text);
  cqrini.WriteString('SecondClub', 'DateFrom', edtClub2Date.Text);
  cqrini.WriteString('ThirdClub', 'DateFrom', edtClub3Date.Text);
  cqrini.WriteString('FourthClub', 'DateFrom', edtClub4Date.Text);
  cqrini.WriteString('FifthClub', 'DateFrom', edtClub5Date.Text);

  cqrini.WriteBool('CallBook', 'QRZ', rbQRZ.Checked);
  cqrini.WriteBool('Callbook', 'HamQTH', rbHamQTH.Checked);
  cqrini.WriteString('CallBook', 'CBUser', edtCbUser.Text);
  cqrini.WriteString('CallBook', 'CBPass', edtCbPass.Text);

  cqrini.WriteInteger('RBN','10db',cl10db.Selected);
  cqrini.WriteInteger('RBN','20db',cl20db.Selected);
  cqrini.WriteInteger('RBN','30db',cl30db.Selected);
  cqrini.WriteInteger('RBN','over30db',clOver30db.Selected);
  cqrini.WriteString('RBN','login',edtRBNLogin.Text);
  cqrini.WriteString('RBN','watch',edtWatchFor.Text);
  cqrini.WriteBool('RBN','AutoConnect',chkRBNAutoConn.Checked);
  if TryStrToInt(edtDelAfter.Text,int) then
    cqrini.WriteInteger('RBN','deleteAfter',int)
  else
    cqrini.WriteInteger('RBN','deleteAfter',60);
  cqrini.WriteString('RBN','Server',edtRBNServer.Text);

  cqrini.WriteBool('OnlineLog','HaUP',chkHaUpEnabled.Checked);
  cqrini.WriteBool('OnlineLog','HaUpOnline',chkHaUpOnline.Checked);
  cqrini.WriteString('OnlineLog','HaUserName',edtHaUserName.Text);
  cqrini.WriteString('OnlineLog','HaPasswd',edtHaPasswd.Text);
  cqrini.WriteInteger('OnlineLog','HaColor',cmbHaColor.Selected);

  cqrini.WriteBool('OnlineLog','ClUP',chkClUpEnabled.Checked);
  cqrini.WriteBool('OnlineLog','ClUpOnline',chkClUpOnline.Checked);
  cqrini.WriteString('OnlineLog','ClUserName',edtClUserName.Text);
  cqrini.WriteString('OnlineLog','ClPasswd',edtClPasswd.Text);
  cqrini.WriteString('OnlineLog','ClEmail',edtClEmail.Text);
  cqrini.WriteInteger('OnlineLog','ClColor',cmbClColor.Selected);

  cqrini.WriteBool('OnlineLog','HrUP',chkHrUpEnabled.Checked);
  cqrini.WriteBool('OnlineLog','HrUpOnline',chkHrUpOnline.Checked);
  cqrini.WriteString('OnlineLog','HrUserName',edtHrUserName.Text);
  cqrini.WriteString('OnlineLog','HrCode',edtHrCode.Text);
  cqrini.WriteInteger('OnlineLog','HrColor',cmbHrColor.Selected);
  cqrini.WriteBool('OnlineLog','CloseAfterUpload',chkCloseAfterUpload.Checked);

  if WinKeyerChanged then
  begin
    {
    frmNewQSO.CWint.Close;
    if cmbIfaceType.ItemIndex > 0 then
    begin
      if cmbIfaceType.ItemIndex = 1 then
      begin
        //frmNewQSO.CWint.KeyType := ktWinKeyer;
        frmNewQSO.CWint.Port := edtWinPort.Text;
        frmNewQSO.CWint.SetSpeed(edtWinSpeed.Value);
        frmNewQSO.CWint.Device := edtWinPort.Text;
        frmNewQSO.sbNewQSO.Panels[2].Text := IntToStr(edtWinSpeed.Value) + 'WPM'
      end
      else
      begin
        //frmNewQSO.CWint.KeyType := ktCWdaemon;
        frmNewQSO.CWint.Port := edtCWPort.Text;
        frmNewQSO.CWint.Device := edtCWAddress.Text;
        frmNewQSO.CWint.SetSpeed(edtCWSpeed.Value);
        frmNewQSO.sbNewQSO.Panels[2].Text := IntToStr(edtCWSpeed.Value) + 'WPM'
      end;
      frmNewQSO.CWint.Open
    end}
    frmNewQSO.InitializeCW
  end;

  dmUtils.TimeOffset := StrToCurr(edtOffset.Text);
  dmUtils.GrayLineOffset := StrToCurr(edtGrayLineOffset.Text);
  dmUtils.SysUTC := chkSysUTC.Checked;

  frmNewQSO.CalculateLocalSunRiseSunSet;

  dmData.InsertProfiles(frmNewQSO.cmbProfiles, False);
  frmNewQSO.cmbProfiles.Text := dmData.GetDefaultProfileText;
  frmBandMap.OnlyCurrBand    := chkShowActiveBand.Checked;
  frmBandMap.OnlyCurrMode    := chkShowActiveMode.Checked;
  frmBandMap.FirstInterval   := StrToint(edtFirst.Text)*60;
  frmBandMap.SecondInterval  := StrToInt(edtSecond.Text)*60;
  frmBandMap.DeleteAfter     := StrToint(edtDisep.Text)*60;
  frmBandMap.DoXplanetExport := (rgShowFrom.ItemIndex > 0);

  if frmGrayline.Showing then
    frmGrayline.tmrGrayLineTimer(nil);
  frmNewQSO.UseSpaceBar := chkUseSpaceBar.Checked;
  if frmBandMap.Showing then
    frmBandMap.LoadFonts;
  cqrini.SaveToDisk;
  if TRXChanged then
    frmTRXControl.InicializeRig;

  frmTRXControl.LoadButtonCaptions;

  frmNewQSO.ClearAfterFreqChange := False;//cqrini.ReadBool('NewQSO','ClearAfterFreqChange',False);
  frmNewQSO.ChangeFreqLimit      := cqrini.ReadFloat('NewQSO','FreqChange',0.010);

  if ReloadFreq then
    dmUtils.InsertFreq(frmNewQSO.cmbFreq);
  if ReloadModes then
    dmUtils.InsertModes(frmNewQSO.cmbMode);
  if frmNewQSO.edtCall.Text = '' then
  begin
    dmUtils.InsertModes(frmNewQSO.cmbMode);
    frmNewQSO.cmbMode.Text := cmbMode.Text;
  end;

  if (not (chkHaUpEnabled.Checked or chkClUpEnabled.Checked or chkHrUpEnabled.Checked)) then
  begin
    if wasOnlineLogSupportEnabled then
      dmData.DisableOnlineLogSupport
  end
  else begin
    if not wasOnlineLogSupportEnabled then
    begin
      if dmData.TriggersExistsOnCqrlog_main then
        dmData.DisableOnlineLogSupport;
      dmData.EnableOnlineLogSupport
    end
  end;

  frmTRXControl.rbRadio1.Caption := edtRadio1.Text;
  frmTRXControl.rbRadio2.Caption := edtRadio2.Text;
  cqrini.SaveToDisk;
  dmData.SaveConfigFile;
  frmDXCluster.ReloadSettings;
  ModalResult := mrOk;
  dmUtils.LoadBandLabelSettins;
  dmUtils.LoadBandsSettings;
  dmData.LoadClubsSettings;
  dmData.LoadZipSettings;
end;

procedure TfrmPreferences.FormCreate(Sender: TObject);
begin
  dmUtils.InsertQSL_S(cmbQSL_S);
  dmUtils.InsertFreq(cmbFreq);
end;


procedure TfrmPreferences.btnFrequenciesClick(Sender: TObject);
begin
  with TfrmFreq.Create(self) do
    try
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  cqrini.WriteInteger('Pref', 'Top', Top);
  cqrini.WriteInteger('Pref', 'Left', Left);
end;

procedure TfrmPreferences.chkUseProfilesChange(Sender: TObject);
begin
  if chkUseProfiles.Checked then
    gbProfiles.Enabled := True
  else
    gbProfiles.Enabled := False;
end;

procedure TfrmPreferences.btnDefineProfileClick(Sender: TObject);
begin
  frmQTHProfiles := TfrmQTHProfiles.Create(self);
  try
    frmQTHProfiles.ShowModal
  finally
    frmQTHProfiles.Free
  end;
  dmData.InsertProfiles(cmbProfiles, False);
  cmbProfiles.Text := dmData.GetDefaultProfileText;
end;

procedure TfrmPreferences.btnHelpClick(Sender: TObject);
begin
  ShowHelp;
end;

procedure TfrmPreferences.btnLoadFifthClick(Sender: TObject);
begin
  if cmbFifthClub.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      TypOfLoad := 0;
      DBnum := '5';
      SourceFile := dmData.MembersDir + LowerCase(
        copy(cmbFifthClub.Text, 1, Pos(';', cmbFifthClub.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnLoadFirstClick(Sender: TObject);
begin
  if cmbFirstClub.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      TypOfLoad := 0;
      DBnum := '1';
      SourceFile := dmData.MembersDir + LowerCase(
        copy(cmbFirstClub.Text, 1, Pos(';', cmbFirstClub.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnLoadFourthClick(Sender: TObject);
begin
  if cmbFourthClub.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      TypOfLoad := 0;
      DBnum := '4';
      SourceFile := dmData.MembersDir + LowerCase(
        copy(cmbFourthClub.Text, 1, Pos(';', cmbFourthClub.Text) - 1)) + '.txt';
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnLoadSecondClick(Sender: TObject);
begin
  if cmbSecondClub.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      TypOfLoad := 0;
      DBnum := '2';
      SourceFile := dmData.MembersDir + LowerCase(
        copy(cmbSecondClub.Text, 1, Pos(';', cmbSecondClub.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnLoadThirdClick(Sender: TObject);
begin
  if cmbThirdClub.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      TypOfLoad := 0;
      DBnum := '3';
      SourceFile := dmData.MembersDir + LowerCase(
        copy(cmbThirdClub.Text, 1, Pos(';', cmbThirdClub.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnSelbFontClick(Sender: TObject);
begin
  if dlgFont.Execute then
  begin
    fbSize := dlgFont.Font.Size;
    //dmUtils.ExtractFontSize(dlgFont.Font.Name);
    lblbFont.Caption := dlgFont.Font.Name + ' ' + IntToStr(fbSize);
    lblbFont.Font.Name := dlgFont.Font.Name;
    lblbFont.Font.Size := fbSize;
    lblButtons.Font.Name := dlgFont.Font.Name;
    lblButtons.Font.Size := fbSize;
  end;
end;

procedure TfrmPreferences.btnSeleFontClick(Sender: TObject);
begin
  if dlgFont.Execute then
  begin
    feSize := dlgFont.Font.Size;
    lbleFont.Caption := dlgFont.Font.Name + ' ' + IntToStr(feSize);
    lbleFont.Font.Name := dlgFont.Font.Name;
    lbleFont.Font.Size := feSize;
    lblEdits.Font.Name := dlgFont.Font.Name;
    lblEdits.Font.Size := feSize;
  end;
end;

procedure TfrmPreferences.btnSelectBandFontClick(Sender: TObject);
begin
  if dlgFont.Execute then
  begin
    fbandSize := dlgFont.Font.Size;
    lblBandMapFont.Font.Name := dlgFont.Font.Name;
    lblBandMapFont.Font.Size := dlgFont.Font.Size;
    lblBandMapFont.Caption   := dlgFont.Font.Name + ' ' + IntToStr(fbandSize)
  end
end;

procedure TfrmPreferences.btnSelqFontClick(Sender: TObject);
begin
  if dlgFont.Execute then
  begin
    fqSize := dlgFont.Font.Size;
    lblqFont.Caption := dlgFont.Font.Name + ' ' + IntToStr(fqSize);
    lblqFont.Font.Name := dlgFont.Font.Name;
    lblqFont.Font.Size := fqSize;
    lblQSOList.Font.Name := dlgFont.Font.Name;
    lblQSOList.Font.Size := fgSize;
  end;
end;

procedure TfrmPreferences.btnSelsFontClick(Sender: TObject);
begin
  if dlgFont.Execute then
  begin
    fgSize := dlgFont.Font.Size;
    lblgFont.Caption := dlgFont.Font.Name + ' ' + IntToStr(fgSize);
    lblgFont.Font.Name := dlgFont.Font.Name;
    lblgFont.Font.Size := fgSize;
    lblStatistics.Font.Name := dlgFont.Font.Name;
    lblStatistics.Font.Size := fqSize;
  end;
end;

procedure TfrmPreferences.btnSetFifthClick(Sender: TObject);
begin
  with TfrmClubSettings.Create(self) do
    try
      Caption := 'Club settings - ' + cmbFifthClub.Text;
      ClubStr := 'Fifth';
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnSetFirstClick(Sender: TObject);
begin
  with TfrmClubSettings.Create(self) do
    try
      Caption := 'Club settings - ' + cmbFirstClub.Text;
      ClubStr := 'First';
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnSetFourthClick(Sender: TObject);
begin
  with TfrmClubSettings.Create(self) do
    try
      Caption := 'Club settings - ' + cmbFourthClub.Text;
      ClubStr := 'Fourth';
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnSetSecondClick(Sender: TObject);
begin
  with TfrmClubSettings.Create(self) do
    try
      Caption := 'Club settings - ' + cmbSecondClub.Text;
      ClubStr := 'Second';
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnSetThirdClick(Sender: TObject);
begin
  with TfrmClubSettings.Create(self) do
    try
      Caption := 'Club settings - ' + cmbThirdClub.Text;
      ClubStr := 'Third';
      ShowModal;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnTestXplanetClick(Sender: TObject);
var
  geom: string = '';
  myloc: string = '';
  wait: string = '';
  cmd: string = '';
  lat, long: currency;
  AProcess: TProcess;
  proj: string = '';
begin
  if not FileExists(edtXplanetPath.Text) then
  begin
    Application.MessageBox('xplanet not found!', 'Error ...', mb_OK + mb_IconError);
    exit;
  end;


  geom := ' -geometry ' + edtXWidth.Text + 'x' + edtXHeight.Text +
    '+' + edtXLeft.Text + '+' + edtXTop.Text;
  if dmUtils.IsLocOK(edtLoc.Text) then
  begin
    dmUtils.CoordinateFromLocator(dmUtils.CompleteLoc(edtLoc.Text), lat, long);
    myloc := ' -longitude ' + CurrToStr(long) + ' -latitude ' + CurrToStr(lat);
  end;
  wait := '-wait ' + edtXRefresh.Text;

  case rgProjection.ItemIndex of
    0: proj := '';
    1: proj := ' -projection azimuthal -background ' + dmData.HomeDir +
        'xplanet' + PathDelim + 'bck.png';
    2: proj := ' -projection azimuthal';
  end; //case

  cmd := edtXplanetPath.Text + ' -config ' + dmData.HomeDir +
    'xplanet' + PathDelim + 'geoconfig -window ' + myloc +
    ' -glare 28 -light_time -range 2.5 ' + wait + ' ' + geom +
    ' -window_title "CQRLOG - xplanet" ' + proj;
  AProcess := TProcess.Create(nil);
  try
    AProcess.CommandLine := cmd;
    Writeln('Command line: ', AProcess.CommandLine);
    AProcess.Execute;
  finally
    AProcess.Free;
  end;
end;

procedure TfrmPreferences.Button1Click(Sender: TObject);
begin
  with TfrmBandMapfilter.Create(self) do
    try
      Caption := Caption + ' - watch';
      edtDXCC.Text := cqrini.ReadString('BandMap', 'wDXCC', '*');
      edtWAZ.Text := cqrini.ReadString('BandMap', 'wWAZ', '*');
      edtITU.Text := cqrini.ReadString('BandMap', 'wITU', '*');
      chkEU.Checked := cqrini.ReadBool('BandMap', 'wEU', True);
      chkAS.Checked := cqrini.ReadBool('BandMap', 'wAS', True);
      chkNA.Checked := cqrini.ReadBool('BandMap', 'wNA', True);
      chkSA.Checked := cqrini.ReadBool('BandMap', 'wSA', True);
      chkAF.Checked := cqrini.ReadBool('BandMap', 'wAF', True);
      chkOC.Checked := cqrini.ReadBool('BandMap', 'wOC', True);
      chkAN.Checked := cqrini.ReadBool('BandMap', 'wAN', True);
      chkIOTA.Checked := cqrini.ReadBool('BandMap', 'wIOTA', True);

      ShowModal;
      if ModalResult = mrOk then
      begin
        cqrini.WriteString('BandMap', 'wDXCC', edtDXCC.Text);
        cqrini.WriteString('BandMap', 'wWAZ', edtWAZ.Text);
        cqrini.WriteString('BandMap', 'wITU', edtITU.Text);
        cqrini.WriteBool('BandMap', 'wEU', chkEU.Checked);
        cqrini.WriteBool('BandMap', 'wAS', chkAS.Checked);
        cqrini.WriteBool('BandMap', 'wNA', chkNA.Checked);
        cqrini.WriteBool('BandMap', 'wSA', chkSA.Checked);
        cqrini.WriteBool('BandMap', 'wAF', chkAF.Checked);
        cqrini.WriteBool('BandMap', 'wOC', chkOC.Checked);
        cqrini.WriteBool('BandMap', 'wAN', chkAN.Checked);
        cqrini.WriteBool('BandMap', 'wIOTA', chkIOTA.Checked);
      end;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnFldigiPathClick(Sender: TObject);
begin
  dlgOpen.Title := 'Locate fldigi binary ...';
  if dlgOpen.Execute then
    edtFldigiPath.Text := dlgOpen.FileName;
end;

procedure TfrmPreferences.btnChangeDefFreqClick(Sender: TObject);
begin
  frmNewQSODefValues := TfrmNewQSODefValues.Create(frmPreferences);
  try
    frmNewQSODefValues.WhatChangeDesc := 'Frequency';
    frmNewQSODefValues.WhatChange :=
      cqrini.ReadString('NewQSO', 'FreqList', cDefaultFreq);
    if frmNewQSODefValues.ShowModal = mrOk then
    begin
      cqrini.WriteString('NewQSO', 'FreqList', frmNewQSODefValues.GetValues);
      dmUtils.InsertFreq(cmbFreq);
      ReloadFreq := True
    end
  finally
    FreeAndNil(frmNewQSODefValues)
  end
end;

procedure TfrmPreferences.btnChangeDefModeClick(Sender: TObject);
var
  cDefaultModes: String;
  i: Integer;
begin
  cDefaultModes := '';
  frmNewQSODefValues := TfrmNewQSODefValues.Create(frmPreferences);
  try
    frmNewQSODefValues.WhatChangeDesc := 'Mode';
    for i := 0 to cMaxModes do
    begin
      cDefaultModes := cDefaultModes + '|' + cModes[i];
    end;
    frmNewQSODefValues.WhatChange :=
      cqrini.ReadString('NewQSO', 'Modes', cDefaultModes);
    if frmNewQSODefValues.ShowModal = mrOK then
    begin
      cqrini.WriteString('NewQSO', 'Modes', frmNewQSODefValues.GetValues);
      dmUtils.InsertModes(cmbMode);
      ReloadModes := True
    end
  finally
    FreeAndNil(frmNewQSODefValues);
  end;
end;

procedure TfrmPreferences.btnAlertCallsignsClick(Sender: TObject);
var
  F : TfrmCallAlert;
begin
  F := TfrmCallAlert.Create(self);
  try
    F.ShowModal
  finally
    FreeAndNil(F)
  end
end;

procedure TfrmPreferences.btnCfgStorageClick(Sender: TObject);
var
  frmConfigStorage : TfrmConfigStorage;
begin
  frmConfigStorage := TfrmConfigStorage.Create(nil);
  try
    frmConfigStorage.ShowModal
  finally
    FreeAndNil(frmConfigStorage)
  end
end;

procedure TfrmPreferences.Button2Click(Sender: TObject);
begin
  with TfrmBandMapfilter.Create(self) do
    try
      Caption := Caption + ' - ignore';
      chkIOTA.Visible := False;
      edtDXCC.Text := cqrini.ReadString('BandMap', 'iDXCC', '');
      edtWAZ.Text := cqrini.ReadString('BandMap', 'iWAZ', '');
      edtITU.Text := cqrini.ReadString('BandMap', 'iITU', '');
      chkEU.Checked := cqrini.ReadBool('BandMap', 'iEU', False);
      chkAS.Checked := cqrini.ReadBool('BandMap', 'iAS', False);
      chkNA.Checked := cqrini.ReadBool('BandMap', 'iNA', False);
      chkSA.Checked := cqrini.ReadBool('BandMap', 'iSA', False);
      chkAF.Checked := cqrini.ReadBool('BandMap', 'iAF', False);
      chkOC.Checked := cqrini.ReadBool('BandMap', 'iOC', False);
      chkAN.Checked := cqrini.ReadBool('BandMap', 'iAN', False);
      ShowModal;
      if ModalResult = mrOk then
      begin
        cqrini.WriteString('BandMap', 'iDXCC', edtDXCC.Text);
        cqrini.WriteString('BandMap', 'iWAZ', edtWAZ.Text);
        cqrini.WriteString('BandMap', 'iITU', edtITU.Text);
        cqrini.WriteBool('BandMap', 'iEU', chkEU.Checked);
        cqrini.WriteBool('BandMap', 'iAS', chkAS.Checked);
        cqrini.WriteBool('BandMap', 'iNA', chkNA.Checked);
        cqrini.WriteBool('BandMap', 'iSA', chkSA.Checked);
        cqrini.WriteBool('BandMap', 'iAF', chkAF.Checked);
        cqrini.WriteBool('BandMap', 'iOC', chkOC.Checked);
        cqrini.WriteBool('BandMap', 'iAN', chkAN.Checked);
      end;
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnBrowseBackupClick(Sender: TObject);
var
  path: string = '';
begin
  if SelectDirectory('Select directory for backuping ...', dmData.DataDir, path) then
    edtBackupPath.Text := path;
end;


procedure TfrmPreferences.btnChangeDefaultFreqClick(Sender: TObject);
begin
  with TfrmDefaultFreq.Create(self) do
    try
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnKeyTextClick(Sender: TObject);
begin
  frmKeyTexts := TfrmKeyTexts.Create(self);
  try
    frmKeyTexts.ShowModal
  finally
    frmKeyTexts.Free
  end;
end;

procedure TfrmPreferences.btnSplitClick(Sender: TObject);
begin
  with TfrmSplitSettings.Create(self) do
    try
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.chkClUpEnabledChange(Sender: TObject);
begin
  edtClUserName.Enabled := chkClUpEnabled.Checked;
  edtClPasswd.Enabled   := chkClUpEnabled.Checked;
  edtClEmail.Enabled    := chkClUpEnabled.Checked;
  chkClupOnline.Enabled := chkClUpEnabled.Checked;
  cmbClColor.Enabled    := chkClUpEnabled.Checked
end;

procedure TfrmPreferences.chkHaUpEnabledChange(Sender: TObject);
begin
  edtHaUserName.Enabled := chkHaUpEnabled.Checked;
  edtHaPasswd.Enabled   := chkHaUpEnabled.Checked;
  chkHaupOnline.Enabled := chkHaUpEnabled.Checked;
  cmbHaColor.Enabled    := chkHaUpEnabled.Checked
end;

procedure TfrmPreferences.chkHrUpEnabledChange(Sender: TObject);
begin
  edtHrUserName.Enabled := chkHrUpEnabled.Checked;
  edtHrCode.Enabled     := chkHrUpEnabled.Checked;
  chkHrUpOnline.Enabled := chkHrUpEnabled.Checked;
  cmbHrColor.Enabled    := chkHrUpEnabled.Checked
end;

procedure TfrmPreferences.chkPotSpeedChange(Sender: TObject);
begin
  if chkPotSpeed.Checked then
    edtWinSpeed.Enabled := False
  else
    edtWinSpeed.Enabled := True;
end;

procedure TfrmPreferences.chkProfileLocatorClick(Sender: TObject);
var
  i: integer;
begin
  i := cmbProfiles.ItemIndex;
  dmData.InsertProfiles(cmbProfiles, False, chkProfileLocator.Checked,
    chkProfileQTH.Checked, chkProfileRig.Checked);
  cmbProfiles.ItemIndex := i;
end;

procedure TfrmPreferences.chkProfileQTHClick(Sender: TObject);
var
  i: integer;
begin
  i := cmbProfiles.ItemIndex;
  dmData.InsertProfiles(cmbProfiles, False, chkProfileLocator.Checked,
    chkProfileQTH.Checked, chkProfileRig.Checked);
  cmbProfiles.ItemIndex := i;
end;

procedure TfrmPreferences.chkProfileRigClick(Sender: TObject);
var
  i: integer;
begin
  i := cmbProfiles.ItemIndex;
  dmData.InsertProfiles(cmbProfiles, False, chkProfileLocator.Checked,
    chkProfileQTH.Checked, chkProfileRig.Checked);
  cmbProfiles.ItemIndex := i;
end;

procedure TfrmPreferences.chkSysUTCClick(Sender: TObject);
begin
  edtOffset.Enabled    := not chkSysUTC.Checked;
  edtSunOffset.Enabled := not chkSysUTC.Checked
end;

procedure TfrmPreferences.chkUseDXCColorsChange(Sender: TObject);
begin
  if chkUseDXCColors.Checked then
    cmbFrmDXCColor.Enabled := False
  else
    cmbFrmDXCColor.Enabled := True;
end;

procedure TfrmPreferences.btnFirstLoadClick(Sender: TObject);
begin
  if cmbFirstZip.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      Caption := 'Loading ZIP codes';
      TypOfLoad := 1;
      ZipNr := 1;
      SourceFile := dmData.ZipCodeDir + LowerCase(
        copy(cmbFirstZip.Text, 1, Pos(';', cmbFirstZip.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnSecondLoadClick(Sender: TObject);
begin
  if cmbSecondZip.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      Caption := 'Loading ZIP codes';
      TypOfLoad := 1;
      ZipNr := 2;
      SourceFile := dmData.ZipCodeDir + LowerCase(
        copy(cmbSecondZip.Text, 1, Pos(';', cmbSecondZip.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.btnThirdLoadClick(Sender: TObject);
begin
  if cmbThirdZip.Text = '' then
    exit;
  with TfrmLoadClub.Create(self) do
    try
      Caption := 'Loading ZIP codes';
      TypOfLoad := 1;
      ZipNr := 3;
      SourceFile := dmData.ZipCodeDir + LowerCase(
        copy(cmbThirdZip.Text, 1, Pos(';', cmbThirdZip.Text) - 1)) + '.txt';
      ShowModal
    finally
      Free
    end;
end;

procedure TfrmPreferences.cmbDataBitsR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbDataBitsR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbDTRR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbDTRR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbHanshakeR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbHanshakeR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbIfaceTypeChange(Sender: TObject);
begin
  WinKeyerChanged := True
end;

procedure TfrmPreferences.cmbParityR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbParityR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbRTSR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbRTSR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbSpeedR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbSpeedR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbStopBitsR1Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.cmbStopBitsR2Change(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtK3NGSerSpeedChange(Sender: TObject);
begin
  WinKeyerChanged := True
end;

procedure TfrmPreferences.edtR1RigCtldArgsChange(Sender: TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtR1RigCtldPortChange(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtR2RigCtldArgsChange(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtR2RigCtldPortChange(Sender : TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtRadio1Change(Sender: TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtRadio2Change(Sender: TObject);
begin
  TRXChanged := True
end;

procedure TfrmPreferences.edtRecetQSOsKeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfrmPreferences.edtWinMaxSpeedChange(Sender: TObject);
begin
  WinKeyerChanged := True
end;

procedure TfrmPreferences.edtWinMinSpeedChange(Sender: TObject);
begin
  WinKeyerChanged := True
end;

procedure TfrmPreferences.edtWinPortChange(Sender: TObject);
begin
  WinKeyerChanged := True
end;

procedure TfrmPreferences.edtWinSpeedChange(Sender: TObject);
begin
  WinKeyerChanged := True
end;

procedure TfrmPreferences.lbPreferencesClick(Sender: TObject);
begin
  pgPreferences.ActivePageIndex := lbPreferences.ItemIndex;
end;

procedure TfrmPreferences.FormShow(Sender: TObject);
var
  i: integer;
begin
  dmUtils.LoadFontSettings(self);
  dmUtils.ReadMemberList(cmbFirstClub);
  dmUtils.ReadZipList(cmbFirstZip);
  dmUtils.InsertModes(cmbDefaultMode);
  dmUtils.InsertModes(cmbMode);
  cmbDefaultMode.ReadOnly := True;

  for i := 0 to cmbFirstClub.Items.Count - 1 do
  begin
    cmbSecondClub.Items.Add(cmbFirstClub.Items[i]);
    cmbThirdClub.Items.Add(cmbFirstClub.Items[i]);
    cmbFourthClub.Items.Add(cmbFirstClub.Items[i]);
    cmbFifthClub.Items.Add(cmbFirstClub.Items[i]);
  end;

  for i := 0 to cmbFirstZip.Items.Count - 1 do
  begin
    cmbSecondZip.Items.Add(cmbFirstZip.Items[i]);
    cmbThirdZip.Items.Add(cmbFirstZip.Items[i]);
  end;
  dmData.InsertProfiles(cmbProfiles, False);
  Top := cqrini.ReadInteger('Pref', 'Top', 20);
  Left := cqrini.ReadInteger('Pref', 'Left', 20);

  edtCall.Text := cqrini.ReadString('Station', 'Call', '');
  edtName.Text := cqrini.ReadString('Station', 'Name', '');
  edtQTH.Text := cqrini.ReadString('Station', 'QTH', '');
  edtLoc.Text := cqrini.ReadString('Station', 'LOC', '');

  edtRST_S.Text := cqrini.ReadString('NewQSO', 'RST_S', '599');
  edtRST_R.Text := cqrini.ReadString('NewQSO', 'RST_R', '599');
  edtPWR.Text := cqrini.ReadString('NewQSO', 'PWR', '100');
  cmbFreq.Text := cqrini.ReadString('NewQSO', 'FREQ', '7.025');
  cmbMode.Text := cqrini.ReadString('NewQSO', 'Mode', 'CW');
  cmbQSL_S.Text := cqrini.ReadString('NewQSO', 'QSL_S', '');
  edtComments.Text := cqrini.ReadString('NewQSO', 'RemQSO', '');
  chkUseSpaceBar.Checked := cqrini.ReadBool('NewQSO', 'UseSpaceBar', False);
  chkRefreshAfterSave.Checked := cqrini.ReadBool('NewQSO', 'RefreshAfterSave', False);
  chkSkipModeFreq.Checked := cqrini.ReadBool('NewQSO', 'SkipModeFreq', True);
  chkAutoSearch.Checked := cqrini.ReadBool('NewQSO', 'AutoSearch', False);
  chkShowRecentQSOs.Checked := cqrini.ReadBool('NewQSO', 'ShowRecentQSOs', False);
  edtRecetQSOs.Text := cqrini.ReadString('NewQSO', 'RecQSOsNum', '5');
  chkIgnoreQRZQSL.Checked := cqrini.ReadBool('NewQSO', 'IgnoreQRZ', False);
  chkMvToRem.Checked := cqrini.ReadBool('NewQSO', 'MvToRem', True);
  chkAutoQSLS.Checked := cqrini.ReadBool('NewQSO', 'AutoQSLS', True);
  chkAutoDQSLS.Checked := cqrini.ReadBool('NewQSO', 'AutoDQSLS', False);
  chkAutoQQSLS.Checked := cqrini.ReadBool('NewQSO', 'AutoQQSLS', False);
  chkAllVariants.Checked := cqrini.ReadBool('NewQSO', 'AllVariants', False);
  chkClearRIT.Checked := cqrini.ReadBool('NewQSO','ClearRIT',False);
  edtFreqChange.Text := FloatToStr(cqrini.ReadFloat('NewQSO','FreqChange',0.010)*1000);
  chkClearNewQSOFreq.Checked := cqrini.ReadBool('NewQSO','ClearAfterFreqChange',False);
  chkUseCallBookData.Checked := cqrini.ReadBool('NewQSO','UseCallBookData',False);

  edtProxy.Text := cqrini.ReadString('Program', 'Proxy', '');
  edtPort.Text := cqrini.ReadString('Program', 'Port', '');
  edtUser.Text := cqrini.ReadString('Program', 'User', '');
  edtPasswd.Text := cqrini.ReadString('Program', 'Passwd', '');
  edtOffset.Text := CurrToStr(cqrini.ReadFloat('Program', 'offset', 0));
  pgPreferences.ActivePageIndex := cqrini.ReadInteger('Program', 'Options', 0);
  edtGrayLineOffset.Text :=
    CurrToStr(cqrini.ReadFloat('Program', 'GraylineOffset', 0));
  edtWebBrowser.Text := cqrini.ReadString('Program', 'WebBrowser', 'firefox');
  chkNewDXCCTables.Checked := cqrini.ReadBool('Program', 'CheckDXCCTabs', True);
  chkShowDeleted.Checked := cqrini.ReadBool('Program', 'ShowDeleted', False);
  chkSunUTC.Checked := cqrini.ReadBool('Program', 'SunUTC', False);
  chkNewQSLTables.Checked := cqrini.ReadBool('Program', 'CheckQSLTabs', True);
  edtSunOffset.Text := CurrToStr(cqrini.ReadFloat('Program', 'SunOffset', 0));
  chkSysUTC.Checked := cqrini.ReadBool('Program', 'SysUTC', True);
  chkShowMiles.Checked := cqrini.ReadBool('Program','ShowMiles',False);

  if cqrini.ReadBool('Program', 'BandStatMHz', True) then
    rgStatistics.ItemIndex := 0
  else
    rgStatistics.ItemIndex := 1;

  chkDate.Checked := cqrini.ReadBool('Columns', 'Date', True);
  chkTimeOn.Checked := cqrini.ReadBool('Columns', 'time_on', True);
  chkTimeOff.Checked := cqrini.ReadBool('Columns', 'time_off', False);
  chkCallSign.Checked := cqrini.ReadBool('Columns', 'CallSign', True);
  chkMode.Checked := cqrini.ReadBool('Columns', 'Mode', True);
  chkFreq.Checked := cqrini.ReadBool('Columns', 'Freq', True);
  chkRST_S.Checked := cqrini.ReadBool('Columns', 'RST_S', True);
  chkRST_R.Checked := cqrini.ReadBool('Columns', 'RST_R', True);
  chkName.Checked := cqrini.ReadBool('Columns', 'Name', True);
  chkQTH.Checked := cqrini.ReadBool('Columns', 'QTH', True);
  chkQSL_S.Checked := cqrini.ReadBool('Columns', 'QSL_S', True);
  chkQSL_R.Checked := cqrini.ReadBool('Columns', 'QSL_R', True);
  chkQSL_VIA.Checked := cqrini.ReadBool('Columns', 'QSL_VIA', False);
  chkLoc.Checked := cqrini.ReadBool('Columns', 'Locator', False);
  chkMyLoc.Checked := cqrini.ReadBool('Columns', 'MyLoc', False);
  chkIOTA.Checked := cqrini.ReadBool('Columns', 'IOTA', False);
  chkAward.Checked := cqrini.ReadBool('Columns', 'Award', False);
  chkCounty.Checked := cqrini.ReadBool('Columns', 'County', False);
  chkPower.Checked := cqrini.ReadBool('Columns', 'Power', False);
  chkDXCC.Checked := cqrini.ReadBool('Columns', 'DXCC', False);
  chkRemarks.Checked := cqrini.ReadBool('Columns', 'Remarks', False);
  chkWAZ.Checked := cqrini.ReadBool('Columns', 'WAZ', False);
  chkITU.Checked := cqrini.ReadBool('Columns', 'ITU', False);
  chkState.Checked := cqrini.ReadBool('Columns', 'State', False);
  chkLoTWQSLSDate.Checked := cqrini.ReadBool('Columns', 'LoTWQSLSDate', False);
  chkLoTWQSLRDate.Checked := cqrini.ReadBool('Columns', 'LoTWQSLRDate', False);
  chkLoTWQSLS.Checked := cqrini.ReadBool('Columns', 'LoTWQSLS', False);
  chkLoTWQSLR.Checked := cqrini.ReadBool('Columns', 'LOTWQSLR', False);
  chkCont.Checked := cqrini.ReadBool('Columns', 'Cont', False);
  chkQSLSentDate.Checked := cqrini.ReadBool('Columns', 'QSLSDate', False);
  chkQSLRcvdDate.Checked := cqrini.ReadBool('Columns', 'QSLRDate', False);
  chkeQSLSent.Checked := cqrini.ReadBool('Columns', 'eQSLQSLS', False);
  chkeQSLSentDate.Checked := cqrini.ReadBool('Columns', 'eQSLQSLSDate', False);
  chkeQSLRcvd.Checked := cqrini.ReadBool('Columns', 'eQSLQSLR', False);
  chkeQSLRcvdDate.Checked := cqrini.ReadBool('Columns', 'eQSLQSLRDate', False);
  chkQSLRAll.Checked := cqrini.ReadBool('Columns', 'QSLRAll', False);
  chkCountry.Checked := cqrini.ReadBool('Columns', 'Country', False);

  cb136kHz.Checked := cqrini.ReadBool('Bands', '137kHz', False);
  cb472kHz.Checked := cqrini.ReadBool('Bands', '472kHz', False);
  cb160m.Checked := cqrini.ReadBool('Bands', '160m', True);
  cb80m.Checked := cqrini.ReadBool('Bands', '80m', True);
  cb60m.Checked := cqrini.ReadBool('Bands', '60m', False);
  cb40m.Checked := cqrini.ReadBool('Bands', '40m', True);
  cb30m.Checked := cqrini.ReadBool('Bands', '30m', True);
  cb20m.Checked := cqrini.ReadBool('Bands', '20m', True);
  cb17m.Checked := cqrini.ReadBool('Bands', '17m', True);
  cb15m.Checked := cqrini.ReadBool('Bands', '15m', True);
  cb12m.Checked := cqrini.ReadBool('Bands', '12m', True);
  cb10m.Checked := cqrini.ReadBool('Bands', '10m', True);

  cb4m.Checked := cqrini.ReadBool('Bands', '4m', False);
  cb6m.Checked := cqrini.ReadBool('Bands', '6m', True);
  cb125m.Checked := cqrini.ReadBool('Bands', '1.25m', False);
  cb2m.Checked := cqrini.ReadBool('Bands', '2m', True);
  cb70cm.Checked := cqrini.ReadBool('Bands', '70cm', True);
  cb30cm.Checked := cqrini.ReadBool('Bands', '33cm', False);
  cb23cm.Checked := cqrini.ReadBool('Bands', '23cm', False);
  cb13cm.Checked := cqrini.ReadBool('Bands', '13cm', False);
  cb8cm.Checked := cqrini.ReadBool('Bands', '8cm', False);
  cb5cm.Checked := cqrini.ReadBool('Bands', '5cm', False);
  cb3cm.Checked := cqrini.ReadBool('Bands', '3cm', False);
  cb1cm.Checked := cqrini.ReadBool('Bands', '1cm', False);
  cb47GHz.Checked := cqrini.ReadBool('Bands', '47GHz', False);
  cb76GHz.Checked := cqrini.ReadBool('Bands', '76GHz', False);

  edtRigCtldPath.Text := cqrini.ReadString('TRX', 'RigCtldPath', '/usr/bin/rigctld');

  edtR1Device.Text := cqrini.ReadString('TRX1', 'device', '');
  edtRigID1.Text := cqrini.ReadString('TRX1', 'model', '');
  edtPoll1.Text := cqrini.ReadString('TRX1', 'poll', '500');
  edtRadio1.Text := cqrini.ReadString('TRX1', 'Desc', 'Radio 1');
  chkR1SendCWR.Checked := cqrini.ReadBool('TRX1', 'CWR', False);
  edtR1RigCtldPort.Text := cqrini.ReadString('TRX1', 'RigCtldPort', '4532');
  edtR1RigCtldArgs.Text := cqrini.ReadString('TRX1', 'ExtraRigCtldArgs', '');
  chkR1RunRigCtld.Checked := cqrini.ReadBool('TRX1', 'RunRigCtld', False);
  edtR1Host.Text := cqrini.ReadString('TRX1', 'host', 'localhost');
  cmbSpeedR1.ItemIndex := cqrini.ReadInteger('TRX1', 'SerialSpeed', 0);
  cmbDataBitsR1.ItemIndex := cqrini.ReadInteger('TRX1', 'DataBits', 0);
  cmbStopBitsR1.ItemIndex := cqrini.ReadInteger('TRX1', 'StopBits', 0);
  cmbParityR1.ItemIndex := cqrini.ReadInteger('TRX1', 'Parity', 0);
  cmbHanshakeR1.ItemIndex := cqrini.ReadInteger('TRX1', 'HandShake', 0);
  cmbDTRR1.ItemIndex := cqrini.ReadInteger('TRX1', 'DTR', 0);
  cmbRTSR1.ItemIndex := cqrini.ReadInteger('TRX1', 'RTS', 0);


  edtR2Device.Text := cqrini.ReadString('TRX2', 'device', '');
  edtRigID2.Text := cqrini.ReadString('TRX2', 'model', '');
  edtPoll2.Text := cqrini.ReadString('TRX2', 'poll', '500');
  edtRadio2.Text := cqrini.ReadString('TRX2', 'Desc', 'Radio 2');
  chkR2SendCWR.Checked := cqrini.ReadBool('TRX2', 'CWR', False);
  edtR2RigCtldPort.Text := cqrini.ReadString('TRX2', 'RigCtldPort', '4532');
  edtR2RigCtldArgs.Text := cqrini.ReadString('TRX2', 'ExtraRigCtldArgs', '');
  chkR2RunRigCtld.Checked := cqrini.ReadBool('TRX2', 'RunRigCtld', False);
  edtR2Host.Text := cqrini.ReadString('TRX2', 'host', 'localhost');
  cmbSpeedR2.ItemIndex := cqrini.ReadInteger('TRX2', 'SerialSpeed', 0);
  cmbDataBitsR2.ItemIndex := cqrini.ReadInteger('TRX2', 'DataBits', 0);
  cmbStopBitsR2.ItemIndex := cqrini.ReadInteger('TRX2', 'StopBits', 0);
  cmbParityR2.ItemIndex := cqrini.ReadInteger('TRX2', 'Parity', 0);
  cmbHanshakeR2.ItemIndex := cqrini.ReadInteger('TRX2', 'HandShake', 0);
  cmbDTRR2.ItemIndex := cqrini.ReadInteger('TRX2', 'DTR', 0);
  cmbRTSR2.ItemIndex := cqrini.ReadInteger('TRX2', 'RTS', 0);

  edtRotCtldPath.Text := cqrini.ReadString('ROT', 'RotCtldPath', '/usr/bin/rotctld');

  edtRot1Device.Text := cqrini.ReadString('ROT1', 'device', '');
  edtRot1ID.Text := cqrini.ReadString('ROT1', 'model', '');
  edtRot1Poll.Text := cqrini.ReadString('ROT1', 'poll', '500');
  edtRotor1.Text := cqrini.ReadString('ROT1', 'Desc', 'Rotor 1');
  edtRot1RotCtldPort.Text := cqrini.ReadString('ROT1', 'RotCtldPort', '4533');
  edtRot1RotCtldArgs.Text := cqrini.ReadString('ROT1', 'ExtraRotCtldArgs', '');
  chkRot1RunRotCtld.Checked := cqrini.ReadBool('ROT1', 'RunRotCtld', False);
  edtRot1Host.Text := cqrini.ReadString('ROT1', 'host', 'localhost');
  cmbSpeedRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'SerialSpeed', 0);
  cmbDataBitsRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'DataBits', 0);
  cmbStopBitsRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'StopBits', 0);
  cmbParityRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'Parity', 0);
  cmbHanshakeRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'HandShake', 0);
  cmbDTRRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'DTR', 0);
  cmbRTSRot1.ItemIndex := cqrini.ReadInteger('ROT1', 'RTS', 0);

  edtRot2Device.Text := cqrini.ReadString('ROT2', 'device', '');
  edtRot2ID.Text := cqrini.ReadString('ROT2', 'model', '');
  edtRot2Poll.Text := cqrini.ReadString('ROT2', 'poll', '500');
  edtRotor2.Text := cqrini.ReadString('ROT2', 'Desc', 'Rotor 2');
  edtRot2RotCtldPort.Text := cqrini.ReadString('ROT2', 'RotCtldPort', '4533');
  edtRot2RotCtldArgs.Text := cqrini.ReadString('ROT2', 'ExtraRotCtldArgs', '');
  chkRot2RunRotCtld.Checked := cqrini.ReadBool('ROT2', 'RunRotCtld', False);
  edtRot2Host.Text := cqrini.ReadString('ROT2', 'host', 'localhost');
  cmbSpeedRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'SerialSpeed', 0);
  cmbDataBitsRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'DataBits', 0);
  cmbStopBitsRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'StopBits', 0);
  cmbParityRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'Parity', 0);
  cmbHanshakeRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'HandShake', 0);
  cmbDTRRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'DTR', 0);
  cmbRTSRot2.ItemIndex := cqrini.ReadInteger('ROT2', 'RTS', 0);

  edtCW1.Value := cqrini.ReadInteger('Band1', 'CW', 500);
  edtSSB1.Value := cqrini.ReadInteger('Band1', 'SSB', 1800);
  edtRTTY1.Value := cqrini.ReadInteger('Band1', 'RTTY', 500);
  edtAM1.Value := cqrini.ReadInteger('Band1', 'AM', 3000);
  edtFM1.Value := cqrini.ReadInteger('Band1', 'FM', 2500);

  edtCW2.Value := cqrini.ReadInteger('Band2', 'CW', 500);
  edtSSB2.Value := cqrini.ReadInteger('Band2', 'SSB', 1800);
  edtRTTY2.Value := cqrini.ReadInteger('Band2', 'RTTY', 500);
  edtAM2.Value := cqrini.ReadInteger('Band2', 'AM', 3000);
  edtFM2.Value := cqrini.ReadInteger('Band2', 'FM', 2500);

  edtDigiModes.Text := cqrini.ReadString('Modes', 'Digi', '');

  chkUseProfiles.Checked := cqrini.ReadBool('Profiles', 'Use', False);
  cmbProfiles.Text :=
    dmData.GetProfileText(cqrini.ReadInteger('Profiles', 'Selected', 0));
  chkProfileLocator.Checked := cqrini.ReadBool('Profiles', 'Locator', True);
  chkProfileQTH.Checked := cqrini.ReadBool('Profiles', 'QTH', True);
  chkProfileRig.Checked := cqrini.ReadBool('Profiles', 'RIG', False);
  chkUseProfilesChange(nil);

  chkexDate.Checked := cqrini.ReadBool('Export', 'Date', True);
  chkexTimeOn.Checked := cqrini.ReadBool('Export', 'time_on', True);
  chkexTimeOff.Checked := cqrini.ReadBool('Export', 'time_off', False);
  chkexCall.Checked := cqrini.ReadBool('Export', 'CallSign', True);
  chkexMode.Checked := cqrini.ReadBool('Export', 'Mode', True);
  chkexFreq.Checked := cqrini.ReadBool('Export', 'Freq', True);
  chkexRSTS.Checked := cqrini.ReadBool('Export', 'RST_S', True);
  chkexRSTR.Checked := cqrini.ReadBool('Export', 'RST_R', True);
  chkexName.Checked := cqrini.ReadBool('Export', 'Name', True);
  chkexQTH.Checked := cqrini.ReadBool('Export', 'QTH', True);
  chkexQSLS.Checked := cqrini.ReadBool('Export', 'QSL_S', True);
  chkexQSLR.Checked := cqrini.ReadBool('Export', 'QSL_R', True);
  chkexQSLVIA.Checked := cqrini.ReadBool('Export', 'QSL_VIA', True);
  chkexLoc.Checked := cqrini.ReadBool('Export', 'Locator', False);
  chkexMyLoc.Checked := cqrini.ReadBool('Export', 'MyLoc', False);
  chkexIOTA.Checked := cqrini.ReadBool('Export', 'IOTA', False);
  chkexAward.Checked := cqrini.ReadBool('Export', 'Award', False);
  chkexCounty.Checked := cqrini.ReadBool('Export', 'County', False);
  chkexPower.Checked := cqrini.ReadBool('Export', 'Power', False);
  chkexDXCC.Checked := cqrini.ReadBool('Export', 'DXCC', False);
  chkexRemarks.Checked := cqrini.ReadBool('Export', 'Remarks', False);
  chkexWAZ.Checked := cqrini.ReadBool('Export', 'WAZ', False);
  chkexITU.Checked := cqrini.ReadBool('Export', 'ITU', False);
  chkexNote.Checked := cqrini.ReadBool('Export', 'Note', False);
  chkProfile.Checked := cqrini.ReadBool('Export', 'Profile', False);
  chkexState.Checked := cqrini.ReadBool('Export', 'State', False);
  ;
  chkexLQSLS.Checked := cqrini.ReadBool('Export', 'LQSLS', False);
  chkexLQSLSDate.Checked := cqrini.ReadBool('Export', 'LQSLSDate', False);
  chkexLQSLR.Checked := cqrini.ReadBool('Export', 'LQSLR', False);
  chkexLQSLRDate.Checked := cqrini.ReadBool('Export', 'LQSLRDate', False);
  chkExCont.Checked := cqrini.ReadBool('Export', 'Cont', False);
  chkexQSLSDate.Checked := cqrini.ReadBool('Export', 'QSLSDate', False);
  chkexQSLRDate.Checked := cqrini.ReadBool('Export', 'QSLRDate', False);
  chkexeQSLS.Checked := cqrini.ReadBool('Export', 'eQSLS', False);
  chkexeQSLSDate.Checked := cqrini.ReadBool('Export', 'eQSLSDate', False);
  chkexeQSLR.Checked := cqrini.ReadBool('Export', 'eQSLR', False);
  chkexeQSLRDate.Checked := cqrini.ReadBool('Export', 'eQSLRDate', False);

  edtWDate.Text := cqrini.ReadString('Export', 'WDate', '50');
  edtWTimeOn.Text := cqrini.ReadString('Export', 'Wtime_on', '50');
  edtWTimeOff.Text := cqrini.ReadString('Export', 'Wtime_off', '50');
  edtWCall.Text := cqrini.ReadString('Export', 'WCallSign', '50');
  edtWMode.Text := cqrini.ReadString('Export', 'WMode', '50');
  edtWFreq.Text := cqrini.ReadString('Export', 'WFreq', '50');
  edtWRstS.Text := cqrini.ReadString('Export', 'WRST_S', '50');
  edtWRstR.Text := cqrini.ReadString('Export', 'WRST_R', '30');
  edtWName.Text := cqrini.ReadString('Export', 'WName', '50');
  edtWQTH.Text := cqrini.ReadString('Export', 'WQTH', '80');
  edtWQSLS.Text := cqrini.ReadString('Export', 'WQSL_S', '10');
  edtWQSLR.Text := cqrini.ReadString('Export', 'WQSL_R', '10');
  edtWQSLVIA.Text := cqrini.ReadString('Export', 'WQSL_VIA', '20');
  edtWLoc.Text := cqrini.ReadString('Export', 'WLocator', '30');
  edtWMyLoc.Text := cqrini.ReadString('Export', 'WMyLoc', '30');
  edtWIOTA.Text := cqrini.ReadString('Export', 'WIOTA', '40');
  edtWAward.Text := cqrini.ReadString('Export', 'WAward', '40');
  edtWCounty.Text := cqrini.ReadString('Export', 'WCounty', '40');
  edtWPower.Text := cqrini.ReadString('Export', 'WPower', '40');
  edtWDXCC.Text := cqrini.ReadString('Export', 'WDXCC', '40');
  edtWRemarks.Text := cqrini.ReadString('Export', 'WRemarks', '100');
  edtWWAZ.Text := cqrini.ReadString('Export', 'WWAZ', '20');
  edtWITU.Text := cqrini.ReadString('Export', 'WITU', '20');
  edtWNote.Text := cqrini.ReadString('Export', 'WNote', '40');
  edtWState.Text := cqrini.ReadString('Export', 'WState', '40');
  edtWLQSLS.Text := cqrini.ReadString('Export', 'WLQSLS', '50');
  edtWLQSLSDate.Text := cqrini.ReadString('Export', 'WLQSLSDate', '50');
  edtWLQSLR.Text := cqrini.ReadString('Export', 'WLQSLR', '50');
  edtWLQSLRDate.Text := cqrini.ReadString('Export', 'WLQSLRDate', '50');
  edtWQSLSDate.Text := cqrini.ReadString('Export', 'WQSLSDate', '50');
  edtWQSLRDate.Text := cqrini.ReadString('Export', 'WQSLRDate', '50');
  edtWeQSLS.Text := cqrini.ReadString('Export', 'WeQSLS', '50');
  edtWeQSLSDate.Text := cqrini.ReadString('Export', 'WeQSLSDate', '50');
  edtWeQSLR.Text := cqrini.ReadString('Export', 'WeQSLR', '50');
  edtWeQSLRDate.Text := cqrini.ReadString('Export', 'WeQSLRDate', '50');


  chkShow2190M.Checked := cqrini.ReadBool('DXCluster', 'Show2190M', True);
  chkShow630M.Checked := cqrini.ReadBool('DXCluster', 'Show630M', True);
  chkShow160M.Checked := cqrini.ReadBool('DXCluster', 'Show160M', True);
  chkShow80M.Checked := cqrini.ReadBool('DXCluster', 'Show80M', True);
  chkShow60M.Checked := cqrini.ReadBool('DXCluster', 'Show60M', True);
  chkShow40M.Checked := cqrini.ReadBool('DXCluster', 'Show40M', True);
  chkShow30M.Checked := cqrini.ReadBool('DXCluster', 'Show30M', True);
  chkShow20M.Checked := cqrini.ReadBool('DXCluster', 'Show20M', True);
  chkShow17M.Checked := cqrini.ReadBool('DXCluster', 'Show17M', True);
  chkShow15M.Checked := cqrini.ReadBool('DXCluster', 'Show15M', True);
  chkShow12M.Checked := cqrini.ReadBool('DXCluster', 'Show12M', True);
  chkShow10M.Checked := cqrini.ReadBool('DXCluster', 'Show10M', True);
  chkShow6M.Checked := cqrini.ReadBool('DXCluster', 'Show6M', True);
  chkShow4M.Checked := cqrini.ReadBool('DXCluster', 'Show4M', True);
  chkShow2M.Checked := cqrini.ReadBool('DXCluster', 'Show2M', True);
  chkShow125M.Checked := cqrini.ReadBool('DXCluster', 'Show125M', True);
  chkShow70CM.Checked := cqrini.ReadBool('DXCluster', 'Show70CM', True);
  chkShow33CM.Checked := cqrini.ReadBool('DXCluster', 'Show33CM', True);
  chkShow23CM.Checked := cqrini.ReadBool('DXCluster', 'Show23CM', True);
  chkShow13CM.Checked := cqrini.ReadBool('DXCluster', 'Show13CM', True);
  chkShow9CM.Checked := cqrini.ReadBool('DXCluster', 'Show9CM', True);
  chkShow6CM.Checked := cqrini.ReadBool('DXCluster', 'Show6CM', True);
  chkShow3CM.Checked := cqrini.ReadBool('DXCluster', 'Show3CM', True);
  chkShow125CM.Checked := cqrini.ReadBool('DXCluster', 'Show125CM', True);
  chkShow6MM.Checked := cqrini.ReadBool('DXCluster', 'Show6MM', True);
  chkShow4MM.Checked := cqrini.ReadBool('DXCluster', 'Show4MM', True);
  chkCW.Checked := cqrini.ReadBool('DXCluster', 'CW', True);
  chkSSB.Checked := cqrini.ReadBool('DXCluster', 'SSB', True);
  edtDoNotShow.Text := cqrini.ReadString('DXCluster', 'NotShow', '');
  cmbNewCountry.Selected := cqrini.ReadInteger('DXCluster', 'NewCountry', 0);
  cmbNewBand.Selected := cqrini.ReadInteger('DXCluster', 'NewBand', 0);
  cmbNewMode.Selected := cqrini.ReadInteger('DXCluster', 'NewMode', 0);
  cmbQSLNeeded.Selected := cqrini.ReadInteger('DXCluster', 'NeedQSL', 0);
  chkConToDXC.Checked := cqrini.ReadBool('DXCluster', 'ConAfterRun', False);
  chkShowDxcCountry.Checked := cqrini.ReadBool('DXCluster','ShowDxcCountry',False);
  edtAlertCmd.Text := cqrini.ReadString('DXCluster','AlertCmd','');

  chkUseDefaultSEttings.Checked := cqrini.ReadBool('Fonts', 'UseDefault', True);
  lblbFont.Caption := cqrini.ReadString('Fonts', 'Buttons', 'Sans 10');
  lbleFont.Caption := cqrini.ReadString('Fonts', 'Edits', 'Sans 10');
  lblgFont.Caption := cqrini.ReadString('Fonts', 'Grids', 'Monospace 8');
  lblqFont.Caption := cqrini.ReadString('Fonts', 'QGrids', 'Sans 10');
  feSize := cqrini.ReadInteger('Fonts', 'eSize', 10);
  fbSize := cqrini.ReadInteger('Fonts', 'bSize', 10);
  fgSize := cqrini.ReadInteger('Fonts', 'gSize', 8);
  fqSize := cqrini.ReadInteger('Fonts', 'qSize', 10);

  chkgridgreenbar.Checked := cqrini.ReadBool('Fonts','GridGreenBar',False);
  chkgridboldtitle.Checked := cqrini.ReadBool('Fonts','GridBoldTitle',False);
  chkgridshowhint.Checked := cqrini.ReadBool('Fonts','GridShowHint',False);
  chkgridsmallrows.Checked := cqrini.ReadBool('Fonts','GridSmallRows',False);
  chkgriddotsinsteadspaces.Checked := cqrini.ReadBool('Fonts','GridDotsInsteadSpaces',False);

  clboxNewWaz.Selected := cqrini.ReadInteger('Zones', 'NewWAZ', 0);
  clBoxBandWAZ.Selected := cqrini.ReadInteger('Zones', 'NewBandWAZ', 0);
  clBoxQSLWAZ.Selected := cqrini.ReadInteger('Zones', 'QSLWAZ', 0);
  clboxNewITU.Selected := cqrini.ReadInteger('Zones', 'NewITU', 0);
  clBoxBandITU.Selected := cqrini.ReadInteger('Zones', 'NewBandITU', 0);
  clBoxQSLITU.Selected := cqrini.ReadInteger('Zones', 'QSLITU', 0);
  chkShowWAZInfo.Checked := cqrini.ReadBool('Zones', 'ShowWAZInfo', True);
  chkShowITUInfo.Checked := cqrini.ReadBool('Zones', 'ShowITUInfo', True);

  clboxNewIOTA.Selected := cqrini.ReadInteger('IOTA', 'NewIOTA', 0);
  clboxQSLIOTA.Selected := cqrini.ReadInteger('IOTA', 'QSLIOTA', 0);
  chkShowIOTAInfo.Checked := cqrini.ReadBool('IOTA', 'ShowIOTAInfo', True);

  cmbFirstClub.Text := cqrini.ReadString('Clubs', 'First', '');
  cmbSecondClub.Text := cqrini.ReadString('Clubs', 'Second', '');
  cmbThirdClub.Text := cqrini.ReadString('Clubs', 'Third', '');
  cmbFourthClub.Text := cqrini.ReadString('Clubs', 'Fourth', '');
  cmbFifthClub.Text := cqrini.ReadString('Clubs', 'Fifth', '');

  lblBandMapFont.Font.Name := cqrini.ReadString('BandMap', 'BandFont', 'Monospace');
  lblBandMapFont.Font.Size := cqrini.ReadInteger('BandMap', 'FontSize', 8);
  fbandSize := cqrini.ReadInteger('BandMap', 'FontSize', 8);
  lblBandMapFont.Caption :=
    cqrini.ReadString('BandMap', 'BandFont', 'Monospace') + ' ' + IntToStr(fbandSize);
  cmbQSOBandColor.Selected := cqrini.ReadInteger('BandMap', 'NewQSOColor', clBlack);
  chkBandMapkHz.Checked := cqrini.ReadBool('BnadMap', 'in_kHz', True);
  chkSaveBandMap.Checked := cqrini.ReadBool('BandMap', 'Save', False);
  edtFirst.Text := IntToStr(cqrini.ReadInteger('BandMap', 'FirstAging', 5));
  edtSecond.Text := IntToStr(cqrini.ReadInteger('BandMap', 'SecondAging', 8));
  edtDisep.Text := IntToStr(cqrini.ReadInteger('BandMap', 'Disep', 12));
  cmbFrmDXCColor.Selected := cqrini.ReadInteger('BandMap', 'ClusterColor', clBlack);
  chkShowActiveBand.Checked := cqrini.ReadBool('BnadMap', 'OnlyActiveBand', False);
  chkShowActiveMode.Checked := cqrini.ReadBool('BandMap', 'OnlyActiveMode', False);
  chkDeleteAfterQSO.Checked := cqrini.ReadBool('BandMap', 'DeleteAfterQSO', True);
  chkUseDXCColors.Checked := cqrini.ReadBool('BandMap', 'UseDXCColors', False);
  chkAddAfterSaveQSO.Checked := cqrini.ReadBool('BandMap', 'AddAfterQSO', False);
  chkIgnoreBandFreq.Checked := cqrini.ReadBool('BandMap','IgnoreBandFreq',True);
  chkUseNewQSOFreqMode.Checked := cqrini.ReadBool('BandMap','UseNewQSOFreqMode',False);
  chkPlusToBandMap.Checked := cqrini.ReadBool('BandMap','PlusToBandMap',False);

  edtXplanetPath.Text := cqrini.ReadString('xplanet', 'path', '/usr/bin/xplanet');
  edtXHeight.Text := cqrini.ReadString('xplanet', 'height', '100');
  edtXWidth.Text := cqrini.ReadString('xplanet', 'width', '100');
  edtXTop.Text := cqrini.ReadString('xplanet', 'top', '10');
  edtXLeft.Text := cqrini.ReadString('xplanet', 'left', '10');
  chkShowXplanet.Checked := cqrini.ReadBool('xplanet', 'run', False);
  chkCloseXplanet.Checked := cqrini.ReadBool('xplanet', 'close', False);
  edtXRefresh.Text := cqrini.ReadString('xplanet', 'refresh', '5');
  edtXLastSpots.Text := cqrini.ReadString('xplanet', 'LastSpots', '20');
  rgProjection.ItemIndex := cqrini.ReadInteger('xplanet', 'project', 0);
  rgShowFrom.ItemIndex := cqrini.ReadInteger('xplanet', 'ShowFrom', 0);
  cmbXplanetColor.Selected := cqrini.ReadInteger('xplanet', 'color', clWhite);
  chkXplanetColor.Checked := cqrini.ReadBool('xplanet', 'UseDefColor', True);

  cmbFirstZip.Text := cqrini.ReadString('ZipCode', 'First', '');
  cmbFirstSaveTo.Text := cqrini.ReadString('ZipCode', 'FirstSaveTo', '');
  rgFirstZipPos.ItemIndex := cqrini.ReadInteger('ZipCode', 'FirstPos', 0);
  cmbSecondZip.Text := cqrini.ReadString('ZipCode', 'Second', '');
  cmbSecondSaveTo.Text := cqrini.ReadString('ZipCode', 'SecondSaveTo', '');
  rgSecondZipPos.ItemIndex := cqrini.ReadInteger('ZipCode', 'SecondPos', 0);
  cmbThirdZip.Text := cqrini.ReadString('ZipCode', 'Third', '');
  cmbThirdSaveTo.Text := cqrini.ReadString('ZipCode', 'ThirdSaveTo', '');
  rgThirdZipPos.ItemIndex := cqrini.ReadInteger('ZipCode', 'ThirdPos', 0);

  chkIncLoTWDXCC.Checked := cqrini.ReadBool('LoTW', 'IncLoTWDXCC', False);
  chkNewQSOLoTW.Checked := cqrini.ReadBool('LoTW', 'NewQSOLoTW', False);
  edtLoTWName.Text := cqrini.ReadString('LoTW', 'LoTWName', '');
  edtLoTWPass.Text := cqrini.ReadString('LoTW', 'LoTWPass', '');
  chkShowLoTWInfo.Checked := cqrini.ReadBool('LoTW', 'ShowInfo', True);
  chkShowBckLoTW.Checked := cqrini.ReadBool('LoTW', 'UseBackColor', True);
  cmbLoTWBckColor.Selected := cqrini.ReadInteger('LoTW', 'BckColor', clMoneyGreen);
  edteQSLName.Text := cqrini.ReadString('LoTW', 'eQSLName', '');
  edteQSLPass.Text := cqrini.ReadString('LoTW', 'eQSLPass', '');
  chkShowBckEQSL.Checked := cqrini.ReadBool('LoTW', 'eUseBackColor', True);
  cmbeQSLBckColor.Selected := cqrini.ReadInteger('LoTW', 'eBckColor', clSkyBlue);
  chkExpCommet.Checked := cqrini.ReadBool('LoTW', 'ExpComment', True);

  cmbIfaceType.ItemIndex := cqrini.ReadInteger('CW', 'Type', 0);
  edtWinPort.Text := cqrini.ReadString('CW', 'wk_port', '');
  chkPotSpeed.Checked := cqrini.ReadBool('CW', 'PotSpeed', False);
  edtWinSpeed.Value := cqrini.ReadInteger('CW', 'wk_speed', 30);
  edtCWAddress.Text := cqrini.ReadString('CW', 'cw_address', 'localhost');
  edtCWPort.Text := cqrini.ReadString('CW', 'cw_port', '6789');
  edtCWSpeed.Value := cqrini.ReadInteger('CW', 'cw_speed', 30);
  edtWinMinSpeed.Value := cqrini.ReadInteger('CW', 'wk_min', 5);
  edtWinMaxSpeed.Value := cqrini.ReadInteger('CW', 'wk_max', 60);
  edtK3NGPort.Text := cqrini.ReadString('CW','K3NGPort','');
  edtK3NGSerSpeed.Text := IntToStr(cqrini.ReadInteger('CW','K3NGSerSpeed',115200));
  edtK3NGSpeed.Text := IntToStr(cqrini.ReadInteger('CW','K3NGSpeed',30));

  rgFreqFrom.ItemIndex := cqrini.ReadInteger('fldigi', 'freq', 1);
  edtDefaultFreq.Text := cqrini.ReadString('fldigi', 'deffreq', '3.600');
  rgModeFrom.ItemIndex := cqrini.ReadInteger('fldigi', 'mode', 1);
  cmbDefaultMode.Text := cqrini.ReadString('fldigi', 'defmode', 'RTTY');
  edtDefaultRST.Text := cqrini.ReadString('fldigi', 'defrst', '599');
  rgRSTFrom.ItemIndex := cqrini.ReadInteger('fldigi', 'rst', 0);
  edtLoadFromFldigi.Value := cqrini.ReadInteger('fldigi', 'interval', 2);

  chkRunFldigi.Checked := cqrini.ReadBool('fldigi', 'run', False);
  edtFldigiPath.Text := cqrini.ReadString('fldigi', 'path', '');

  chkEnableBackup.Checked := cqrini.ReadBool('Backup', 'Enable', False);
  chkCompressBackup.Checked := cqrini.ReadBool('Backup', 'Compress', True);
  edtBackupPath.Text := cqrini.ReadString('Backup', 'Path', dmData.DataDir);
  rgBackupType.ItemIndex := cqrini.ReadInteger('Backup', 'BackupType', 0);
  chkAskBackup.Checked := cqrini.ReadBool('Backup','AskFirst',False);

  edtTxtFiles.Text := cqrini.ReadString('ExtView', 'txt', 'gedit');
  edtPdfFiles.Text := cqrini.ReadString('ExtView', 'pdf', 'evince');
  edtImgFiles.Text := cqrini.ReadString('ExtView', 'img', 'eog');
  edtHtmlFiles.Text := cqrini.ReadString('ExtView', 'html', 'firefox');
  chkIntQSLViewer.Checked := cqrini.ReadBool('ExtView', 'QSL', True);

  edtClub1Date.Text := cqrini.ReadString('FirstClub', 'DateFrom', '1945-01-01');
  edtClub2Date.Text := cqrini.ReadString('SecondClub', 'DateFrom', '1945-01-01');
  edtClub3Date.Text := cqrini.ReadString('ThirdClub', 'DateFrom', '1945-01-01');
  edtClub4Date.Text := cqrini.ReadString('FourthClub', 'DateFrom', '1945-01-01');
  edtClub5Date.Text := cqrini.ReadString('FifthClub', 'DateFrom', '1945-01-01');

  edtCbUser.Text := cqrini.ReadString('CallBook', 'CBUser', '');
  edtCbPass.Text := cqrini.ReadString('CallBook', 'CBPass', '');
  rbHamQTH.Checked := cqrini.ReadBool('Callbook', 'HamQTH', True);
  rbQRZ.Checked := cqrini.ReadBool('Callbook', 'QRZ', False);

  cl10db.Selected        := cqrini.ReadInteger('RBN','10db',clWhite);
  cl20db.Selected        := cqrini.ReadInteger('RBN','20db',clPurple);
  cl30db.Selected        := cqrini.ReadInteger('RBN','30db',clMaroon);
  clOver30db.Selected    := cqrini.ReadInteger('RBN','over30db',clRed);
  edtRBNLogin.Text       := cqrini.ReadString('RBN','login','');
  edtWatchFor.Text       := cqrini.ReadString('RBN','watch','');
  chkRBNAutoConn.Checked := cqrini.ReadBool('RBN','AutoConnect',False);
  edtDelAfter.Text       := cqrini.ReadString('RBN','deleteAfter','60');
  edtRBNServer.Text      := cqrini.ReadString('RBN','Server','telnet.reversebeacon.net:7000');

  chkHaUpEnabled.Checked := cqrini.ReadBool('OnlineLog','HaUP',False);
  chkHaUpOnline.Checked  := cqrini.ReadBool('OnlineLog','HaUpOnline',False);
  edtHaUserName.Text     := cqrini.ReadString('OnlineLog','HaUserName','');
  edtHaPasswd.Text       := cqrini.ReadString('OnlineLog','HaPasswd','');
  cmbHaColor.Selected    := cqrini.ReadInteger('OnlineLog','HaColor',clBlue);
  chkHaUpEnabledChange(nil);

  chkClUpEnabled.Checked := cqrini.ReadBool('OnlineLog','ClUP',False);
  chkClUpOnline.Checked  := cqrini.ReadBool('OnlineLog','ClUpOnline',False);
  edtClUserName.Text     := cqrini.ReadString('OnlineLog','ClUserName','');
  edtClPasswd.Text       := cqrini.ReadString('OnlineLog','ClPasswd','');
  edtClEmail.Text        := cqrini.ReadString('OnlineLog','ClEmail','');
  cmbClColor.Selected    := cqrini.ReadInteger('OnlineLog','ClColor',clRed);
  chkClUpEnabledChange(nil);

  chkHrUpEnabled.Checked := cqrini.ReadBool('OnlineLog','HrUP',False);
  chkHrUpOnline.Checked  := cqrini.ReadBool('OnlineLog','HrUpOnline',False);
  edtHrUserName.Text     := cqrini.ReadString('OnlineLog','HrUserName','');
  edtHrCode.Text         := cqrini.ReadString('OnlineLog','HrCode','');
  cmbHrColor.Selected    := cqrini.ReadInteger('OnlineLog','HrColor',clPurple);
  chkCloseAfterUpload.Checked := cqrini.ReadBool('OnlineLog','CloseAfterUpload',False);
  chkHrUpEnabledChange(nil);

  wasOnlineLogSupportEnabled := chkHaUpEnabled.Checked or chkClUpEnabled.Checked or chkHrUpEnabled.Checked;

  lbPreferences.Selected[pgPreferences.ActivePageIndex] := True;
  edtCW1.Width := 60;
  edtSSB1.Width := 60;
  edtRTTY1.Width := 60;
  edtAM1.Width := 60;
  edtFM1.Width := 60;

  chkSysUTCClick(nil);
  TRXChanged      := False;
  WinKeyerChanged := False;
end;

procedure TfrmPreferences.edtPoll2Exit(Sender: TObject);
var
  tmp: integer = 0;
begin
  if not TryStrToInt(edtPoll1.Text, tmp) then
    edtPoll2.Text := '500';
end;

procedure TfrmPreferences.edtPoll1Exit(Sender: TObject);
var
  tmp: integer = 0;
begin
  if not TryStrToInt(edtPoll1.Text, tmp) then
    edtPoll1.Text := '500';
end;

procedure TfrmPreferences.pgPreferencesChange(Sender: TObject);
begin
  lbPreferences.Selected[pgPreferences.ActivePageIndex] := True;
end;

initialization
  {$I fPreferences.lrs}

end.

