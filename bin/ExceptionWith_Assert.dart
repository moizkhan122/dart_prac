
void ExceptionCheckWithAssert({required String url}){
      assert(url.startsWith("https"), 'Url must start with https');
      print(url);
}
void main(List<String> args) {
  ExceptionCheckWithAssert(url: "htps/moizkhan");  
}