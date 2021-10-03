package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_481:String = "RWUAM_WHISPER_USER";
      
      public static const const_487:String = "RWUAM_IGNORE_USER";
      
      public static const const_476:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_387:String = "RWUAM_KICK_USER";
      
      public static const const_614:String = "RWUAM_BAN_USER";
      
      public static const const_470:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_637:String = "RWUAM_RESPECT_USER";
      
      public static const const_585:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_522:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_629:String = "RWUAM_START_TRADING";
      
      public static const const_709:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_601:String = "RWUAM_KICK_BOT";
      
      public static const const_460:String = "RWUAM_REPORT";
      
      public static const const_528:String = "RWUAM_PICKUP_PET";
      
      public static const const_1742:String = "RWUAM_TRAIN_PET";
      
      public static const const_572:String = " RWUAM_RESPECT_PET";
      
      public static const const_412:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_954:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
