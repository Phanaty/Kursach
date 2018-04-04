unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Menus;

type
  TForm3 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  i , j : integer;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);                 //транспонирование
begin
        StringGrid2.RowCount := strtoint(ComboBox2.Text);
        stringGrid2.ColCount := strtoint(ComboBox1.Text);
        StringGrid2.Visible := true;
        StringGrid2.Width := StringGrid1.Height;
        StringGrid2.Height := StringGrid1.Width;
        for i := 0 to StringGrid1.RowCount do
        begin
        for j := 0 to StringGrid1.ColCount-1 do
        StringGrid2.Cells[i,j] := StringGrid1.Cells[j,i];
        end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
    begin
     for i:= 0 to stringgrid1.RowCount-1 do  // обнуляем все матрицы
     for j:= 0 to stringgrid1.ColCount-1 do
     Stringgrid1.Cells[j,i]:=' ';
    end;
        begin
     for i:= 0 to stringgrid2.RowCount-1 do  // обнуляем все матрицы
     for j:= 0 to stringgrid2.ColCount-1 do
     Stringgrid2.Cells[j,i]:=' ';
    end;
    Button1.Enabled := false ;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
begin
    case ComboBox1.ItemIndex of
    0:
    begin
      StringGrid1.Height := 66 ;
      StringGrid1.RowCount := 2;
      StringGrid2.Height := 66 ;
      StringGrid2.RowCount := 2;
    end;
    1:
    begin
      StringGrid1.Height := 97 ;
      StringGrid1.RowCount := 3;
      StringGrid2.Height := 97 ;
      StringGrid2.RowCount := 3;
    end;
    2:
    begin
      StringGrid1.Height := 129 ;
      StringGrid1.RowCount := 4 ;
      StringGrid2.Height := 129 ;
      StringGrid2.RowCount := 4 ;
    end;
    3:
    begin
      StringGrid1.Height := 160 ;
      StringGrid1.RowCount := 5 ;
      StringGrid2.Height := 160 ;
      StringGrid2.RowCount := 5 ;
    end;
    4:
    begin
      StringGrid1.Height := 191 ;
      StringGrid1.RowCount := 6 ;
      StringGrid2.Height := 191 ;
      StringGrid2.RowCount := 6 ;
    end;
end;
end;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
   case ComboBox2.ItemIndex of
   0:
   begin
   StringGrid1.Width := 66 ;
   StringGrid1.ColCount := 2 ;
   StringGrid2.Width := 66 ;
   StringGrid2.ColCount := 2 ;
   end;
   1:
   begin
   StringGrid1.Width := 97;
   StringGrid1.ColCount := 3 ;
   StringGrid2.Width := 97;
   StringGrid2.ColCount := 3 ;
   end;
   2:
   begin
   StringGrid1.Width := 127;
   StringGrid1.ColCount := 4 ;
   StringGrid2.Width := 127;
   StringGrid2.ColCount := 4 ;
   end;
   3:
   begin
   StringGrid1.Width := 160 ;
   StringGrid1.ColCount := 5 ;
   StringGrid2.Width := 160 ;
   StringGrid2.ColCount := 5 ;
   end;
   4 :
   begin
   StringGrid1.Width := 190;
   StringGrid1.ColCount := 6;
   StringGrid2.Width := 190;
   StringGrid2.ColCount := 6;
   end;
end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ComboBox1.ItemIndex := 0;
   ComboBox2.ItemIndex := 0;
   StringGrid2.Visible := false;
   Button1.Enabled := false ;
   Button2.Enabled := false ;
   StringGrid1.RowCount :=2;
   StringGrid1.ColCount := 2;
   StringGrid1.Width := 67;
   StringGrid1.Height := 67;
   begin
    for i:= 0 to stringgrid2.RowCount-1 do   //обнуляем матрицы
    for j:= 0 to stringgrid2.ColCount-1 do
    Stringgrid2.Cells[j,i]:=' ';
   end;
   begin
    for i:= 0 to stringgrid1.RowCount-1 do
    for j:= 0 to stringgrid1.ColCount-1 do
    Stringgrid1.Cells[j,i]:=' ';
   end;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
Button2.Enabled := true ;
button1.Enabled := true;
  StringGrid1.Options := StringGrid1.Options-[goEditing];
  for i := 0 to StringGrid1.RowCount - 1  do
    for j := 0 to StringGrid1.ColCount - 1  do
      begin
        StringGrid1.Cells[j,i] := IntToStr(random(100));
      end;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
Button2.Enabled := true ;
Button1.Enabled := true ;
StringGrid1.Options := StringGrid1.Options+[goEditing];
for i := 0 to StringGrid1.RowCount do
  for j := 0 to StringGrid1.ColCount do
    begin
      StringGrid1.Cells[j,i] := '';
      StringGrid2.Cells[j,i] := '';
    end;
end;

end.
