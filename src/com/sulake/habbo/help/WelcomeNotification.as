package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2515:String;
      
      private var var_2516:String;
      
      private var var_2517:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2515 = param1;
         this.var_2516 = param2;
         this.var_2517 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2515;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2516;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2517;
      }
   }
}
