//Copyright (c) 2013 João Fernandes
//    http://www.etnepres.com
//    etnepres@gmail.com
//  https://github.com/etnepres/Processing

///////////////////////////
// DATA CLASS

class DataEt {
  StringDict datalist = new StringDict();
  String stringSave;
  String filename, list[], data[];

  //begin data saving

  void beginSave() {
    stringSave = "";
    list = new String[0];
    datalist = new StringDict();
  }

  void add(String name, String s) {
    stringSave =  stringSave +"| |"+name+"|§|"+s;
  }


  void add(String name, float val) {
    stringSave =  stringSave +"| |"+name+"|§|"+val;
  }

  void add(String name, int val) {
    stringSave =  stringSave +"| |"+name+"|§|"+val;
  }

  void add(String name, boolean val) {
    stringSave =  stringSave +"| |"+name+"|§|"+val;
  }

  void add(String name, int val[]) {
    for (int i=0; i<val.length; i++) {
      stringSave =  stringSave +"| |"+name+"["+i+"]"+"|§|"+val[i];
    }
  }
  void add(String name, float val[]) {
    for (int i=0; i<val.length; i++) {
      stringSave =  stringSave +"| |"+name+"["+i+"]"+"|§|"+val[i];
    }
  }  
  void add(String name, boolean val[]) {
    for (int i=0; i<val.length; i++) {
      stringSave =  stringSave +"| |"+name+"["+i+"]"+"|§|"+val[i];
    }
  }  
  void add(String name, String val[]) {
    for (int i=0; i<val.length; i++) {
      stringSave =  stringSave +"| |"+name+"["+i+"]"+"|§|"+val[i];
    }
  }  

  void endSave(String _filename) {
    filename=_filename;

    saveStrings(filename, split(stringSave, "| |"));
    println("Saved data to '"+filename);
  }

  void load(String _filename) {
    filename=_filename;


    data=loadStrings(filename);
    println("Loaded data from '"+filename);
    for (int i=1; i<data.length; i++) {
      datalist.set(split(data[i], "|§|")[0], split(data[i], "|§|")[1]);
    }
  }

  float readFloat(String s) {
    return float(datalist.get(s));
  }

  int readInt(String s) {
    return int(datalist.get(s));
  }

  boolean readBoolean(String s) {
    return boolean(datalist.get(s));
  }

  String readString(String s) {
    return datalist.get(s);
  }
  float[] readArrayFloat(String s) {
    int size = 1;
    while (datalist.get (s+"["+size+"]") != null) {
      size++;
    }
    float[] r = new float[size];
    for (int i=0; i<size; i++) {
      r[i] = float(datalist.get(s+"["+i+"]"));
    }
    return r;
  }

  int[]  readArrayInt(String s) {
    int size = 1;
    while (datalist.get (s+"["+size+"]") != null) {
      size++;
    }
    int[] r = new int[size];

    for (int i=0; i<size; i++) {
      r[i] = int(datalist.get(s+"["+i+"]"));
    }
    return r;
  }

  boolean[] readArrayBoolean(String s) {
    int size = 1;
    while (datalist.get (s+"["+size+"]") != null) {
      size++;
    }
    boolean[] r = new boolean[size];
    for (int i=0; i<size; i++) {
      r[i] =boolean(datalist.get(s+"["+i+"]"));
    }
    return r;
  }

  String[] readArrayString(String s) {
    int size = 1;
    while (datalist.get (s+"["+size+"]") != null) {
      size++;
    }
    String[] r = new String[size];

    for (int i=0; i<size; i++) {
      r[i] = datalist.get(s+"["+i+"]");
    }
    return r;
  }
}

