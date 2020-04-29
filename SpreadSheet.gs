function doPost(e) {
  SpreadsheetApp.getActive().getActiveSheet().appendRow(
    [new Date(),e.postData.contents]
  );
  
  var output = ContentService.createTextOutput("ok");
  output.setMimeType(ContentService.MimeType.TEXT);
  return output;
}