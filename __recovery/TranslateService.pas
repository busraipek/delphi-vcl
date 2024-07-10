unit TranslateService;

interface

uses
  System.SysUtils, System.Classes, System.Net.HttpClientComponent, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClient.Win, System.JSON, System.NetEncoding;

type
  TTranslateService = class
  public
    function TranslateText(const Text, SourceLang, TargetLang: string): string;
  end;

implementation

function TTranslateService.TranslateText(const Text, SourceLang, TargetLang: string): string;
var
  HTTPClient: TNetHTTPClient;
  Response: IHTTPResponse;
  Url, EncodedText: string;
  JsonResponse: TJSONArray;
  TranslationArray: TJSONArray;
  TranslationItem: TJSONArray;
begin
  Result := '';
  HTTPClient := TNetHTTPClient.Create(nil);
  try
    EncodedText := TNetEncoding.URL.Encode(Text);
    Url := Format('https://translate.googleapis.com/translate_a/single?client=gtx&sl=%s&tl=%s&dt=t&q=%s',
      [SourceLang, TargetLang, EncodedText]);

    Response := HTTPClient.Get(Url);

    if Response.StatusCode = 200 then
    begin
      JsonResponse := TJSONObject.ParseJSONValue(Response.ContentAsString) as TJSONArray;
      try
        if Assigned(JsonResponse) and (JsonResponse.Count > 0) then
        begin
          TranslationArray := JsonResponse.Items[0] as TJSONArray;
          if Assigned(TranslationArray) and (TranslationArray.Count > 0) then
          begin
            TranslationItem := TranslationArray.Items[0] as TJSONArray;
            if Assigned(TranslationItem) and (TranslationItem.Count > 0) then
            begin
              Result := TranslationItem.Items[0].Value;
            end;
          end;
        end;
      finally
        JsonResponse.Free;
      end;
    end;
  finally
    HTTPClient.Free;
  end;
end;

end.

