unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Menus;

type
  TForm4 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button2: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Edit1: TEdit;
    StringGrid3: TStringGrid;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  i,j : integer;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var i,j,k,Sum:integer;
begin
StringGrid3.Visible := true;
 if radioButton2.Checked = true  then
   begin
    if edit1.text<>'' then
       begin
        for i:= 0 to stringgrid3.RowCount-1 do
        for j:= 0 to stringgrid3.ColCount-1 do
        stringgrid3.Cells[j,i]:=inttostr(strtoint(stringgrid1.Cells[j,i])*strtoint(edit1.Text));
       end;
   end;
 if radioButton1.Checked = true  then
    begin
     if  (StringGrid1.ColCount=StringGrid2.RowCount) then
      for i:=0 to StringGrid3.RowCount-1 do
      for j:=0 to StringGrid3.ColCount-1 do
       begin
        Sum:=0;
        for k:=0 to StringGrid1.ColCount-1 do
        Sum:=Sum+StrToInt(StringGrid1.Cells[k,i])*StrToInt(StringGrid2.Cells[j,k]);
        StringGrid3.Cells[j,i]:=IntToStr(Sum);
        end
     else
     ShowMessage(' оличество столбцов 1-ой матрицы не равно количеству строк 2-ой матрицы');
    end;
end;



procedure TForm4.Button2Click(Sender: TObject);
begin
    begin
     for i:= 0 to stringgrid3.RowCount-1 do  // обнул€ем все матрицы
     for j:= 0 to stringgrid3.ColCount-1 do
     Stringgrid3.Cells[j,i]:=' ';
    end;
     begin
     for i:= 0 to stringgrid2.RowCount-1 do
     for j:= 0 to stringgrid3.ColCount-1 do   // обнул€ем все матрицы
     Stringgrid2.Cells[j,i]:=' ';
    end;
    begin
    for i:= 0 to stringgrid1.RowCount-1 do   // обнул€ем все матрицы
    for j:= 0 to stringgrid1.ColCount-1 do
    Stringgrid1.Cells[j,i]:=' ';
    end;
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
    begin
      StringGrid1.Height := 54 ;
      StringGrid1.RowCount := 2;
      StringGrid3.Height := 54 ;
      StringGrid3.RowCount := 2;
    end;
    1:
    begin
      StringGrid1.Height := 79 ;
      StringGrid1.RowCount := 3;
      StringGrid3.Height := 79 ;
      StringGrid3.RowCount := 3;
    end;
    2:
    begin
      StringGrid1.Height := 104 ;
      StringGrid1.RowCount := 4 ;
      StringGrid3.Height := 104 ;
      StringGrid3.RowCount := 4 ;
    end;
    3:
    begin
      StringGrid1.Height := 129 ;
      StringGrid1.RowCount := 5 ;
      StringGrid3.Height := 129 ;
      StringGrid3.RowCount := 5 ;
    end;
    4:
    begin
      StringGrid1.Height := 154 ;
      StringGrid1.RowCount := 6 ;
      StringGrid3.Height := 154 ;
      StringGrid3.RowCount := 6 ;
    end;
    end;
end;

procedure TForm4.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0:
    begin
    StringGrid1.Width := 54 ;
    StringGrid1.ColCount := 2 ;
    StringGrid3.Width := 54 ;
    StringGrid3.ColCount := 2;
    end;
    1:
    begin
    StringGrid1.Width := 79;
    StringGrid1.ColCount := 3 ;
    StringGrid3.Width:= 79 ;
    StringGrid3.ColCount := 3;
    end;
    2:
    begin
    StringGrid1.Width := 104;
    StringGrid1.ColCount := 4 ;
    StringGrid3.Width := 104 ;
    StringGrid3.ColCount := 4 ;
    end;
    3:
    begin
    StringGrid1.Width := 129 ;
    StringGrid1.ColCount := 5 ;
    StringGrid3.Width := 129 ;
    StringGrid3.ColCount := 5 ;
    end;
    4 :
    begin
    StringGrid1.Width := 154;
    StringGrid1.ColCount := 6;
    StringGrid3.Width := 154 ;
    StringGrid3.ColCount := 6 ;
    end;
  end;

end;



procedure TForm4.ComboBox3Change(Sender: TObject);
begin
  case ComboBox3.ItemIndex of
    0:
    begin
      StringGrid2.Height := 54 ;
      StringGrid2.RowCount := 2;
    end;
    1:
    begin
      StringGrid2.Height := 79 ;
      StringGrid2.RowCount := 3;
    end;
    2:
    begin
      StringGrid2.Height := 104 ;
      StringGrid2.RowCount := 4 ;
    end;
    3:
    begin
      StringGrid2.Height := 129 ;
      StringGrid2.RowCount := 5 ;
    end;
    4:
    begin
      StringGrid2.Height := 154 ;
      StringGrid2.RowCount := 6 ;
    end;
  end;
end;

procedure TForm4.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    0:
    begin
    StringGrid2.Width := 54 ;
    StringGrid2.ColCount := 2 ;
    end;
    1:
    begin
    StringGrid2.Width := 79;
    StringGrid2.ColCount := 3 ;
    end;
    2:
    begin
    StringGrid2.Width := 104;
    StringGrid2.ColCount := 4 ;
    end;
    3:
    begin
    StringGrid2.Width := 129 ;
    StringGrid2.ColCount := 5 ;
    end;
    4 :
    begin
    StringGrid2.Width := 154;
    StringGrid2.ColCount := 6;
    end;
  end;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
  if RadioButton2.Checked = true then
     begin
      if edit1.text<>'' then
        begin
          Button1.Enabled := true ;
        end
      else
     Button1.Enabled := false ;
     end;
end;



procedure TForm4.FormCreate(Sender: TObject);
begin
if RadioButton1.Checked = true then
Button1.Enabled := true ;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
Button2.Enabled := true;
StringGrid1.Options := StringGrid1.Options-[goEditing];
  for i := 0 to StringGrid1.RowCount - 1   do
    for j := 0 to StringGrid1.ColCount -1   do
      begin
        StringGrid1.Cells[j,i] := IntToStr(random(100));
      end;
StringGrid2.Options := StringGrid2.Options-[goEditing];
  for i := 0 to StringGrid2.RowCount -1   do
    for j := 0 to StringGrid2.ColCount -1  do
      begin
        StringGrid2.Cells[j,i] := IntToStr(random(100));
      end;
end;

procedure TForm4.N2Click(Sender: TObject);
begin
Button2.Enabled := true;
StringGrid1.Options := StringGrid1.Options+[goEditing];
StringGrid2.Options := StringGrid2.Options+[goEditing];
for i := 0 to StringGrid1.RowCount do
  for j := 0 to StringGrid1.ColCount do
    begin
      StringGrid1.Cells[j,i] := '';
      StringGrid2.Cells[j,i] := '';
    end;
end;

procedure TForm4.RadioButton1Click(Sender: TObject);
begin
N1.Enabled := true ;
N2.Enabled := true ;
StringGrid2.Visible := true;
Edit1.Visible := false;
ComboBox3.Visible := true ;
ComboBox4.Visible := true ;
end;

procedure TForm4.RadioButton2Click(Sender: TObject);
begin
ComboBox3.Visible := false ;
ComboBox4.Visible := false ;
N1.Enabled := true ;
N2.Enabled := true ;
StringGrid2.Visible := false;
Edit1.Visible := true;
end;

procedure TForm4.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  '0'..'9',#8:;
  else key := #0;
  end;
end;

procedure TForm4.StringGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  '0'..'9',#8:;
  else key := #0;
  end;
end;

procedure TForm4.StringGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  '0'..'9',#8:;
  else key := #0;
  end;
end;

end.
