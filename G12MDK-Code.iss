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

[Code]
procedure DisableVDF(FilePath : string);
begin
  RenameFile(FilePath, FilePath + '.disabled');
end;