package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1863:String;
      
      private var var_2604:int;
      
      private var var_2605:int;
      
      private var var_2007:int;
      
      private var _id:int;
      
      private var var_1862:Boolean;
      
      private var _type:String;
      
      private var var_1861:String;
      
      private var _rewardCurrencyAmount:int;
      
      private var var_1860:String;
      
      private var var_2606:int;
      
      private var var_2607:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1863 = param1.readString();
         this.var_2604 = param1.readInteger();
         this.var_2605 = param1.readInteger();
         this.var_2007 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1862 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1861 = param1.readString();
         this._rewardCurrencyAmount = param1.readInteger();
         this.var_1860 = param1.readString();
         this.var_2606 = param1.readInteger();
         this.var_2607 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1861 = "";
         this._rewardCurrencyAmount = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1863;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1860;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2604;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2605;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2007;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1862;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1861;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this._rewardCurrencyAmount;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2606;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2607;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1863;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1860;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1862 = param1;
      }
   }
}
