unit xe_COM01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, xe_GNL, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
	cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, Vcl.StdCtrls, cxButtons,
	cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, dxSkinsCore, IniFiles,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxGDIPlusClasses, cxGroupBox, dxScrollbarAnnotations;

type
  TFrm_COM01 = class(TForm)
    ed_wk_sabun: TcxTextEdit;
    pnl_bottom: TPanel;
		RbCheckBox2: TcxCheckBox;
    RbCheckBox3: TcxCheckBox;
    btn_Beacha: TcxButton;
    btn_Close: TcxButton;
    lbl2: TLabel;
    ed_ConfSlip: TcxTextEdit;
		ed_st_cd: TcxTextEdit;
    cxLabel1: TcxLabel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnClose: TcxButton;
    lbTitle: TListBox;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    btn_KDWKSearch: TcxButton;
    pnl_WkList: TcxGroupBox;
    cxGrid1: TcxGrid;
    stg_WkList_View: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnl_WkList_Condition: TPanel;
    cb_Condition: TcxComboBox;
    cb_Status: TcxComboBox;
    ed_Wk_Search: TcxTextEdit;
    cb_All: TcxCheckBox;
    Panel60: TPanel;
    Label31: TLabel;
    cb_wk_city: TcxComboBox;
    cb_wk_ward: TcxComboBox;
    cb_wk_dong: TcxComboBox;
    cb_map: TcxComboBox;
    ed_dis: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    whbtn_wk_Search: TcxButton;
    lbl1: TcxLabel;
    pnl_KMWkList: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid_KDWkList: TcxGridDBTableView;
    cxGrid_KDWkListColumn0: TcxGridDBColumn;
    cxGrid_KDWkListColumn1: TcxGridDBColumn;
    cxGrid_KDWkListColumn2: TcxGridDBColumn;
    cxGrid_KDWkListColumn3: TcxGridDBColumn;
    cxGrid_KDWkListColumn4: TcxGridDBColumn;
    cxGrid_KDWkListColumn5: TcxGridDBColumn;
    cxGrid_KDWkListColumn6: TcxGridDBColumn;
    cxGrid_KDWkListColumn7: TcxGridDBColumn;
    cxGrid_KDWkListColumn8: TcxGridDBColumn;
    cxGrid_KDWkListColumn9: TcxGridDBColumn;
    cxGrid_KDWkListColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    cb_KMSearch: TcxComboBox;
    edt_KMSearch: TcxTextEdit;
    btn_KMSearch: TcxButton;
    btn_WKSearch: TcxButton;
    cxLabel11: TcxLabel;
    cb_SType: TcxComboBox;
    cxLabel3: TcxLabel;
    cb_LType: TcxComboBox;
    cb_GType: TcxComboBox;
    procedure cb_ConditionPropertiesChange(Sender: TObject);
		procedure btn_BeachaClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure whbtn_wk_SearchClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_Wk_SearchKeyPress(Sender: TObject; var Key: Char);
    procedure stg_WkList_ViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure stg_WkList_ViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
		procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure stg_WkList_ViewColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure stg_WkList_ViewColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure N2Click(Sender: TObject);
    procedure stg_WkList_ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N11Click(Sender: TObject);
		procedure btn_KDWKSearchClick(Sender: TObject);
		procedure btn_KMSearchClick(Sender: TObject);
    procedure edt_KMSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
	private
		{ Private declarations }
		procedure Proc_ConfHis_Cancel(ss_ConfSlip: string);
		function proc_getCompallocation(sBrNo, sWkNo, sCuseq, sKeynumber : String;  Var sMsg : String): Boolean;
		procedure proc_Cell_Read;
		procedure proc_Cell_Save;
		procedure proc_Cell_Clear;
		procedure Proc_KDWkSearch;
	public
		{ Public declarations }
		giFormIndex: integer;
		// 접수창의 폼 인덱스 번호를 넘겨 받는다.[선택기사의 사번을 다시 넘겨줄때 필요함.]
		gsCallPass : Boolean;  // 기사콜패스 중인지 여부

		Jon03Tag : Integer;
		pCOM01Dock : TUNDOCKMNG;
		gsOrderBrNo, gsOrderCharge, gsOrderCuseq, gsOrderMainKeyNum, gsKMShare : string;
		gsLat, gsLng : String; //출발지 좌표
		procedure proc_init;
		procedure proc_recieve(ls_rxxml: Widestring);
  end;

var
  Frm_COM01: TFrm_COM01;

implementation

{$R *.dfm}

uses xe_gnl2, xe_Dm, xe_xml, xe_Query, xe_Func, xe_Msg,
  xe_gnl3, Main, xe_Flash, xe_packet;

 const
	 COLUUMNLIST : array[0..11] of TSortList = (
		 (cName : '사번'    ;  cWid : 048 ),
		 (cName : '자체사번';  cWid : 070 ),
		 (cName : '기사명'  ;  cWid : 072 ),
		 (cName : '접속'    ;  cWid : 035 ),
		 (cName : '상태'    ;  cWid : 036 ),
		 (cName : '단말기'  ;  cWid : 099 ),
		 (cName : '휴대폰'  ;  cWid : 090 ),
		 (cName : '위치'    ;  cWid : 053 ),
		 (cName : '유선전화';  cWid : 083 ),
		 (cName : '이통사'  ;  cWid : 048 ),
		 (cName : '지사명'  ;  cWid : 075 ),
		 (cName : '본사명'  ;  cWid : 056 )
	 );
	
procedure TFrm_COM01.btnCloseClick(Sender: TObject);
begin
	btn_Close.Click;
end;

procedure TFrm_COM01.btn_KDWKSearchClick(Sender: TObject);
var iTag : integer;
begin
	lbl2.Visible := False;

	if Self.Tag in [0, 2, 22] then
	begin //0, 2 : 강제배차 ( 0 : 접수창 강제배차, 2 : 접수현황 강제배차) 5 : 문자배차
		RbCheckBox3.Visible := True;
		if ed_st_cd.Text = 'R' then btn_Beacha.Caption := '예약배차하기'
													 else btn_Beacha.Caption := '강제배차하기';
		btn_Beacha.hint := btn_Beacha.Caption;
		pnl_bottom.Height := 50;
	end else
	if self.Tag = 5 then
	begin
		pnl_bottom.Height := 115;
		lbl2.Visible := True;
		RbCheckBox2.Visible := True;
		RbCheckBox3.Visible := True;
		btn_Beacha.Caption := '문자배차하기';
		btn_Beacha.hint := btn_Beacha.Caption;
		if gbWorkerChargeYN = 0 then
		begin // 환경설정에 문자배차 수수료 차감 옵션이 체크 되어 있으면 항상 차감설정을 한다.
			RbCheckBox2.Checked := True; // 2008-12-24 적용.
		end;
	end;

	iTag := TcxButton(Sender).Tag;
	if iTag = 0 then     //일반기사조회 -> KD기사조회창 오픈
	begin	
		if (gsKMShare = '공유중') and (ed_st_cd.Text[1] in ['0']) then //, '4', '5', '8']
		begin
			pnlTitle.Caption := '  KAKAO기사조회 배차';
			pnl_WkList.Visible := False;
			btn_KDWKSearch.Visible := pnl_WkList.Visible;
			pnl_KMWkList.Visible := True;
			btn_WKSearch.Visible := pnl_KMWkList.Visible;
		
			cb_KMSearch.ItemIndex := 0;
			cb_SType    .ItemIndex := 0;
			cb_LType .ItemIndex := 0;
			cb_GType.ItemIndex := 0;
			edt_KMSearch.Text := '';
			edt_KMSearch.SetFocus;
			cxGrid_KDWkList.DataController.SetRecordCount(0);
			btn_Beacha.Caption := '동의배정하기';

			pnl_bottom.Height := 50;
			lbl2.Visible := False;
			RbCheckBox2.Visible := False;
			RbCheckBox3.Visible := False;
		end else
		begin
			GMessagebox('동의배정은 접수상태+ KM공유(공유중)일때만 가능합니다' + CRLF + CRLF
								+ '오더상태와 KM공유상태를 확인해주세요.', CDMSE);
			Exit;
		end;
	end else
	if iTag = 1 then     //KD기사조회창 -> 일반기사조회 오픈
	begin
		pnlTitle.Caption := '  기사조회 배차';
		pnl_WkList.Visible := True;
		btn_KDWKSearch.Visible := pnl_WkList.Visible;
		pnl_KMWkList.Visible := False;
		btn_WKSearch.Visible := pnl_KMWkList.Visible;
		ed_Wk_Search.Text := '';
		ed_Wk_Search.SetFocus;
		
		stg_WkList_View.DataController.SetRecordCount(0);
		btn_Beacha.Caption := btn_Beacha.hint;

	end;
end;

procedure TFrm_COM01.btn_KMSearchClick(Sender: TObject);
begin
	Proc_KDWkSearch;
end;

procedure TFrm_COM01.cb_ConditionPropertiesChange(Sender: TObject);
begin
  ed_Wk_Search.Visible := True;
  cb_Status.Visible := False;
  whbtn_wk_Search.Left := 220;
  Panel60.Visible := False;
  cb_All.Left := whbtn_wk_Search.Left + 70;
	cb_All.Visible := True;
  cb_All.Checked := False;
  ed_dis.Text := '';
  cxLabel2.Visible := False;
  ed_Wk_Search.Left := 96;
	case cb_Condition.ItemIndex of
		2:
      begin
        cxLabel2.Visible := True;
        ed_Wk_Search.Left := 220;
        whbtn_wk_Search.Left := 344;
        cb_All.Left := whbtn_wk_Search.Left + 80;
        cb_All.Visible := False;
        cb_Status.Left := 96;
				cb_Status.Visible := True;
				cb_Status.ItemIndex := 0;
        if GB_365System then cb_Status.Width := 70
                        else cb_Status.Width := 50;
        cb_Status.BringToFront;
      end;
	end;
	if Self.Visible then
  begin
    case cb_Condition.ItemIndex of
			0, 1: ed_Wk_Search.SetFocus;
			2: cb_Status.SetFocus;
    end;
	end;
end;

procedure TFrm_COM01.proc_init;
begin
	Self.Height := 460;
	Self.Width := 800;
//	gsLat := ''; gsLng := '';
	ed_Wk_Search.Text := '';
	cxLabel1.Caption := '';
	cb_Condition.ItemIndex := 0;
	cb_ConditionPropertiesChange(cb_condition);

  // 2 : 강제배차, 5 : 문자배차
  if Self.Tag in [2, 5] then cb_All.Checked := GS_COUNSEL_BAECHA_ALLCHECK;

	cb_KMSearch.ItemIndex := 0;
	cb_SType.ItemIndex := 0;
	cb_LType.ItemIndex := 0;
	cb_GType.ItemIndex := 0;
	edt_KMSearch.text := '';
	
	RbCheckBox3.Visible := False;
  RbCheckBox3.Checked := true;

  RbCheckBox2.Visible := False;
	RbCheckBox2.Checked := False;

	lbl2.Visible := False;

	btn_Beacha.Width := 90;
	btn_Close.Width := 90;
	btn_Beacha.Enabled := True;
	btn_Beacha.Left := Self.Width - 180 - 22;
	btn_Close.Left := self.Width - 90  - 20;

	if Self.Tag in [0, 2, 22] then
	begin //0, 2 : 강제배차 ( 0 : 접수창 강제배차, 2 : 접수현황 강제배차) 5 : 문자배차
		RbCheckBox3.Visible := True;
		if ed_st_cd.Text = 'R' then btn_Beacha.Caption := '예약배차하기'
													 else btn_Beacha.Caption := '강제배차하기';
		btn_Beacha.hint := btn_Beacha.Caption;
		pnl_bottom.Height := 50;

//    btn_Beacha.Height := 27;
//    btn_Close.Height := 27;
	end else
	if self.Tag = 5 then
	begin
		pnl_bottom.Height := 115;

//    btn_Beacha.Height := 90;
//    btn_Close.Height := 90;

		lbl2.Visible := True;
		RbCheckBox2.Visible := True;
		RbCheckBox3.Visible := True;
		btn_Beacha.Caption := '문자배차하기';
		btn_Beacha.hint := btn_Beacha.Caption;
		if gbWorkerChargeYN = 0 then
		begin // 환경설정에 문자배차 수수료 차감 옵션이 체크 되어 있으면 항상 차감설정을 한다.
			RbCheckBox2.Checked := True; // 2008-12-24 적용.
		end;
	end;

	proc_Cell_Read;
	
	// 22.콜패스 일경우 기존 배차 기사 표시 않함
  if Not (Self.Tag In [0, 22]) then
     Proc_ConfHis_Cancel(ed_ConfSlip.Text);

  Self.Left := (Frm_Main.pnlMain.Width - Self.Width) div 2;
  Self.top  := (Frm_Main.pnlMain.Height - Self.Height) div 2;
  if Self.top <= 10 then Self.top := 10;

	if self.Visible then
		ed_Wk_Search.SetFocus;
end;

procedure TFrm_COM01.Proc_KDWkSearch;
var
	ls_TxLoad, XmlData, ls_MSG_Err, tmpCntStr : string;
	slRcvList: TStringList;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	I, ErrCode, j, tmpCnt, iRow : Integer;
	sTmp, sSubcontracts : string;
	iGridIdex : integer;
	dTmpDate : TDateTime;
	sKDId, sKDNm, sKDPhone, sKDSType, sLat, sLng, sLType, sGType: string; 
begin
	try

		sKDId := ''; sKDNm := ''; sKDPhone := '';
		case cb_KMSearch.ItemIndex of
			0: sKDId := edt_KMSearch.text;
			1: sKDNm := edt_KMSearch.text;
			2: sKDPhone := edt_KMSearch.text;
		end;

		case cb_SType.ItemIndex of
			0: sKDSType := 'normal';
			1: sKDSType := 'vip';
		end;
		sLat := SetWGS84(gsLat);
		sLng := SetWGS84(gsLng);
		case cb_LType.ItemIndex of
			0: sLType := 'c2_regular';
			1: sLType := 'c1_regular';
			2: sLType := 'c1_large';
		end;
		case cb_GType.ItemIndex of
			0: sGType := '';
			1: sGType := 'auto';
			2: sGType := 'manual';
		end;

		ls_TxLoad := GTx_UnitXmlLoad('KM00010.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'KM00010');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKdDriverId', Trim(sKDId));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKdDriverName', Trim(sKDNm));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKdDriverPhone', Trim(sKDPhone));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strServiceType', Trim(sKDSType));   
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strLat', Trim(sLat));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strLng', Trim(sLng));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strLicenseType', Trim(sLType));   
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strGearType', Trim(sGType));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strDist', '5');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPer', '100');   

//			Log('Jon054 종료콜요청: ' + ls_TxLoad, LOGDATAPATHFILE);

		slRcvList := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 180000) then
			begin
				if slRcvList.Count > 0 then
				begin
					Frm_Flash.cxPBar1.Properties.Max := slRcvList.Count;
					Frm_Flash.cxPBar1.Position := 0;
					cxGrid_KDWkList.DataController.SetRecordCount(0);

					for j := 0 to slRcvList.Count - 1 do
					begin
						Frm_Flash.cxPBar1.Position := j + 1;
						Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slRcvList.Count);
						Application.ProcessMessages;
						xmlData := slRcvList.Strings[j];

						xdom := ComsDomDocument.Create;

						if not xdom.loadXML(XmlData) then Exit;

						ls_MSG_Err := GetXmlErrorCode(XmlData);
						if ('0000' = ls_MSG_Err) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/DataInfo');
							tmpCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text,0);

							if (0 < tmpCnt) then
							begin
								cxGrid_KDWkList.BeginUpdate;
								try
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/DataInfo/Data');
									for i := 0 to lst_Result.length - 1 do
									begin
										iRow := cxGrid_KDWkList.DataController.AppendRecord;

										cxGrid_KDWkList.DataController.Values[iRow, 0] := lst_Result.item[i].attributes.getNamedItem('Id')				  .Text; //카카오 기사 id
										cxGrid_KDWkList.DataController.Values[iRow, 1] := lst_Result.item[i].attributes.getNamedItem('Name')				.Text; //카카오 기사 이름"
										cxGrid_KDWkList.DataController.Values[iRow, 2] := StrToCall(lst_Result.item[i].attributes.getNamedItem('Phone').Text); //카카오 기사 전화번호"
										cxGrid_KDWkList.DataController.Values[iRow, 3] := lst_Result.item[i].attributes.getNamedItem('Birthday')		.Text; //카카오 기사 생년월일"
										cxGrid_KDWkList.DataController.Values[iRow, 4] := lst_Result.item[i].attributes.getNamedItem('ProfileImage').Text; //카카오 기사 프로필 사진"
										cxGrid_KDWkList.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('Address')			.Text; //카카오 기사 현재 위치 (출근 시)"

										if lst_Result.item[i].attributes.getNamedItem('GearType').Text = 'manual' then sTmp := '수동' else sTmp := '자동';
										cxGrid_KDWkList.DataController.Values[iRow, 6] := sTmp;                                                            //카카오 기사 수동 기어 가능 여부"

										sSubcontracts := '';
										sTmp := lst_Result.item[i].attributes.getNamedItem('Subcontracts').Text;
										if Pos('angel_normal', sTmp) > 0 then sSubcontracts := '도급일반';
										if Pos('angel_vip', sTmp) > 0 then 
										begin
											if sSubcontracts = '' then sSubcontracts := '도급VIP' else sSubcontracts := sSubcontracts + ',도급VIP';
										end;
										cxGrid_KDWkList.DataController.Values[iRow, 7] := sSubcontracts;                                                            //도급 계약 타입"
										if lst_Result.item[i].attributes.getNamedItem('License').Text = 'c2_regular' then sTmp := '2종보통' else
										if lst_Result.item[i].attributes.getNamedItem('License').Text = 'c1_regular' then sTmp := '1종보통' else 
										if lst_Result.item[i].attributes.getNamedItem('License').Text = 'c1_large'   then sTmp := '1종대형' else sTmp := '';
										cxGrid_KDWkList.DataController.Values[iRow, 8] := sTmp;                                                            //면허정보 1종보통 "
										cxGrid_KDWkList.DataController.Values[iRow, 9] := lst_Result.item[i].attributes.getNamedItem('Insurances')	.Text; //보험정보"
										cxGrid_KDWkList.DataController.Values[iRow,10] := lst_Result.item[i].attributes.getNamedItem('ExtraInfo')		.Text; //카카오 기사 운행/사고/벌금 횟수"							

										
									end;
								finally
									cxGrid_KDWkList.EndUpdate;
								end;
							end;
						end;
					end;
				end;
			end;
		finally
      xdom := Nil;
		end;
  except
    on e: Exception do
    begin
			sTmp := 'COM01[Proc_KDWkSearch]Error : ' + e.Message;
			Assert(False, E.Message);
		end;
	end;    
end;

procedure TFrm_COM01.Proc_ConfHis_Cancel(ss_ConfSlip: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str: string;
	ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
	sAdd : string;
begin
  if Trim(ss_ConfSlip) = '' then Exit;
	stg_WkList_View.DataController.SetRecordCount(0);
	ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
	fGet_BlowFish_Query(GSQ_CANCEL_WORKER_LIST, sQueryTemp);
	sAdd := ' A.WK_HP Not Like ''%#9'' ';   // 백아더 기사(#9) 조회에서 제외   20160913 KHS
	// 보험상래에 따라 제외  20190306 KHS 정경석과장 요청
	sAdd := sAdd + ' AND (A.WK_INS_TYPE in (''c'',''m'',''d'',''k'',''b'') or  A.WK_INS_CONS_TYPE in (''c'',''m'',''d'',''k'',''b'')) ';

	ls_TxQry := Format(sQueryTemp, [En_Coding(ss_ConfSlip), En_Coding(ss_ConfSlip), sAdd]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '1', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  slReceive := TStringList.Create;
  try
		if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
		begin
      rv_str := slReceive[0];
      if rv_str <> '' then
			begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    Frm_Flash.Hide;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_COM01.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sConfSlip : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	i, iRow: Integer;
		iTitle: array[0..11] of integer;
begin
	try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then Exit;

			sConfSlip := ed_ConfSlip.Text;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      ls_ClientKey := GetXmlClientKey(ls_rxxml);
      ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
      if ('0000' = ls_MSG_Err) then
      begin
        case StrToIntDef(ls_ClientKey, 1) of
          1:
						begin
              stg_WkList_View.BeginUpdate;
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
								for i := 0 to lbTitle.Items.Count - 1 do
									iTitle[i] := stg_WkList_View.GetColumnByFieldName(lbTitle.Items.Strings[i]).Index;

								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
								ls_Rcrd := TStringList.Create;
								try
									for i := 0 to lst_Result.length - 1 do
									begin
										GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										if (ls_Rcrd[0] = 'M00001') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then Continue; //카카오 기사는 제외 20181106 KHS 정회귀팀장요청

										iRow := stg_WkList_View.DataController.AppendRecord;
										//WK_SABUN, WK_NAME, LOGIN, DT_NM, WK_HP, WK_PHONE, WK_AREA, WK_TEL, WK_MOCK, BR_NAME, HD_NAME, BR_WK_NUM, C_STATE
										stg_WkList_View.DataController.Values[iRow, iTitle[0]] := ls_Rcrd[0];
										stg_WkList_View.DataController.Values[iRow, iTitle[1]] := ls_Rcrd[11];
										stg_WkList_View.DataController.Values[iRow, iTitle[2]] := ls_Rcrd[1];
										stg_WkList_View.DataController.Values[iRow, iTitle[3]] := ls_Rcrd[2];

                    if GB_365System then
											stg_WkList_View.DataController.Values[iRow, iTitle[4]] := ls_Rcrd[12]      // C_STATE
                    else
											stg_WkList_View.DataController.Values[iRow, iTitle[4]] := ls_Rcrd[3];      // DT_NM

										stg_WkList_View.DataController.Values[iRow, iTitle[5]] := strtocall(ls_Rcrd[4]);
										stg_WkList_View.DataController.Values[iRow, iTitle[6]] := strtocall(ls_Rcrd[5]);
										stg_WkList_View.DataController.Values[iRow, iTitle[7]] := ls_Rcrd[6];
										stg_WkList_View.DataController.Values[iRow, iTitle[8]] := strtocall(ls_Rcrd[7]);
										stg_WkList_View.DataController.Values[iRow, iTitle[9]] := ls_Rcrd[8];
										stg_WkList_View.DataController.Values[iRow, iTitle[10]] := ls_Rcrd[9];
										stg_WkList_View.DataController.Values[iRow, iTitle[11]] := ls_Rcrd[10];
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
              stg_WkList_View.EndUpdate;

              if stg_WkList_View.DataController.RecordCount > 0 then
              begin
                stg_WkList_View.DataController.SelectRows(0, 0);
                stg_WkList_View.DataController.FocusedRowIndex := 0;
                cxGrid1.SetFocus;
              end;
            end;
          2:
            begin
							GMessagebox('강제 배차 되었습니다.', CDMSI);
							if ed_ConfSlip.Text = A01_HIS_POPUP.Slip then
              begin
                if Assigned(Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx]) then
                begin
                  Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
                  Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
                end;
              end;
							Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sConfSlip, 'COM01-1');
							Hide;
						end;
          4:
            begin
							GMessagebox('배차 되었습니다.', CDMSI);
							if ed_ConfSlip.Text = A01_HIS_POPUP.Slip then
							begin
								if Assigned(Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx]) then
								begin
									Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
									Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
								end;
							end;
							Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sConfSlip, 'COM01-2');
							Hide;
						end;
          5:
            begin
							GMessagebox('문자 배차 되었습니다.', CDMSI);
              if ed_ConfSlip.Text = A01_HIS_POPUP.Slip then
              begin
                if Assigned(Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx]) then
                begin
                  Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
                  Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
                end;
              end;
							Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sConfSlip, 'COM01-3');
              Hide;
            end;
        end;
			end else
      begin
        Screen.Cursor := crDefault;
        if ( gsCallPass ) And (Self.Tag = 22) then
        begin
          Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sConfSlip, 'COM01-4');
          gsCallPass := False;
          GMessagebox(MSG012 + CRLF + ls_MSG_Err + CRLF +
                     '기사 콜패스 실패 :  기존오더가 대기상태로 변경되었습니다. 확인바랍니다.', CDMSE);
        end else
        begin
					GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        end;
      end;
    finally
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_COM01.btn_BeachaClick(Sender: TObject);
var
	ls_MSG_Err, tmpCntStr : string;
	slRcvList: TStringList;
	xdom: msDomDocument;

	ls_TxLoad, sKeyString: string;
	rv_str, sBaechSMS, sMsg : string;
	ls_rxxml: WideString;
	iRow, iWkSabun, iCol, j: Integer;
	slReceive: TStringList;
	ErrCode: integer;
	XmlData, sParams, ErrMsg, sTmp, sWkSabun, sCuSeq, sKeyNumber: string;
begin
	Try
		if pnl_KMWkList.Visible then  //KM기사 배차
		begin
			iRow := cxGrid_KDWkList.DataController.FocusedRecordIndex;
			if iRow = -1 then
			begin
				GMessagebox('기사를 클릭하세요', CDMSE);
				exit;
			end;

			btn_Beacha.Enabled := False;
			iWkSabun := cxGrid_KDWkList.GetColumnByFieldName('사번').Index;
			sWkSabun := cxGrid_KDWkList.DataController.Values[iRow, iWkSabun];

			ls_TxLoad := GTx_UnitXmlLoad('KM00020.XML');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'KM00020');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKdDriverId', Trim(sWkSabun));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strConfSlip', Trim(ed_ConfSlip.Text));

			slRcvList := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False) then
				begin
					for j := 0 to slRcvList.Count - 1 do
					begin
						Application.ProcessMessages;
						xmlData := slRcvList.Strings[j];

						xdom := ComsDomDocument.Create;

						if not xdom.loadXML(XmlData) then Exit;

						ls_MSG_Err := GetXmlErrorCode(XmlData);
						if ('0000' = ls_MSG_Err) then
						begin
							GMessagebox('동의배정 되었습니다.', CDMSI);
							if ed_ConfSlip.Text = A01_HIS_POPUP.Slip then
							begin
								if Assigned(Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx]) then
								begin
									Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
									Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
								end;
							end;
							Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, ed_ConfSlip.Text, 'COM01-2');
							btn_Close.Click;
						end else
						begin
							GMessagebox('동의배정에 실패하였습니다.' +CRLF+CRLF + ls_MSG_Err, CDMSI);
						end;
					end;
				end;
      finally
				xdom := Nil;
				btn_Beacha.Enabled := True;
			end;
		end else
		if pnl_WkList.Visible then   //기존 기사배차
		begin
			iRow := stg_WkList_View.DataController.FocusedRecordIndex;
			if iRow = -1 then
			begin
				GMessagebox('기사를 클릭하세요', CDMSE);
				exit;
			end;

			iWkSabun := stg_WkList_View.GetColumnByFieldName('사번').Index;
			sWkSabun := stg_WkList_View.DataController.Values[iRow, iWkSabun];
			iCol := stg_WkList_View.GetColumnByFieldName('사번').Index;
			sCuSeq := stg_WkList_View.DataController.Values[iRow, iCol];

			sKeyNumber := StringReplace(GT_OrderInfo[Jon03Tag].KeyNumber, '-', '', [rfReplaceAll]);;

			ed_wk_sabun.Text := sWkSabun;//stg_WkList_View.DataController.Values[iRow, 0];

			if trim(sWkSabun) = '' then
			begin
				GMessagebox('기사를 클릭하세요', CDMSE);
				exit;
			end;

			//////////////////기사캐시 체크 전문 추가/////////////////////////////////////////
			if RbCheckBox2.Checked then
			begin
				sTmp := gsOrderCharge;
			end	else
			begin
				if self.Tag In [2, 22] then
					sTmp := gsOrderCharge
				else
					sTmp := '0';
			end;

			sParams := ed_ConfSlip.Text + '│' + ed_wk_sabun.Text + '│' + sTmp;
			if not RequestBase(GetCallable06('CHECK_BAECHA_OK', 'A01.CHECK_BAECHA_OK', sParams), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox('배차불가 : ' + ErrMsg + '[code : ' + IntToStr(ErrCode) + ']', CDMSE);
				exit;
			end;           		
			//////////////////기사캐시 체크 전문 추가/////////////////////////////////////////

			if RbCheckBox3.Checked then
				sBaechSMS := '0'
			else
				sBaechSMS := '1';

			if self.Tag = 0 then
			begin
				exit;
			end else
			if self.Tag = 5 then
			begin
				if proc_getCompallocation(gsOrderBrNo, En_Coding(ed_wk_sabun.Text), gsOrderCuseq, gsOrderMainKeyNum, sMsg) then                  // 문자배차시 배차제한일경우 배차 안함
				begin
					sMsg := sMsg + #13#10 + #13#10 + '배차를 진행 하시겠습니까?';
					if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
				end else
				begin
					if pos('[error]', sMsg) > 0 then 
					begin
						GMessagebox(Format('배차제한 여부 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
						exit;
					end;
				end;

				if RbCheckBox2.Checked then
					sKeyString := '4'
				else
					sKeyString := '5';
			end else
			if self.Tag In [2, 22] then
			begin
				if proc_getCompallocation(gsOrderBrNo, En_Coding(ed_wk_sabun.Text), gsOrderCuseq, gsOrderMainKeyNum, sMsg) then
				begin
					sMsg := sMsg + #13#10 + #13#10 + '강제배차를 진행 하시겠습니까?';
					if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
				end else
				begin
					if pos('[error]', sMsg) > 0 then 
					begin
						exit;
					end;
				end;

				sKeyString := '2';
				gsCallPass := False;

				if Self.Tag = 22 then    // 기사콜패스는 기사배차중인 콜을 바로 다른기사에게 강제배차 처리 원주365만 해당
				begin
					try
						ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
						ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'RESV0005', [rfReplaceAll]);

						ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString',   En_Coding(ed_ConfSlip.Text), [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString',  En_Coding(ed_st_cd.Text), [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString',    GT_USERIF.ID, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString',  '5', [rfReplaceAll]);

						slReceive := TStringList.Create;
						try
							if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
							begin
								rv_str := slReceive[0];
								if rv_str <> '' then
								begin
									if ('0000' <> GetXmlErrorCode(rv_str)) then
									begin
										GMessagebox('기사 콜패스 실패 : 오더 취소중 오류가 발생했습니다.', CDMSE);
										Exit;
									end;
									ed_st_cd.Text := '5';
								end;
							end;
						finally
							slReceive.Free;
						end;

						gsCallPass := True;
					except
						on e : exception do begin
							ShowMessage('오더 상태를 변경하던중 에러가 발생 하였습니다.' + #13#10 + e.Message);
						end;
					end;
				end;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C006.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + sKeyString, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(ed_ConfSlip.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', En_Coding(ed_wk_sabun.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSbString',En_Coding(sWkSabun), [rfReplaceAll]);   // 기사사번
			ls_TxLoad := StringReplace(ls_TxLoad, 'OdbWkSbString', '', [rfReplaceAll]);   // ODB기사사번
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', En_Coding(ed_st_cd.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaSMSString', En_Coding(sBaechSMS), [rfReplaceAll]);

			// 2006.06.06 문자배차 항목이 추가 되어, 구분속성이 추가되었다
			// 문자배차이면 구분이 "1"로 처리한다. 그외에는 처리하지 않는다
			 //-----------------------------------------------------------------------------------------------
			 //  * 1: 문자배차
			 //  * 2: 강제배차
			 //  * 3: 재배차
			 //  * 4: 사무실배차
			 //-----------------------------------------------------------------------------------------------
			if self.tag = 5 then // 문자배차
			begin
				if RbCheckBox2.Checked then
					ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '4', [rfReplaceAll])
				else
					ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '1', [rfReplaceAll]);
			end
			else
				ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '0', [rfReplaceAll]);

			slReceive := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
				if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
				begin
				 if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
					 Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
				 else
				 if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
					 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
				end;
			finally
				Frm_Flash.Hide;
				FreeAndNil(slReceive);
			end;
		end;
	except

  End;
end;

procedure TFrm_COM01.btn_CloseClick(Sender: TObject);
begin
	if Self.Tag = 0 then
  begin
    // 접수창의 "강제배차" 연동됨.[오더 접수시 바로 배차함.]
{		Frm_Main.Frm_JON01N[giFormIndex].blCompulWor := False;
		Frm_Main.Frm_JON01N[giFormIndex].blChkCuSMS := False;
		Frm_Main.Frm_JON01N[giFormIndex].gWkSabun := ''; } //불필요 주석처리 20210525 KHS 
	end else
	if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
	begin
	 if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
     Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
   else
   if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
     Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
  end;
  Close;
end;

procedure TFrm_COM01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_COM01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_COM01.whbtn_wk_SearchClick(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, ls_Condition, ls_Status, ls_All, wk_status : string;
  rv_str, sQueryTemp : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
	ErrCode: integer;
begin
	ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

  if (cb_All.Checked) and (ed_Wk_Search.Text = '') then
  begin
    GMessagebox('전체 체크시는 검색조건을 입력하셔야 합니다.', CDMSE);
    exit;
  end;

  ls_Status := ''; // 접속상태 변수 초기화.  2007-12-21 최도순

  // 2006.06.15 사장님요청
  // 조건없는 경우 해당 본사 만 검색, 조건(개별조건)시 전체 검색
  // HD_NO = ''%s''

  if Not pCOM01Dock.bUnDock then pCOM01Dock.HDNO  := GT_SEL_BRNO.HDNO;

  if self.Tag = 5 then
    wk_status := '' // and a.wk_attend in (''00'',''01'',''02'',''03'')
  else
    wk_status := ' AND B.WK_ATTEND IN (''01'',''02'', ''04'') ';

  // 엔젤플러스본사는 5개본사내 전체 조회 처리 2021.04.08 최도순팀장
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) And ( GT_UserIF.HD <> 'A100') then
    ls_All := ' AND ( A.HD_NO = ''A5522'' Or A.HD_NO = ''A5523'' Or A.HD_NO = ''A5524'' Or A.HD_NO = ''A5525'' Or A.HD_NO = ''A5526'' ) '
  else if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    ls_All := Format(' AND A.HD_NO = ''%s'' ', [pCOM01Dock.HDNO])
  else
    ls_All := Format(' AND A.HD_NO = ''%s'' ', [GT_USERIF.HD]);

	case cb_Condition.ItemIndex of
    0:
      begin
        if cb_All.Checked then
        begin
          if Length(ed_Wk_Search.Text) >= 4 then
            ls_Condition := Format(' ((A.WK_SABUN LIKE ''%s'' || ''%s'') or (A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'')) '
                          + wk_status , ['%', En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%', En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%'])
          else
            ls_Condition := Format(' (A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'') '
                          + wk_status , ['%', En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%'])
        end else
        begin
          if Length(ed_Wk_Search.Text) >= 4 then
            ls_Condition := Format(' ((A.WK_SABUN LIKE ''%s'' || ''%s'' %s) or (A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'' %s)) '
                          + wk_status , ['%', En_Coding(Param_Filtering(ed_Wk_Search.Text)), ls_All, '%', En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%', ls_All])
          else
            ls_Condition := Format(' (A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'' %s) '
                          + wk_status , ['%', En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%', ls_All])
        end;
      end;
		1:
      begin
        if cb_All.Checked then
          ls_Condition := Format(' A.WK_HP LIKE ''%s'' || ''%s'' ' + wk_status, [En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%'])
        else
          ls_Condition := Format(' A.WK_HP LIKE ''%s'' || ''%s'' %s ' + wk_status, [En_Coding(Param_Filtering(ed_Wk_Search.Text)), '%', ls_All]);
      end;

		2:
      begin
        if GB_365System then
        begin
          case cb_Status.ItemIndex of
            0: ls_Condition := ' B.WK_ATTEND NOT IN(''02'') AND WS.CONN_STATE = ''COO'' ';    // 오더접속
            1: ls_Condition := ' B.WK_ATTEND NOT IN(''02'') AND SUBSTR(WS.CONN_STATE, 1, 1) NOT IN (''X'') AND WS.CONN_STATE NOT IN (''COO'') '; // 단순접속
            2: ls_Condition := ' B.WK_ATTEND = ''02'' ';       // 운행
            3: ls_Condition := ' B.WK_ATTEND NOT IN(''02'') AND SUBSTR(WS.CONN_STATE, 1, 1) = ''X'' '; // 미접속
          end;
          ls_Condition := ls_Condition + ls_All;
        end else
        begin
          if cb_Status.ItemIndex = 0 then
          begin // 접속 조회
            ls_Condition := ' DECODE_SYSCODE_WB(WS.CONN_STATE) = ''접속'' ' + ls_All;
          end else
          begin
            case cb_Status.ItemIndex of
              1: ls_Status := '00'; // 퇴근
              2: ls_Status := '01'; // 대기
              3: ls_Status := '02'; // 운행
              4: ls_Status := '03'; // 휴식
            end;
            // cdms_Work_Today 추가하면서,, 변경됨.
            if ls_Status = '00' then
            begin
              if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                ls_Condition := Format(' A.HD_NO = ''%s'' ', [pCOM01Dock.HDNO])
              else
                ls_Condition := Format(' A.HD_NO = ''%s'' ', [GT_USERIF.HD])
              // 본사코드, 접속상태
            end else
            begin
              if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                ls_Condition := Format(' A.HD_NO = ''%s'' AND A.WK_ATTEND = ''%s'' ', [pCOM01Dock.HDNO, ls_Status]) // 본사코드, 접속상태
              else
                ls_Condition := Format(' A.HD_NO = ''%s'' AND A.WK_ATTEND = ''%s'' ', [GT_USERIF.HD, ls_Status]); // 본사코드, 접속상태
            end;
          end;
        end;

        if Trim(ed_Wk_Search.Text) <> '' then
        begin
          if Length(ed_Wk_Search.Text) >= 4 then
            ls_Condition := ls_Condition + Format(' AND ((A.WK_SABUN LIKE ''%s'' || ''%s'' %s) or (A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'' )) '
              , ['%', Trim(En_Coding(ed_Wk_Search.Text)), ls_All, '%', Trim(En_Coding(Param_Filtering(ed_Wk_Search.Text))), '%'])
            else
            ls_Condition := ls_Condition + Format(' AND (A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'' ) '
              , ['%', Trim(En_Coding(Param_Filtering(ed_Wk_Search.Text))), '%'])
        end;
      end;
	end;

	ls_Condition := ls_Condition + ' AND A.WK_HP Not Like ''%#9'' ';    // 백아더 기사(#9) 조회에서 제외   20160913 KHS
	// 보험상래에 따라 제외  20190306 KHS 정경석과장 요청
	ls_Condition := ls_Condition + ' AND (A.WK_INS_TYPE in (''c'',''m'',''d'',''k'',''b'') or  A.WK_INS_CONS_TYPE in (''c'',''m'',''d'',''k'',''b'')) ';

	// cdms_Work_Today 추가하면서,, 변경됨.
  if ls_Status = '00' then
  begin
    // 기사 상태 조회 일 경우 사용하는 쿼리..
    fGet_BlowFish_Query(GSQ_WORKER_LIST_GHOME, sQueryTemp);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      ls_TxQry := Format(sQueryTemp, [pCOM01Dock.HDNO, ls_Condition])
    else
      ls_TxQry := Format(sQueryTemp, [GT_USERIF.HD, ls_Condition]);
  end else
  begin
    // 기사 상태 조회가 아닐경우 사용하는 쿼리..
    if cb_All.Checked then
    begin
      if GS_PRJ_AREA = 'O' then
      begin
        fGet_BlowFish_Query(GSQ_WORKER_LIST_O, sQueryTemp);
        ls_TxQry := Format(sQueryTemp, [GT_USERIF.ShareNo, ls_Condition])
      end else
      begin
        fGet_BlowFish_Query(GSQ_WORKER_LIST, sQueryTemp);
        ls_TxQry := Format(sQueryTemp, [ls_Condition]);
      end;
    end else
    begin
      fGet_BlowFish_Query(GSQ_WORKER_LIST2, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [ls_Condition]);
    end;
  end;
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '1', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  stg_WkList_View.DataController.SetRecordCount(0);
  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    Frm_Flash.Hide;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_COM01.FormCreate(Sender: TObject);
var
  i: integer;
  Save: LongInt; // 폼타이틀 제거용.
begin
	//====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
          ws_border);
      //      bsDialog :
			//        SetWindowLong(Handle, gwl_Style, Save and (Not(ws_Caption)) or ws_modalframe or ws_dlgframe);
		end;
    Height := Height - getSystemMetrics(sm_cyCaption);
		Refresh;
  end;
  //====================================================
	btn_KDWKSearch.Visible := GT_Kakao_AgreeAllocat;
	btn_WKSearch.Left := btn_KDWKSearch.Left;
	btn_WKSearch.Top := btn_KDWKSearch.Top;
	pnl_KMWkList.Align := alClient;
	pnl_KMWkList.Visible := False;
	btn_WKSearch.Visible := False;
	
	stg_WkList_View.DataController.SetRecordCount(0);
	for i := 0 to stg_WkList_View.ColumnCount - 1 do
		stg_WkList_View.Columns[i].DataBinding.ValueType := 'String';

	cxGrid_KDWkList.DataController.SetRecordCount(0);
	for i := 0 to cxGrid_KDWkList.ColumnCount - 1 do
		cxGrid_KDWkList.Columns[i].DataBinding.ValueType := 'String';

	cb_Status.Properties.Items.Clear;
  if GB_365System then
  begin
    stg_WkList_View.Columns[4].Width := 55;
    cb_Status.Properties.Items.Add('오더접속');
    cb_Status.Properties.Items.Add('단순접속');
    cb_Status.Properties.Items.Add('운행');
    cb_Status.Properties.Items.Add('미접속');
  end else
  begin
    stg_WkList_View.Columns[4].Width := 36;
    cb_Status.Properties.Items.Add('접속');
    cb_Status.Properties.Items.Add('퇴근');
    cb_Status.Properties.Items.Add('대기');
    cb_Status.Properties.Items.Add('운행');
    cb_Status.Properties.Items.Add('휴식');
  end;

  lbl2.Caption := '※ 수수료 미차감시 주의사항!!! ' + #13#10 +
                  '1) 수주기사의 수수료를 차감하지 않습니다 ' + #13#10 +
                  '2) 오더를 공유하는 경우에 업체간 정산도 되지 않습니다. ' + #13#10 +
                  '3) 다음날 이오더는 수정할수 없습니다. ' + #13#10 +
                  '  ( 수수료 미차감은 본사내에서만 사용하세요! )';
end;

procedure TFrm_COM01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_COM01.FormDestroy(Sender: TObject);
begin
  Frm_COM01 := Nil
end;

procedure TFrm_COM01.FormShow(Sender: TObject);
begin
	fSetFont(Frm_COM01, GS_FONTNAME);
  fSetSkin(Frm_COM01);
	proc_init;
end;

procedure TFrm_COM01.N11Click(Sender: TObject);
var
	ls_TxLoad, rv_str, ls_rxxml: string;
	cDate, cDate2, sWkHp, sPhon, KeyNum : String;
	xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  slReceive: TStringList;
	iPos, iTag, iRow, iHp, iPhon, ErrCode: integer;
begin
	SetDebugeWrite('TFrm_COM01.N11Click');

	try
		iTag := TMenuItem(Sender).Tag;
		iRow := stg_WkList_View.DataController.FocusedRecordIndex;
		if iRow < 0 then exit;
		iPhon := stg_WkList_View.GetColumnByFieldName('단말기').Index;
		iHp := stg_WkList_View.GetColumnByFieldName('휴대폰').Index;

		sPhon := stg_WkList_View.DataController.Values[iRow, iPhon];
		sPhon := StringReplace(sPhon, '-', '', [rfReplaceAll]);
		iPos := Pos('#', sPhon); 
		if iPos > 0 then
			sPhon := Copy(sPhon, 1, iPos-1); 
		sWkHp := stg_WkList_View.DataController.Values[iRow, iHp];
		sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);
		if (sWkHp = '') and (sPhon = '') then
		begin
			GMessagebox('기사님의 휴대폰이나 단말기를 등록하세요', CDMSE);
			exit;
		end;

		if iTag = 1 then Frm_Main.pCallingCID(sPhon, GT_POSS_KEYNUM) else
		if iTag = 2 then Frm_Main.pCallingCID(sWkHp, GT_POSS_KEYNUM);   
	except
	
  end;
end;

procedure TFrm_COM01.N2Click(Sender: TObject);
begin
	proc_Cell_Clear;
end;

procedure TFrm_COM01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_COM01.proc_Cell_Clear;
var
	i: Integer;
	ln_env: TIniFile;
  Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfCOM01');
		ln_env.EraseSection('ConfCOM01Size');
		stg_WkList_View.DataController.BeginUpdate;
		try
			for i := 0 to Length(COLUUMNLIST) - 1 do
			begin
				Column := stg_WkList_View.GetColumnByFieldName(COLUUMNLIST[i].CName);
				Column.Index := i;
				Column.Width := COLUUMNLIST[i].CWid;
			end;

		finally
			stg_WkList_View.DataController.EndUpdate;
			FreeAndNil(ln_env);
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_COM01.proc_Cell_Read;
var
	i, j, iRow, ciWid : Integer;
	ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;
	WidthList := TStringList.Create;

  try
		ln_env.ReadSectionValues('ConfCOM01', ShowList);
		ln_env.ReadSectionValues('ConfCOM01Size', WidthList);

    if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
		begin
      for I := 0 to ShowList.Count - 1 do
      begin
				Column := stg_WkList_View.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

				for j := 0 to Length(COLUUMNLIST) - 1 do
				begin
					sTmp := ShowList.Values[IntToStr(i)];
					if (COLUUMNLIST[j].CName = sTmp ) then
					begin
						ciWid := COLUUMNLIST[j].CWid;
						Break;
          end;
				end;

        if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
      end;
		end else
		begin
			proc_Cell_Clear;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure TFrm_COM01.proc_Cell_Save;
var
  i: Integer;
  ln_env: TIniFile;
	sTmp: string;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_env := TIniFile.Create(ENVPATHFILE);
		try
			ln_env.EraseSection('ConfCOM01');
			ln_env.EraseSection('ConfCOM01Size');
			for i := 0 to stg_WkList_View.ColumnCount - 1 do
			begin
				sTmp := stg_WkList_View.Columns[i].DataBinding.FieldName;
				ln_env.WriteString('ConfCOM01', IntToStr(i), sTmp);
				ln_env.WriteInteger('ConfCOM01Size', IntToStr(i), stg_WkList_View.Columns[i].Width);
			end;
		finally
			FreeAndNil(ln_env);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_COM01.edt_KMSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_RETURN then btn_KMSearch.Click;	
end;

procedure TFrm_COM01.ed_Wk_SearchKeyPress(Sender: TObject; var Key: Char);
begin
	if Ord(Key) = VK_RETURN then
		whbtn_wk_SearchClick(whbtn_wk_Search);
end;

procedure TFrm_COM01.stg_WkList_ViewCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow, iWkName, iWkSabun, iHp, iArea: Integer;
	sWkName, sWkSabun, sHp, sArea, sMsg: string;
	AView: TcxGridDBTableView;
begin
	Try
		if Sender.Name = 'stg_WkList_View' then 
		begin
			AView := stg_WkList_View;

			iRow     := AView.DataController.FocusedRecordIndex;
			iWkName  := AView.GetColumnByFieldName('기사명').Index;
			iWkSabun := AView.GetColumnByFieldName('사번').Index;
			iHp      := AView.GetColumnByFieldName('휴대폰').Index;
			iArea    := AView.GetColumnByFieldName('위치').Index;
			sWkName  := AView.DataController.Values[iRow, iWkName];
			sWkSabun := AView.DataController.Values[iRow, iWkSabun];
			sHp      := AView.DataController.Values[iRow, iHp];
			sArea    := AView.DataController.Values[iRow, iArea];
		end else
		if Sender.Name = 'cxGrid_KDWkList' then 
		begin
			AView := cxGrid_KDWkList;

			iRow     := AView.DataController.FocusedRecordIndex;
			iWkName  := AView.GetColumnByFieldName('기사명').Index;
			iWkSabun := AView.GetColumnByFieldName('사번').Index;
			iHp      := AView.GetColumnByFieldName('휴대폰').Index;
			iArea    := AView.GetColumnByFieldName('위치').Index;
			sWkName  := AView.DataController.Values[iRow, iWkName];
			sWkSabun := AView.DataController.Values[iRow, iWkSabun];
			sHp      := AView.DataController.Values[iRow, iHp];
			sArea    := AView.DataController.Values[iRow, iArea];
		end;
		cxLabel1.Caption := '기사명 : ' + sWkName + '[' + sWkSabun + '] 휴대폰 : ' +
			sHp + ' 위치 : ' + sArea;

		if self.Tag = 0 then
		begin
			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].lb_WKSabun.Caption := '기사사번 : ' + sWkSabun;
			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].lb_WkSabun.Hint    := sWkSabun;
			
			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].lb_WkName .Caption := '기사이름 : ' + sWkName;
			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].lb_WkName .Hint    := sWkName;
			
			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].lb_WkTel  .Caption := '기사번호 : ' + sHp;
			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].lb_WkTel  .Hint    := sHp;

			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].btn_Acept.Enabled := True;

			Frm_Main.Frm_JON17[GS_JON01_LASTACTIVE].blChkCuSMS := RbCheckBox3.Checked;
		end;
	except		
	
  End;
end;

procedure TFrm_COM01.stg_WkList_ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	if self.Tag = 0 then btn_Close.Click;
end;

procedure TFrm_COM01.stg_WkList_ViewColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_COM01.stg_WkList_ViewColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_COM01.stg_WkList_ViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (stg_WkList_View.DataController.FocusedRecordIndex >= 0) then
		btn_Beacha.SetFocus;
end;

function TFrm_COM01.proc_getCompallocation(sBrNo, sWkNo, sCuseq, sKeynumber : String; Var sMsg : String ) : Boolean;
var XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
	I, iCnt : Integer;
	xdom: MSDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd: TStringList;
begin
	SetDebugeWrite('Frm_COM01.proc_getCompallocation');
	Result := False;
	try
		Param := sWkNo;
		Param := Param + '│' + sBrNo;
		Param := Param + '│' + sCuseq;
		sKeynumber := CallToStr(sKeynumber);
		Param := Param + '│' + sKeynumber;
		if not RequestBase(GetSel05('GET_WK_BLOCK_V2', 'MNG_WK.GET_WK_BLOCK_V2', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('배차제한 여부 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			sMsg := '[error]' + ErrMsg;
			Exit;
    end;
		//<Result Value="L18378│1"/><Result Value="7607251068418│7"/><Result Value="L18378│5"/>
		//차단종류(1:기사차단, 2:지사차단, 3:지사간차단, 4:본사간차단,5:본사기사차단,6:기사주민차단,
		//         7:기사주민본사차단,8:기사콜센터차단,9:콜센터주민차단)
		xdom := ComsDomDocument.Create;
		try
			xdom.loadXML(XmlData);
      if not xdom.loadXML(XmlData) then
			begin
				Screen.Cursor := crDefault;
        Exit;
      end;

      iCnt := GetXmlRecordCount(XmlData);
      if 0 = iCnt then Exit;
      
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
			ls_Rcrd := TStringList.Create;
      try
  			sMsg := '해당기사는 총' + IntToStr(iCnt) + '건의 차단정보가 있습니다';

				for I := 0 to iCnt - 1 do
				begin
					GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
					if i = 0 then sMsg := sMsg + #13#10 + #13#10 
									 else sMsg := sMsg + #13#10;
          if ls_Rcrd.Count > 2 then sMsg := sMsg + '차단일: ' + Trim(ls_Rcrd[2]) + ' ';
					if ls_Rcrd.Count > 3 then
          begin
            if  Trim(ls_Rcrd[1]) <> '99' then
						  sMsg := sMsg + '종료일: ' + Trim(ls_Rcrd[3]) + ' 0시 ';
          end;
          if ls_Rcrd.Count > 1 then
          begin
            if Trim(ls_Rcrd[1]) = '1' then sMsg := sMsg + '기사차단' 				else
            if Trim(ls_Rcrd[1]) = '2' then sMsg := sMsg + '지사차단' 				else
            if Trim(ls_Rcrd[1]) = '3' then sMsg := sMsg + '지사간차단' 			else
            if Trim(ls_Rcrd[1]) = '4' then sMsg := sMsg + '본사간차단' 			else
            if Trim(ls_Rcrd[1]) = '5' then sMsg := sMsg + '본사기사차단' 		else
            if Trim(ls_Rcrd[1]) = '6' then sMsg := sMsg + '기사차단주민' 		else
            if Trim(ls_Rcrd[1]) = '7' then sMsg := sMsg + '본사기사차단주민' else
            if Trim(ls_Rcrd[1]) = '8' then sMsg := sMsg + '기사차단콜센터'   else
            if Trim(ls_Rcrd[1]) = '9' then sMsg := sMsg + '콜센터주민차단'   else
            if Trim(ls_Rcrd[1]) = '99'then sMsg := sMsg + '고객요청차단'
                                      else sMsg := sMsg + ls_Rcrd[1];
          end;
				end;
				if Trim(sMsg) <> '' then Result := True;
				//차단기사 없으면 Result := False;
			finally
				 ls_Rcrd.Free;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

end.
