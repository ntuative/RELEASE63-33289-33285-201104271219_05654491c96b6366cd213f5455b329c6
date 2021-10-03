package com.sulake.habbo.messenger.domain
{
   import com.sulake.habbo.messenger.HabboMessenger;
   
   public class ConversationsDeps implements IConversationsDeps
   {
       
      
      private var var_136:HabboMessenger;
      
      public function ConversationsDeps(param1:HabboMessenger)
      {
         super();
         this.var_136 = param1;
      }
      
      public function getTabCount() : int
      {
         return this.var_136.messengerView.getTabCount();
      }
      
      public function getText(param1:String) : String
      {
         return this.var_136.getText(param1);
      }
      
      public function createConversation(param1:int) : Conversation
      {
         return this.var_136.createConversation(param1);
      }
      
      public function refresh(param1:Boolean) : void
      {
         this.var_136.messengerView.refresh();
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         this.var_136.messengerView.addMsgToView(param1,param2);
      }
   }
}
