package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_945:int;
      
      private var var_827:Boolean;
      
      private var var_1675:Boolean;
      
      private var var_613:String;
      
      private var var_1455:int;
      
      private var var_1847:String;
      
      private var var_1846:String;
      
      private var var_1848:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_945 = param1.readInteger();
         this.var_827 = param1.readBoolean();
         this.var_1675 = param1.readBoolean();
         this.var_613 = param1.readString();
         this.var_1455 = param1.readInteger();
         this.var_1847 = param1.readString();
         this.var_1846 = param1.readString();
         this.var_1848 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_945;
      }
      
      public function get online() : Boolean
      {
         return this.var_827;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1675;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function get categoryId() : int
      {
         return this.var_1455;
      }
      
      public function get motto() : String
      {
         return this.var_1847;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1846;
      }
      
      public function get realName() : String
      {
         return this.var_1848;
      }
   }
}
