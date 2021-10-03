package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2306:int;
      
      private var var_1980:String;
      
      private var var_2348:String;
      
      private var var_2350:Boolean;
      
      private var var_2351:Boolean;
      
      private var var_2349:int;
      
      private var var_2347:String;
      
      private var var_2352:String;
      
      private var var_1848:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2306 = param1.readInteger();
         this.var_1980 = param1.readString();
         this.var_2348 = param1.readString();
         this.var_2350 = param1.readBoolean();
         this.var_2351 = param1.readBoolean();
         param1.readString();
         this.var_2349 = param1.readInteger();
         this.var_2347 = param1.readString();
         this.var_2352 = param1.readString();
         this.var_1848 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2306;
      }
      
      public function get avatarName() : String
      {
         return this.var_1980;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2348;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2350;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2351;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2349;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2347;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2352;
      }
      
      public function get realName() : String
      {
         return this.var_1848;
      }
   }
}
