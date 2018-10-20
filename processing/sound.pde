//Soundfiles
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput    audioOut;

Frequency[] SoundKey = new Frequency[]{
  Frequency.ofPitch("C0"),
  Frequency.ofPitch("D0"),
  Frequency.ofPitch("E0"),
  Frequency.ofPitch("F0"),
  Frequency.ofPitch("G0"),
  Frequency.ofPitch("A0"),
  Frequency.ofPitch("B0"),
  Frequency.ofPitch("C1"),
  Frequency.ofPitch("D1"),
  Frequency.ofPitch("E1"),
  Frequency.ofPitch("F1"),
  Frequency.ofPitch("G1"),
  Frequency.ofPitch("A1"),
  Frequency.ofPitch("B1"),
  Frequency.ofPitch("C2"),
  Frequency.ofPitch("D2"),
  Frequency.ofPitch("E2"),
  Frequency.ofPitch("F2"),
  Frequency.ofPitch("G2"),
  Frequency.ofPitch("A2"),
  Frequency.ofPitch("B2"),
  Frequency.ofPitch("C3"),
  Frequency.ofPitch("D3"),
  Frequency.ofPitch("E3"),
  Frequency.ofPitch("F3"),
  Frequency.ofPitch("G3"),
  Frequency.ofPitch("A3"),
  Frequency.ofPitch("B3"),
  Frequency.ofPitch("C4"),
  Frequency.ofPitch("D4"),
  Frequency.ofPitch("E4"),
  Frequency.ofPitch("F4"),
  Frequency.ofPitch("G4"),
  Frequency.ofPitch("A4"),
  Frequency.ofPitch("B4"),
  Frequency.ofPitch("C5"),
  Frequency.ofPitch("D5"),
  Frequency.ofPitch("E5"),
  Frequency.ofPitch("F5"),
  Frequency.ofPitch("G5"),
  Frequency.ofPitch("A5"),
  Frequency.ofPitch("B5"),
};

//sine osc generator
Oscil          osc;
Frequency      currentFreq;


void initSound() {
  minim = new Minim(this);
  audioOut = minim.getLineOut();
  osc = new Oscil(Frequency.ofPitch("A3"), 0.1f, Waves.SINE);
}
