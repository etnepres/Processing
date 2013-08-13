//    Copyright (c) 2013 João Fernandes
//    http://www.etnepres.com
//    etnepres@gmail.com
//  https://github.com/etnepres/DataEt.git


//######################
//DataEt -  sample variables
//######################
DataEt data; //set "data" has a "DataEt" Object
String sampleData;
int[] numbers = { 90, 150, 30 };
//######################

void setup() {
  background(0);
  size(320, 240);

  //######################
  //DataEt -  sample data Inicialization
  //######################
  data = new DataEt();
  //Option Loading Previous Sample Data:
  loadDataSample();
  //######################
}

void draw() {
  //Loading and displaying sampleData
  background(0);
  text(sampleData+" "+numbers[0], 50, 50);
}

void mousePressed() {
   loadDataSample();
  if(sampleData.equals( "ON")){
   sampleData = "OFF"; 
   numbers[0] = 70;
   println(sampleData);
  } else {
   sampleData = "ON"; 
    numbers[0] = 120;
  }
  saveDataSample();
}

//######################
//DataEt - sample handling functions
//######################

void saveDataSample() {
  data.beginSave();
  ///Get here all data to save
  data.add("numbers",numbers ); //Array
  data.add("sampleData", sampleData); //String
  data.endSave(sketchPath("dataSample.txt"));
}

void loadDataSample() {
  try {
    data.load(sketchPath("dataSample.txt"));
    //readString readBoolean readFloat readInt !!!!
    sampleData = data.readString("sampleData");
    //readArrayInt readArrayFloat readArrayString readArrayBoolean
    numbers = data.readArrayInt("numbers", numbers.length); //Reading a Array of Ints (Name, lenght)
  }    
  catch(Exception e) {
  }
  //Handle nulls
  if (sampleData == null) {
    sampleData = "No value found";
  }
}

//######################

