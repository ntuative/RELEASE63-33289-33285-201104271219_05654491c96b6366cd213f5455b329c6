package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1293:Boolean;
      
      private var var_1292:Boolean;
      
      private var var_1580:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1293;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1292;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1580;
      }
      
      public function flush() : Boolean
      {
         this.var_1293 = false;
         this.var_1292 = false;
         this.var_1580 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1293 = param1.readBoolean();
         this.var_1292 = param1.readBoolean();
         this.var_1580 = param1.readBoolean();
         return true;
      }
   }
}
