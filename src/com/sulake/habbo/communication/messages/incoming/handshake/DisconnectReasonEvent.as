package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2099:int = 0;
      
      public static const const_1812:int = 1;
      
      public static const const_1818:int = 2;
      
      public static const const_1980:int = 3;
      
      public static const const_1946:int = 4;
      
      public static const const_2092:int = 5;
      
      public static const const_1662:int = 10;
      
      public static const const_2060:int = 11;
      
      public static const const_1937:int = 12;
      
      public static const const_2009:int = 13;
      
      public static const const_1960:int = 16;
      
      public static const const_1949:int = 17;
      
      public static const const_1928:int = 18;
      
      public static const const_2056:int = 19;
      
      public static const const_2003:int = 20;
      
      public static const const_2005:int = 22;
      
      public static const const_1953:int = 23;
      
      public static const const_1992:int = 24;
      
      public static const const_2061:int = 25;
      
      public static const const_1996:int = 26;
      
      public static const const_1915:int = 27;
      
      public static const const_2042:int = 28;
      
      public static const const_2007:int = 29;
      
      public static const const_2024:int = 100;
      
      public static const const_1909:int = 101;
      
      public static const const_1958:int = 102;
      
      public static const const_1991:int = 103;
      
      public static const const_2053:int = 104;
      
      public static const const_2043:int = 105;
      
      public static const const_2031:int = 106;
      
      public static const const_2038:int = 107;
      
      public static const const_1954:int = 108;
      
      public static const const_1932:int = 109;
      
      public static const const_1986:int = 110;
      
      public static const const_2072:int = 111;
      
      public static const const_1890:int = 112;
      
      public static const const_2030:int = 113;
      
      public static const const_2014:int = 114;
      
      public static const const_2025:int = 115;
      
      public static const const_1910:int = 116;
      
      public static const const_1904:int = 117;
      
      public static const const_1934:int = 118;
      
      public static const const_2065:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1812:
            case const_1662:
               return "banned";
            case const_1818:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
