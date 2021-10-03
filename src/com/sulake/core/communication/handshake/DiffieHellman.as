package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1028:BigInteger;
      
      private var var_2431:BigInteger;
      
      private var var_1774:BigInteger;
      
      private var var_2430:BigInteger;
      
      private var var_1436:BigInteger;
      
      private var var_1773:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1436 = param1;
         this.var_1773 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1436.toString() + ",generator: " + this.var_1773.toString() + ",secret: " + param1);
         this.var_1028 = new BigInteger();
         this.var_1028.fromRadix(param1,param2);
         this.var_2431 = this.var_1773.modPow(this.var_1028,this.var_1436);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1774 = new BigInteger();
         this.var_1774.fromRadix(param1,param2);
         this.var_2430 = this.var_1774.modPow(this.var_1028,this.var_1436);
         return this.getSharedKey(param2);
      }
      
      public function method_7(param1:uint = 16) : String
      {
         return this.var_2431.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2430.toRadix(param1);
      }
   }
}
