program insert02;

{$mode objfpc}{$H+}

uses
  heaptrc,
  LWSJSONDataObjects,
  SysUtils,
  FPJSON,
  PQConnection;

resourcestring
  SCouldNotInsert = 'ERROR: Could not insert.';
  SSuccessfullyInserted = '-- Successfully inserted! --';

var
  a: TJSONArray;
  j, j2: TJSONObject;
  q: TLWSJDOQuery;
  conn: TLWSJDOConnection;
begin
  conn := TLWSJDOConnection.Create('db.cfg');
  q := TLWSJDOQuery.Create(conn, 'jdo_demo');
  a := TJSONArray.Create;
  j := TJSONObject.Create;
  j2 := TJSONObject.Create;
  try
    conn.StartTrans;
    try
      q.AddField('ftstr', ftStr);
      q.AddField('ftbool', ftBool);
      q.AddField('ftdate', ftDate);
      q.AddField('ftfloat', ftFloat);
      q.AddField('ftint', ftInt);
      j.Add('ftstr', 'CHIMBICA');
      j.Add('ftbool', True);
      j.Add('ftdate', Now);
      j.Add('ftfloat', 1.5);
      j.Add('ftint', 123);
      a.Add(j);
      j2.Add('ftstr', 'JENOVEVA');
      j2.Add('ftbool', False);
      j2.Add('ftdate', Now + 1);
      j2.Add('ftfloat', 3.14);
      j2.Add('ftint', 456);
      a.Add(j2);
      if q.Insert(a) then
        WriteLn(SSuccessfullyInserted)
      else
        WriteLn(SCouldNotInsert);
      conn.Commit;
    except
      conn.Rollback;
      WriteLn(SCouldNotInsert);
      raise;
    end;
  finally
    a.Free;
    q.Free;
    conn.Free;
  end;
end.
