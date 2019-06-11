

void i(String tag, Object msg) {
  print(tag + " --> $msg");
}

void e(String tag, Object msg) {
  print("E/" + tag + " --> " + msg.toString());
}
void error( Object msg) {
  print("E/error  --> " + msg.toString());
}