unit Menus.Controller.Conexoes.interfaces;

interface

uses Menus.Model.Conexoes.Interfaces;

type
  iControllerFactoryConexao = interface
    ['{1C4CD496-AD6F-4661-B6B7-55F3D35132FA}']
    function Conexao: iModelConexao;
  end;

 iControllerFactoryDataSet = interface
   ['{7E86230D-837B-4F8A-A460-6741A24DF236}']
   function DataSet(Conexao: iModelConexao): iModelDataSet;
 end;

implementation



end.
