[Code]
// Check if any file exists
function AnyFileExists(PathWithMask :string) : Boolean;
var
  FileFound: Boolean;
  FindRec: TFindRec;
begin
  FileFound := false;
  if FindFirst(PathWithMask, FindRec) then begin
    FileFound := true;
    FindClose(FindRec);
  end;
  Result := FileFound;
end;

// Download file
procedure DownloadFile(FileURL : string; FileName : string);
var
  DownloadPage: TDownloadWizardPage;
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), nil);
  DownloadPage.Clear;
  DownloadPage.Add(FileURL, FileName, '');
  DownloadPage.Show;
  try
    try
      DownloadPage.Download;
    except
      SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
    end;
  finally
    DownloadPage.Hide;
  end;
end;

procedure UpdateSpacerNETIni;
var
  IniFile : String;
  IniSection : String;
  IniKey : String;
  CurValue : String;
begin
  IniFile := '{app}\system\spacer_net.ini';
  IniSection := 'OVERRIDES_SP';
  IniKey := 'PLUGINS.IgnoreList';
  if IniKeyExists(IniSection, IniKey, ExpandConstant(IniFile)) then begin
    CurValue := GetIniString(IniSection, IniKey, '', ExpandConstant(IniFile));
    SetIniString(IniSection, IniKey, 'Union_MarvinHelper, ' + CurValue, ExpandConstant(IniFile));
  end else
  begin
    SetIniString(IniSection, IniKey, 'Union_MarvinHelper', ExpandConstant(IniFile));
  end;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID in [wpSelectTasks, wpReady] then
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
end;