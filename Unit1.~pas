///*


//   #ask for the Show name or get it from a file -> config "the Search Option" Like "arrow%20720p" -> arror 720p
//#get the torrent name of the highst seeder
//#size of it
//#seeders ..
//#download link ..
//#show it to the user
//#Save The Links So the program dosent download them or show them again..
//# OR =======
//# show the latest pages of all showes on one gui only , !? and you can download them with one click .



//Create Latest movies from pairtebay  movies + movies with HD
//Create 4 Edits for Pairte Bay


//Eztv choose The seires and save it ,
//kat.ph same as pairte bay and 5 edits


//


///**//

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,ShellApi, CheckLst, PerlRegEx,pcre,HyperLinksDecorator,RegExpr,
  WinInet,IdHTTP, ExtCtrls,inifiles;

type
  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    Edit2: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    ListBox4: TListBox;
    Edit4: TEdit;
    Button4: TButton;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    Button3: TButton;
    Edit3: TEdit;
    ListBox3: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Edit1: TEdit;
    CheckBox2: TCheckBox;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer1: TTimer;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    Button5: TButton;
    ListBox5: TListBox;
    Button6: TButton;
    procedure ListBox1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ListBox3DblClick(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure ListBox4DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ListBox5DblClick(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox2DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;




var
  Form1: TForm1;
  url,XNAME,seeders,size:array of string;//PairteBay1
  url2,XNAME2,seeders2,size2:array of string;//PairteBay2
  url3,XNAME3,seeders3,size3:array of string;//PairteBay3
  url4,XNAME4,seeders4,size4:array of string;//PairteBay4
  Sname,EzTvA,EzLinks:array of string;
  
  IniFile : TIniFile;


implementation

{$R *.dfm}


function GetURLAsString(aURL: string): string;
var
  lHTTP: TIdHTTP;
  lStream: TStringStream;
begin
  lHTTP := TIdHTTP.Create(nil);
  lStream := TStringStream.Create(Result);
  try
    lHTTP.Request.UserAgent := 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1468.0 Safari/537.36';
    lHTTP.ReadTimeout := 216000;
    lHTTP.AllowCookies := TRUE;
    lHTTP.HandleRedirects := TRUE;
    lHTTP.AuthRetries :=1;

    lHTTP.Get(aURL, lStream);

    lStream.Position := 0;
    Result := lStream.ReadString(lStream.Size);
  finally
    FreeAndNil(lHTTP);
    FreeAndNil(lStream);
  end;
end;


 function GetUrlContent(const Url: string): string;
var
  NetHandle: HINTERNET;
  UrlHandle: HINTERNET;
  Buffer: array[0..1024] of Char;
  BytesRead: dWord;
begin
  Result := '';
  NetHandle := InternetOpen('Delphi 5.x', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

  if Assigned(NetHandle) then 
  begin
    UrlHandle := InternetOpenUrl(NetHandle, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);

    if Assigned(UrlHandle) then
      { UrlHandle valid? Proceed with download }
    begin
      FillChar(Buffer, SizeOf(Buffer), 0);
      repeat
        Result := Result + Buffer;
        FillChar(Buffer, SizeOf(Buffer), 0);
        InternetReadFile(UrlHandle, @Buffer, SizeOf(Buffer), BytesRead);
      until BytesRead = 0;
      InternetCloseHandle(UrlHandle);
    end
    else
      { UrlHandle is not valid. Raise an exception. }
      raise Exception.CreateFmt('Cannot open URL %s', [Url]);

    InternetCloseHandle(NetHandle);
  end
  else
    { NetHandle is not valid. Raise an exception }
    raise Exception.Create('Unable to initialize Wininet');
end;



procedure TForm1.ListBox1DblClick(Sender: TObject);
var i: Integer;
begin

for I:= listbox1.items.count -1 downto 0 do
if listbox1.selected[i] then
begin
 //p:=strToint(listbox1.Items.Strings[i]);
//MessageBox(0,pchar(DecorateURLs(listbox1.Items.Strings[i])),'',0);
ShellAPI.ShellExecute(0, 'Open', pchar(url[i]), PChar(0), nil, SW_SHOWNORMAL);

end;










end;


function AnsiReplaceStr(const AText, AFromText, AToText: string): string; 
begin 
Result := StringReplace(AText, AFromText, AToText, [rfReplaceAll]);
end; 

function AnsiReplaceText(const AText, AFromText, AToText: string): string; 
begin
Result := StringReplace(AText, AFromText, AToText, [rfReplaceAll, rfIgnoreCase]); 
end; 




procedure TForm1.Button1Click(Sender: TObject);

var
//s:ansiString;
 sub,Data:string;
 exp1:string;
 source:string;
 i:integer;
 x:integer;
 //L:integer;//for seeders2 , Leechers
 G:integer;
 Final,subj:string;
 P:integer;
begin
Listbox2.Clear;

    subj := AnsiReplaceStr(edit1.text, ' ', '%20');
    sub:='http://thepiratebay.sx/search/'+subj+'/0/7/0';
    Data:=   GetUrlContent(sub);


        //PAIRTEBAY URL
      exp1:= 'magnet:\?[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}';


       i:=1;
       x:=0;
       SetLength(url2, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(url2, i);
            source:= Match[0];


            url2[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;



           //PAIRTEBAY SIZE2
      exp1:= 'Size [0-9]{0,}.[0-9]{0,}&nbsp;[a-zA-Z]{0,}';


       i:=1;
       x:=0;
       SetLength(size2, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(size2, i);
            //source:= Match[0];
           source := AnsiReplaceStr(Match[0], '&nbsp;', '');

            size2[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;














              //PAIRTEBAY Seeder
      exp1:= '<td align="right">[0-9]{0,}';


       i:=1;
       x:=0;
      SetLength(seeders2, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

           inc(i);
            SetLength(seeders2, i);
            source:= Match[0];
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            Delete(Source, 1,18);

           seeders2[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;

              //PAIRTEBAY NAME
      exp1:= '/torrent/[0-9]{0,256}/[.a-zA-Z_0-9-\[\]\(\) ~:]{0,256}';

       i:=1;
       x:=0;
       SetLength(XNAME2, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(XNAME2, i);
            source:= Match[0];
            Delete(Source, 1, 17);

            XNAME2[x] := pchar(source);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
           DEC(x);






    for g := 0 to x do
    begin
           //messagebox(0,pchar(inttostr(g)),'',0);
           // ListBox1.Items.Add(pchar(source));


             P:=g+g;

           Final:= XNAME2[g]+' | Seeders: '+Seeders2[p] +' | '+  size2[g];// + ' | '+TorrentDetalis.Seeders2[g]+' | '+TorrentDetalis.seeders2[p];
           ListBox2.Items.Add(pchar(Final));

     end;

           // MessageBox(0,pchar(source),'',0);
       // MessageBox(0,pchar(intToStr(AnsiPos('/torrent/',sub))),'TPB',0);
        //  MessageBox(0,pansichar(TorrentDetalis.url2[9]),'',0);
end;




procedure TForm1.Button2Click(Sender: TObject);

var
//s:ansiString;
 sub,Data:string;
 exp1:string;
 source:string;
 i:integer;
 x:integer;
 //L:integer;//for seeders , Leechers
 G:integer;
 Final,subj:string;
 P:integer;
begin
Listbox1.Clear;

    subj := AnsiReplaceStr(edit2.text, ' ', '%20');
    sub:='http://thepiratebay.sx/search/'+subj+'/0/7/0';
    Data:=   GetUrlContent(sub);


        //PAIRTEBAY URL
      exp1:= 'magnet:\?[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}';


       i:=1;
       x:=0;
       SetLength(url, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(url, i);
            source:= Match[0];


            url[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;



           //PAIRTEBAY SIZE
      exp1:= 'Size [0-9]{0,}.[0-9]{0,}&nbsp;[a-zA-Z]{0,}';


       i:=1;
       x:=0;
       SetLength(size, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(size, i);
            //source:= Match[0];
           source := AnsiReplaceStr(Match[0], '&nbsp;', '');

            size[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;














              //PAIRTEBAY Seeder
      exp1:= '<td align="right">[0-9]{0,}';


       i:=1;
       x:=0;
      SetLength(seeders, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

           inc(i);
            SetLength(seeders, i);
            source:= Match[0];
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            Delete(Source, 1,18);

           seeders[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;

              //PAIRTEBAY NAME
      exp1:= '/torrent/[0-9]{0,256}/[.a-zA-Z_0-9-\[\]\(\) ~:]{0,256}';

       i:=1;
       x:=0;
       SetLength(XNAME, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(XNAME, i);
            source:= Match[0];
            Delete(Source, 1, 17);

            XNAME[x] := pchar(source);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
           DEC(x);






    for g := 0 to x do
    begin
           //messagebox(0,pchar(inttostr(g)),'',0);
           // ListBox1.Items.Add(pchar(source));


             P:=g+g;

           Final:= XNAME[g]+' | Seeders: '+Seeders[p] +' | '+  size[g];// + ' | '+TorrentDetalis.Seeders[g]+' | '+TorrentDetalis.seeders[p];
           ListBox1.Items.Add(pchar(Final));

     end;

           // MessageBox(0,pchar(source),'',0);
       // MessageBox(0,pchar(intToStr(AnsiPos('/torrent/',sub))),'TPB',0);
        //  MessageBox(0,pansichar(TorrentDetalis.url[9]),'',0);
end;




procedure TForm1.FormCreate(Sender: TObject);
var
   appINI : TIniFile;
   CheckBoxes1,CheckBoxes2,CheckBoxes3,CheckBoxes4 : string;
   EditBox1,EditBox2,EditBox3,EditBox4:string;

begin


Button5.Click;

appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;

 CheckBoxes1 := appINI.ReadString('CHECKBOX1','CheckBOX1','') ;
 CheckBoxes2 := appINI.ReadString('CHECKBOX2','CheckBOX2','') ;
 CheckBoxes3 := appINI.ReadString('CHECKBOX3','CheckBOX3','') ;
 CheckBoxes4 := appINI.ReadString('CHECKBOX4','CheckBOX4','') ;
 EditBox1 := appINI.ReadString('EDITBOX1','Edit1','') ;
 EditBox2 := appINI.ReadString('EDITBOX2','Edit2','') ;
 EditBox3 := appINI.ReadString('EDITBOX3','Edit3','') ;
 EditBox4 := appINI.ReadString('EDITBOX4','Edit4','') ;


    if CheckBoxes1 = 'TRUE' then
    begin
    sleep(20);
       Checkbox1.Checked := true;

     // ShowMessage('This program was previously used by ' + CheckBoxes );
       Edit2.Text := Editbox2;
       if edit2.Text = '' then
       begin
       exit;

       end;

       button2.Click;

    end;


        if CheckBoxes2 = 'TRUE' then
    begin
    sleep(20);
       Checkbox2.Checked := true;

     // ShowMessage('This program was previously used by ' + CheckBoxes );
       Edit1.Text := Editbox1;
       if edit1.Text = '' then
       begin
       exit;

       end;

       button1.Click;

    end;



    
        if CheckBoxes3 = 'TRUE' then
    begin
    sleep(20);
       Checkbox3.Checked := true;

     // ShowMessage('This program was previously used by ' + CheckBoxes );
       Edit3.Text := Editbox3;
       if edit3.Text = '' then
       begin
       exit;

       end;

       button3.Click;

    end;


            if CheckBoxes4 = 'TRUE' then
    begin
    sleep(20);
       Checkbox4.Checked := true;

     // ShowMessage('This program was previously used by ' + CheckBoxes );
       Edit4.Text := Editbox4;
       if edit4.Text = '' then
       begin
       exit;

       end;

       button4.Click;

    end;


end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
   appINI : TIniFile;
 begin
   appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;


   if    CheckBox1.Checked  then
   begin
      appINI.WriteString('CheckBOX1','CheckBOX1','TRUE') ;
      appINI.WriteString('EDITBOX2','Edit2',edit2.Text) ;


   end;

if    CheckBox2.Checked  then
   begin
      appINI.WriteString('CheckBOX2','CheckBOX2','TRUE') ;
      
      appINI.WriteString('EDITBOX1','Edit1',edit1.Text) ;

   end;


   if    CheckBox3.Checked  then
   begin
      appINI.WriteString('CheckBOX3','CheckBOX3','TRUE') ;
      
      appINI.WriteString('EDITBOX3','Edit3',edit3.Text) ;

   end;


      if    CheckBox4.Checked  then
   begin
      appINI.WriteString('CheckBOX4','CheckBOX4','TRUE') ;
      
      appINI.WriteString('EDITBOX4','Edit4',edit4.Text) ;

   end;





   end;


procedure TForm1.Timer1Timer(Sender: TObject);
var
   appINI : TIniFile;
   CheckBoxes1 : string;

begin
    appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;

 CheckBoxes1 := appINI.ReadString('CHECKBOX1','CheckBOX1','') ;


    if checkbox1.Checked  then
    begin

     if edit2.Text = '' then
       begin
       exit;
       end;
       button2.Click;
    end;




end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
   appINI : TIniFile;
 begin
   appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;


if checkbox1.Checked = false then
begin
appINI.WriteString('CheckBOX1','CheckBOX1','FALSE') ;
end;


end;

procedure TForm1.CheckBox2Click(Sender: TObject);
var
   appINI : TIniFile;
 begin
   appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;


if checkbox2.Checked = false then
begin
appINI.WriteString('CheckBOX2','CheckBOX2','FALSE') ;
end;
 end;



procedure TForm1.Button4Click(Sender: TObject);

var
//s:ansiString;
 sub,Data:string;
 exp1:string;
 source:string;
 i:integer;
 x:integer;
 //L:integer;//for seeders4 , Leechers
 G:integer;
 Final,subj:string;
 P:integer;
begin
Listbox4.Clear;

    subj := AnsiReplaceStr(edit4.text, ' ', '%20');
    sub:='http://thepiratebay.sx/search/'+subj+'/0/7/0';
    Data:=   GetUrlContent(sub);


        //PAIRTEBAY URL
      exp1:= 'magnet:\?[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}';


       i:=1;
       x:=0;
       SetLength(url4, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(url4, i);
            source:= Match[0];


            url4[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;



           //PAIRTEBAY SIZE4
      exp1:= 'Size [0-9]{0,}.[0-9]{0,}&nbsp;[a-zA-Z]{0,}';


       i:=1;
       x:=0;
       SetLength(size4, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(size4, i);
            //source:= Match[0];
           source := AnsiReplaceStr(Match[0], '&nbsp;', '');

            size4[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;














              //PAIRTEBAY Seeder
      exp1:= '<td align="right">[0-9]{0,}';


       i:=1;
       x:=0;
      SetLength(seeders4, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

           inc(i);
            SetLength(seeders4, i);
            source:= Match[0];
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            Delete(Source, 1,18);

           seeders4[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;

              //PAIRTEBAY NAME
      exp1:= '/torrent/[0-9]{0,256}/[.a-zA-Z_0-9-\[\]\(\) ~:]{0,256}';

       i:=1;
       x:=0;
       SetLength(XNAME4, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(XNAME4, i);
            source:= Match[0];
            Delete(Source, 1, 17);

            XNAME4[x] := pchar(source);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
           DEC(x);






    for g := 0 to x do
    begin
           //messagebox(0,pchar(inttostr(g)),'',0);
           // ListBox1.Items.Add(pchar(source));


             P:=g+g;

           Final:= XNAME4[g]+' | Seeders: '+Seeders4[p] +' | '+  size4[g];// + ' | '+TorrentDetalis.Seeders4[g]+' | '+TorrentDetalis.seeders4[p];
           ListBox4.Items.Add(pchar(Final));

     end;

           // MessageBox(0,pchar(source),'',0);
       // MessageBox(0,pchar(intToStr(AnsiPos('/torrent/',sub))),'TPB',0);
        //  MessageBox(0,pansichar(TorrentDetalis.url4[9]),'',0);
end;




procedure TForm1.Button3Click(Sender: TObject);

var
//s:ansiString;
 sub,Data:string;
 exp1:string;
 source:string;
 i:integer;
 x:integer;
 //L:integer;//for seeders3 , Leechers
 G:integer;
 Final,subj:string;
 P:integer;
begin
Listbox3.Clear;

    subj := AnsiReplaceStr(edit3.text, ' ', '%20');
    sub:='http://thepiratebay.sx/search/'+subj+'/0/7/0';
    Data:=   GetUrlContent(sub);


        //PAIRTEBAY URL
      exp1:= 'magnet:\?[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}';


       i:=1;
       x:=0;
       SetLength(url4, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(url3, i);
            source:= Match[0];


            url3[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;


           //PAIRTEBAY SIZE3
      exp1:= 'Size [0-9]{0,}.[0-9]{0,}&nbsp;[a-zA-Z]{0,}';


       i:=1;
       x:=0;
       SetLength(size3, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(size3, i);
            //source:= Match[0];
           source := AnsiReplaceStr(Match[0], '&nbsp;', '');

            size3[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;














              //PAIRTEBAY Seeder
      exp1:= '<td align="right">[0-9]{0,}';


       i:=1;
       x:=0;
      SetLength(seeders3, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

           inc(i);
            SetLength(seeders3, i);
            source:= Match[0];
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            Delete(Source, 1,18);

           seeders3[x] := pchar(source);
            inc(x);

            //MessageBox(0,pchar(source),'',0);
      UNTIL not ExecNext;
    finally Free;
   end;

              //PAIRTEBAY NAME
      exp1:= '/torrent/[0-9]{0,256}/[.a-zA-Z_0-9-\[\]\(\) ~:]{0,256}';

       i:=1;
       x:=0;
       SetLength(XNAME3, i);
   with TRegExpr.Create do try
     Expression := exp1;
     if Exec (Data) then REPEAT

            inc(i);
            SetLength(XNAME3, i);
            source:= Match[0];
            Delete(Source, 1, 17);

            XNAME3[x] := pchar(source);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
           DEC(x);






    for g := 0 to x do
    begin
           //messagebox(0,pchar(inttostr(g)),'',0);
           // ListBox1.Items.Add(pchar(source));


             P:=g+g;

           Final:= XNAME3[g]+' | Seeders: '+Seeders3[p] +' | '+  size3[g];// + ' | '+TorrentDetalis.Seeders3[g]+' | '+TorrentDetalis.seeders3[p];
           ListBox3.Items.Add(pchar(Final));

     end;

           // MessageBox(0,pchar(source),'',0);
       // MessageBox(0,pchar(intToStr(AnsiPos('/torrent/',sub))),'TPB',0);
        //  MessageBox(0,pansichar(TorrentDetalis.url3[9]),'',0);
end;


procedure TForm1.ListBox3DblClick(Sender: TObject);
var i: Integer;
begin

for I:= listbox3.items.count -1 downto 0 do
if listbox3.selected[i] then
begin
 //p:=strToint(listbox1.Items.Strings[i]);
//MessageBox(0,pchar(DecorateURLs(listbox1.Items.Strings[i])),'',0);
ShellAPI.ShellExecute(0, 'Open', pchar(url3[i]), PChar(0), nil, SW_SHOWNORMAL);

end;
 end;





procedure TForm1.Timer2Timer(Sender: TObject);
var
   appINI : TIniFile;
   CheckBoxes2 : string;

begin
    appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;

 CheckBoxes2 := appINI.ReadString('CHECKBOX2','CheckBOX2','') ;


    if checkbox2.Checked  then
    begin
    
     if edit1.Text = '' then
       begin
       exit;
       end;
       button1.Click;
    end;


end;






procedure TForm1.CheckBox3Click(Sender: TObject);
var
   appINI : TIniFile;
 begin
   appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;


if checkbox3.Checked = false then
begin
appINI.WriteString('CheckBOX3','CheckBOX3','FALSE') ;
end;
 end;



procedure TForm1.Timer3Timer(Sender: TObject);
var
   appINI : TIniFile;
   CheckBoxes1 : string;

begin
    appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;

 CheckBoxes1 := appINI.ReadString('CHECKBOX1','CheckBOX1','') ;


    if checkbox1.Checked  then
    begin

     if edit2.Text = '' then
       begin
       exit;
       end;
       button2.Click;
    end;



end;

procedure TForm1.CheckBox4Click(Sender: TObject);
var
   appINI : TIniFile;
 begin
   appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;


if checkbox4.Checked = false then
begin
appINI.WriteString('CheckBOX4','CheckBOX4','FALSE') ;
end;
 end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
   appINI : TIniFile;
   CheckBoxes4 : string;
   
begin
    appINI := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini') ;

 CheckBoxes4 := appINI.ReadString('CHECKBOX4','CheckBOX4','') ;


    if checkbox4.Checked  then
    begin
    
     if edit4.Text = '' then
       begin
       exit;
       end;
       button4.Click;
    end;




end;


procedure TForm1.ListBox4DblClick(Sender: TObject);
var i: Integer;
begin

for I:= listbox4.items.count -1 downto 0 do
if listbox4.selected[i] then
begin
 //p:=strToint(listbox1.Items.Strings[i]);
//MessageBox(0,pchar(DecorateURLs(listbox1.Items.Strings[i])),'',0);
ShellAPI.ShellExecute(0, 'Open', pchar(url4[i]), PChar(0), nil, SW_SHOWNORMAL);

end;
end;





procedure TForm1.Button5Click(Sender: TObject);
var
sub,data:string;
EXP,source:string;
i,x,g:integer;

begin

    sub:='http://eztv.it/showlist/';
    Data:=   GetUrlContent(sub);
    EXP := 'shows/[0-9]{0,}/[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}';
          // MessageBox(0,pchar(Data),'',0);

       i:=1;
       x:=0;
       SetLength(Sname, i);

       
   with TRegExpr.Create do try
     Expression := EXP;
     if Exec (Data) then REPEAT

             inc(i);
            SetLength(Sname, i);
            source:= Match[0];

            Delete(Source, 1,5);
            source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            Sname[x] := pchar(source);

           // MessageBox(0,pchar(source),'',0);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
        dec(x);
  for g := 0 to x do
    begin

           //ComboBox1.AddItem(Sname[g]);
           ComboBox1.AddItem(Sname[g],nil);


     end;


end;

procedure TForm1.Button6Click(Sender: TObject);
var
sub,data,EXP2,EXP3,Source:string;
i,x,g:integer;
begin

//MessageBox(0,pchar(ComboBox1.Text),'',0);
sub:='http://eztv.it/'+ComboBox1.text;
Data:=   GetUrlContent(sub);
EXP2 := 'title="[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}\)';
EXP3 := 'magnet:\?[.a-zA-Z_0-9-\[\]\(\) ~:=&+%//]{0,400}';


  
       i:=1;
       x:=0;
       SetLength(EztvA, i);


      with TRegExpr.Create do try
     Expression := EXP2;
     if Exec (Data) then REPEAT

             inc(i);
            SetLength(EztvA, i);
            source:= Match[0];

            Delete(Source, 1,7);
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            EzTvA[x] := pchar(source);

           // MessageBox(0,pchar(source),'',0);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
       
       i:=1;
       x:=0;
       SetLength(EzLinks, i);


      with TRegExpr.Create do try
     Expression := EXP3;
     if Exec (Data) then REPEAT

             inc(i);
            SetLength(EzLinks, i);
            source:= Match[0];

            //Delete(Source, 1,7);
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            EzLinks[x] := pchar(source);

            //MessageBox(0,pchar(source),'',0);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
       

        dec(x);
  for g := 0 to x do
    begin

           //ComboBox1.AddItem(Sname[g]);
           //ComboBox1.AddItem(Sname[g],nil);
           Listbox5.items.Add(pchar(EzTvA[g]));



     end;

end;

procedure TForm1.ListBox5DblClick(Sender: TObject);
  var i: Integer;
begin

for I:= listbox5.items.count -1 downto 0 do
if listbox5.selected[i] then
begin
 //p:=strToint(listbox1.Items.Strings[i]);
//MessageBox(0,pchar(DecorateURLs(listbox1.Items.Strings[i])),'',0);
ShellAPI.ShellExecute(0, 'Open', pchar(EzLinks[i]), PChar(0), nil, SW_SHOWNORMAL);

end;
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
var
sub,data,EXP2,EXP3,Source:string;
i,x,g:integer;
begin

//MessageBox(0,pchar(ComboBox1.Text),'',0);
sub:='http://eztv.it/'+ComboBox1.text;
Data:=   GetUrlContent(sub);
EXP2 := 'title="[.a-zA-Z_0-9-\[\]\(\) ~:=&+%]{0,400}\)';
EXP3 := 'magnet:\?[.a-zA-Z_0-9-\[\]\(\) ~:=&+%//]{0,400}';


  
       i:=1;
       x:=0;
       SetLength(EztvA, i);


      with TRegExpr.Create do try
     Expression := EXP2;
     if Exec (Data) then REPEAT

             inc(i);
            SetLength(EztvA, i);
            source:= Match[0];

            Delete(Source, 1,7);
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            EzTvA[x] := pchar(source);

           // MessageBox(0,pchar(source),'',0);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
       
       i:=1;
       x:=0;
       SetLength(EzLinks, i);


      with TRegExpr.Create do try
     Expression := EXP3;
     if Exec (Data) then REPEAT

             inc(i);
            SetLength(EzLinks, i);
            source:= Match[0];

            //Delete(Source, 1,7);
            //source := AnsiReplaceStr(Match[0], '&nbsp;', '');
            EzLinks[x] := pchar(source);

            //MessageBox(0,pchar(source),'',0);
            inc(x);


      UNTIL not ExecNext;
    finally Free;
   end;
       

        dec(x);
  for g := 0 to x do
    begin

           //ComboBox1.AddItem(Sname[g]);
           //ComboBox1.AddItem(Sname[g],nil);
           Listbox5.items.Add(pchar(EzTvA[g]));



     end;

end;

procedure TForm1.Button7Click(Sender: TObject);


begin
Listbox4.Clear;


end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then
    button2.Click;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN)  then
    button1.Click;
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN)  then
    button3.Click;
end;

procedure TForm1.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN)  then
    button4.Click;
end;

procedure TForm1.ListBox2DblClick(Sender: TObject);

var i: Integer;
begin

for I:= listbox2.items.count -1 downto 0 do
if listbox2.selected[i] then
begin
 //p:=strToint(listbox1.Items.Strings[i]);
//MessageBox(0,pchar(DecorateURLs(listbox1.Items.Strings[i])),'',0);
ShellAPI.ShellExecute(0, 'Open', pchar(url2[i]), PChar(0), nil, SW_SHOWNORMAL);


end;
end;


end.

