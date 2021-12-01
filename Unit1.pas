unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TBarSeries;
    Chart2: TChart;
    Series3: TPieSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DataMass: array [1..5] of integer;
  NdpisMass: array [1..5] of string[10];
  ColorMass: array [1..5] of integer;

implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
Var i: integer;
begin
ColorMass[1]:=clYellow;
ColorMass[2]:=clBlue;
ColorMass[3]:=clRed;
ColorMass[4]:=clYellow;
ColorMass[5]:=clGreen;

NdpisMass[1]:='��� 1';
NdpisMass[2]:='��� 2';
NdpisMass[3]:='��� 3';
NdpisMass[4]:='��� 4';
NdpisMass[5]:='��� 5';

DataMass[1]:=120;
DataMass[2]:=220;
DataMass[3]:=620;
DataMass[4]:=20;
DataMass[5]:=420;
//������� ������
series1.clear;
//��������� �������
Chart1.title.text.clear; //������� ���������
Chart1.title.font.size:=12;  //������ ������
Chart1.title.text.add('1 ������');
//������ � 5 �������
for i := 1 to 5 do
series1.add(DataMass[i],NdpisMass[i],ColorMass[i]);
//2 ������
Chart2.title.text.clear; //������� ���������
Chart2.title.font.size:=12;  //������ ������
Chart2.title.text.add('2 ������');
//������ � 5 �������
for i := 1 to 5 do
series3.add(DataMass[i],NdpisMass[i],ColorMass[i]);

end;

end.
