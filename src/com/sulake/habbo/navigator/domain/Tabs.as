package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_417:int = 1;
      
      public static const const_278:int = 2;
      
      public static const const_351:int = 3;
      
      public static const const_401:int = 4;
      
      public static const const_293:int = 5;
      
      public static const const_428:int = 1;
      
      public static const const_865:int = 2;
      
      public static const const_904:int = 3;
      
      public static const const_696:int = 4;
      
      public static const const_248:int = 5;
      
      public static const const_698:int = 6;
      
      public static const const_718:int = 7;
      
      public static const const_234:int = 8;
      
      public static const const_434:int = 9;
      
      public static const const_2097:int = 10;
      
      public static const const_892:int = 11;
      
      public static const const_607:int = 12;
       
      
      private var var_438:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_438 = new Array();
         this.var_438.push(new Tab(this._navigator,const_417,const_607,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_527));
         this.var_438.push(new Tab(this._navigator,const_278,const_428,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_527));
         this.var_438.push(new Tab(this._navigator,const_401,const_892,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1297));
         this.var_438.push(new Tab(this._navigator,const_351,const_248,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_527));
         this.var_438.push(new Tab(this._navigator,const_293,const_234,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_786));
         this.setSelectedTab(const_417);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_401;
      }
      
      public function get tabs() : Array
      {
         return this.var_438;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_438)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_438)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_438)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
