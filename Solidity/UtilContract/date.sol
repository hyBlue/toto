pragma solidity ^0.4.0;


import "browser/DateTime.sol";


contract Util {

uint[] result;
 event arrayLog(uint i);

 DateTime dateTime = new DateTime();

    function Util() {

    }

    //년 월 일 시 분 -> timestamp
  function toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute)
   constant returns (uint){

     return dateTime.toTimestamp(year, month, day, hour, minute);
   }

   // timestamp -> 날짜
  function toDate()
   {

    result.push(dateTime.getYear(now));
    result.push(dateTime.getMonth(now));
    result.push(dateTime.getDay(now));
    result.push(dateTime.getHour(now));
    result.push(dateTime.getMinute(now));

    for(uint i = 0; i < result.length; i ++){
    arrayLog(result[i]);
    }

   }

   //gameInfoStr  -> timestamp 추출
   function infoStrToStamp(string gameInfoStr) returns (uint){
     bytes memory info = bytes(gameInfoStr);

     string year = new string(4);
     string month = new string(2);
     string day = new string(2);
     string hour = new string(2);
     string minute = new string(2);

     bytes memory y = new bytes(4);
     bytes momory m = new bytes(2);
     bytes momory d = new bytes(2);
     bytes memory h = new bytes(2);
     bytes memory m = new bytes(2);

     for(uint i =0 ; i < info.length; i ++){

       if(i < 4){
         y[i] = info[i];
       }
       else if(i<6){
         m[i] = info[i];
       }

       else
     }
   }
}
