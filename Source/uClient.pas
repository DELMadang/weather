unit uClient;

interface

uses
  System.SysUtils,
  system.Classes,
  System.Generics.Collections,
  System.Net.HttpClient;

type
  TClient = class
  strict private
    class var
      FAPIKey: string;
      FBaseURL: string;
      FHttpClient: THttpClient;

    class constructor Create;
    class destructor Destroy;
  public
    class function Get(const ADate, ATime: string; const AX, AY: string): string; static;

    class property APIKey: string read FAPIKey write FAPIKey;
    class property BaseURL: string read FBaseURL write FBaseUrl;
  end;

implementation

{ TClient }

class constructor TClient.Create;
begin
  FAPIKey := '';
  FBaseURL := 'https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst?' +
    'ServiceKey=%s&pageNo=1&numOfRows=1000&dataType=JSON&base_date=%s&base_time=%s&nx=%s&ny=%s';
  FHttpClient := THttpClient.Create;
end;

class destructor TClient.Destroy;
begin
  FHttpClient.Free;
end;

class function TClient.Get(const ADate, ATime: string; const AX,
  AY: string): string;
var
  LResponse: IHTTPResponse;
  LURL: string;
begin
  LURL := Format(FBaseURL, [FAPIKey, ADate, ATime, AX, AY]);
  LResponse := FHttpClient.Get(LURL);
  if LResponse.StatusCode = 200 then
    Result := LResponse.ContentAsString(TEncoding.UTF8);
end;

end.
