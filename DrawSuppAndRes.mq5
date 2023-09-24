//Import the necessary classes to dentify highs and lows, and draw line types.

#include <IncludeHighLowData/HighLowData.mqh>

#include <IncludeLineObjects/LineSystems.mqh>

//HLowHigh defines the datatype to be used to identify highs and lows
//MyHighLowData is the object used to access the data methods.

HLowHigh MyHighLowData;


void OnTick()
  {
//---

   //The Add_Array_Data method is based on the CopyBuffer function
   //This method is used to add price data to the object arrays.
   //This allows us to access current data.
   
   MyHighLowData.Add_Array_Data();
   
   
   //Get the highest prices within ranges in price
   //We identify the most significant highs to identify the most significant levels
   //These levels act as resistance
   
   double highest_100 = MyHighLowData.High_Value(50,100);
   
   double highest_50 = MyHighLowData.High_Value(20,50);
   
   double highest_20 = MyHighLowData.High_Value(5, 20);
   
   
   //Get the lowest prices within ranges n price
   //We identify the most significant lows to identify the most significant levels
   //These levels act as support
   
   double lowest_100 = MyHighLowData.Low_Value(50,100);
   
   double lowest_50 = MyHighLowData.Low_Value(20,50);
   
   double lowest_20 = MyHighLowData.Low_Value(5,20);
   
   
   //Draw the price levels as horizontal lines
   
   //High Levels are drawn in blue
   
   //Low Levels are darwn in red
   
   Create_Horizontal_Line("Highest 100", highest_100, clrBlue);
   
   Create_Horizontal_Line("Highest 50", highest_50, clrBlue);
   
   Create_Horizontal_Line("Highest 20", highest_20, clrBlue);
   
   
   Create_Horizontal_Line("Lowest 100", lowest_100, clrRed);
   
   Create_Horizontal_Line("Lowest 50", lowest_50, clrRed);
   
   Create_Horizontal_Line("Lowest 20", lowest_20, clrRed);
   
  }
//+------------------------------------------------------------------+
