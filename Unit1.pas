unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    num7: TButton;
    num4: TButton;
    num1: TButton;
    num8: TButton;
    num5: TButton;
    num2: TButton;
    num9: TButton;
    num6: TButton;
    num3: TButton;
    num0: TButton;
    dian: TButton;
    jia: TButton;
    deng: TButton;
    clear: TButton;
    chu: TButton;
    cheng: TButton;
    jian: TButton;
    show_result: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure init();
    procedure FormShow(Sender: TObject);
    procedure numClick(Sender: TObject);
    function cal(caozuoshu1:String;caozuoshu2:String;caozuofu:Char):String;
    procedure num0Click(Sender: TObject);
    procedure num1Click(Sender: TObject);
    procedure num2Click(Sender: TObject);
    procedure num3Click(Sender: TObject);
    procedure num4Click(Sender: TObject);
    procedure num5Click(Sender: TObject);
    procedure num6Click(Sender: TObject);
    procedure num7Click(Sender: TObject);
    procedure num8Click(Sender: TObject);
    procedure num9Click(Sender: TObject);
    procedure dianClick(Sender: TObject);
    procedure caozuofuClick(Sender: TObject);
    procedure jianClick(Sender: TObject);
    procedure jiaClick(Sender: TObject);
    procedure chengClick(Sender: TObject);
    procedure chuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dengClick(Sender: TObject);
    procedure clearClick(Sender: TObject);
//    procedure clearClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    last_push: integer;
    caozuoshu1: String;
    caozuoshu2: String;
    caozuofu: char;
    result: String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetWindowLong(Edit1.Handle, GWL_STYLE, GetWindowLong(Edit1.Handle, GWL_STYLE) or ES_RIGHT);
end;
procedure TForm1.init();
begin
  caozuoshu1:='';
  caozuoshu2:='';
  caozuofu:=#0;
  result:='';
  last_push:=-1;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  init();
end;

// **********************************************************************
//                               hello world
// **********************************************************************

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('欢迎使用 Delphi 7');
  Label1.Caption:='hello world';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
  var
    num,I:Integer;
    str:String;
begin
  if Key = #13 then
  begin
    Label2.Caption:='';
      str:=Edit1.Text;
      try
        for I:=1 to length(str) do
        begin
            num:=StrToInt(MidStr(str,I,1));
            Label2.Caption:=Label2.Caption+IntTostr(num)+#10;
        end;
      except
        ShowMessage('输入的不是数字');
      end;
  end;
end;

// **********************************************************************
//                           calculator
// **********************************************************************

procedure TForm1.numClick(Sender: TObject);
// 数字按钮执行函数
var
  num:string;
begin
  num:=TButton(Sender).Caption;
  if (last_push <= 10) and (last_push > 0) then
    begin
    if show_result.Lines.Strings[1] <> '0' then
      show_result.Lines.Strings[1]:=show_result.Lines.Strings[1]+num
    else
      show_result.Lines.Strings[1]:=num;
    end
  else
    show_result.Lines.Strings[1]:=num;
  last_push:=StrToInt(TButton(Sender).Caption);
end;

procedure TForm1.num0Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num1Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num2Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num3Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num4Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num5Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num6Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num7Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num8Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.num9Click(Sender: TObject);
begin
  numClick(Sender);
end;

procedure TForm1.dianClick(Sender: TObject);
begin
  case last_push of
  0..9:show_result.Lines.Strings[1]:=show_result.Lines.Strings[1]+'.';
  else
  show_result.Lines.Strings[1]:='0.';
  end;
  last_push := 10;
end;

function TForm1.cal(caozuoshu1:String;caozuoshu2:String;caozuofu:Char):String;
// 计算函数
var
tmp_length:integer;
begin
  if caozuoshu1='' then
      caozuoshu1:='0';
  if caozuoshu2='' then
      caozuoshu2:='0';
  tmp_length:=Length(caozuoshu1);
  if rightstr(caozuoshu1,1)='.' then
    caozuoshu1:=leftstr(caozuoshu1,tmp_length-1);
  tmp_length:=Length(caozuoshu2);
  if rightstr(caozuoshu2,1)='.' then
    caozuoshu1:=leftstr(caozuoshu2,tmp_length-1);
  case caozuofu of
  '+':cal:=FloatToStr(StrToFloat(caozuoshu1)+StrToFloat(caozuoshu2));
  '-':cal:=FloatToStr(StrToFloat(caozuoshu1)-StrToFloat(caozuoshu2));
  '*':cal:=FloatToStr(StrToFloat(caozuoshu1)*StrToFloat(caozuoshu2));
  '/':if caozuoshu2='0' then
        begin
        init();
        show_result.Lines.Strings[0]:='';
        cal:='ERROR';
        end
      else
        cal:=FloatToStr(StrToFloat(caozuoshu1)/StrToFloat(caozuoshu2));
  end;
end;

procedure TForm1.caozuofuClick(Sender: TObject);
// 操作符按钮执行函数
var
  tmp_length:integer;
begin
  caozuoshu2:=show_result.Lines.Strings[1];
  if show_result.Lines.Strings[0]='' then
    begin
    show_result.Lines.Strings[0]:=show_result.Lines.Strings[1]+TButton(Sender).Caption;
    caozuoshu1:=show_result.Lines.Strings[1];
    end
  else
    if last_push >= 10 then
      begin
      tmp_length:=Length(show_result.Lines.Strings[0]);
      show_result.Lines.Strings[0]:=LeftStr(show_result.Lines.Strings[0],tmp_length-1)+TButton(Sender).Caption;
      end
    else
      begin
      show_result.Lines.Strings[0]:=show_result.Lines.Strings[0]+show_result.Lines.Strings[1]+TButton(Sender).Caption;
      if caozuoshu1='ERROR' then
        caozuoshu1:='0';
      show_result.Lines.Strings[1]:=cal(caozuoshu1,caozuoshu2,caozuofu);
      caozuoshu1:=show_result.Lines.Strings[1];
      end;
  caozuofu:=TButton(Sender).Caption[1];
  OutputDebugString(PChar(caozuoshu1));
  OutputDebugString(PChar(caozuoshu2));
end;

procedure TForm1.jiaClick(Sender: TObject);
begin
  caozuofuClick(Sender);
  last_push:=11;
end;

procedure TForm1.jianClick(Sender: TObject);
begin
  caozuofuClick(Sender);
  last_push:=12;
end;

procedure TForm1.chengClick(Sender: TObject);
begin
  caozuofuClick(Sender);
  last_push:=13;
end;

procedure TForm1.chuClick(Sender: TObject);
begin
  caozuofuClick(Sender);
  last_push:=14;
end;

procedure TForm1.clearClick(Sender: TObject);
begin
  init();
  show_result.Lines.Strings[0]:='';
  show_result.Lines.Strings[1]:='0';
end;

procedure TForm1.dengClick(Sender: TObject);
begin
caozuoshu2:=show_result.Lines.Strings[1];
show_result.Lines.Strings[1]:=cal(caozuoshu1,caozuoshu2,caozuofu);
caozuoshu1:=show_result.Lines.Strings[1];
show_result.Lines.Strings[0]:='';
last_push:=-2;
end;
end.
