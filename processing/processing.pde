import processing.serial.*;

Serial myPort;
JSONObject myJson;

void setup() {
  //init serial port
  String portName = Serial.list()[1];
  println(portName);
  myPort = new Serial(this, portName, 9600);
  initSound();
}

void draw() {
  if (myPort.available()>0) {
    String v = myPort.readString();
    println("received:" + v);

    try {
      myJson = JSONObject.parse(v); 

      int r = myJson.getInt("r");
      int g = myJson.getInt("g");
      int b = myJson.getInt("b");

      Frequency curFreq = SoundKey[int(map(r*g*b, 0, 16581375, 0, SoundKey.length-1))];

      osc.setAmplitude(0.3);
      osc.unpatch(audioOut);
      osc.setFrequency(curFreq);
      osc.patch(audioOut);
    }
    catch(Exception e){
      println(e);
    }
  }
}
