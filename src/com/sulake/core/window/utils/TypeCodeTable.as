package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_832;
         param1["bitmap"] = const_955;
         param1["border"] = const_768;
         param1["border_notify"] = const_1645;
         param1["button"] = const_606;
         param1["button_thick"] = const_882;
         param1["button_icon"] = const_1763;
         param1["button_group_left"] = const_772;
         param1["button_group_center"] = const_725;
         param1["button_group_right"] = const_760;
         param1["canvas"] = const_924;
         param1["checkbox"] = const_717;
         param1["closebutton"] = const_1296;
         param1["container"] = const_427;
         param1["container_button"] = const_799;
         param1["display_object_wrapper"] = const_722;
         param1["dropmenu"] = const_472;
         param1["dropmenu_item"] = const_545;
         param1["frame"] = const_411;
         param1["frame_notify"] = const_1548;
         param1["header"] = const_804;
         param1["html"] = const_1092;
         param1["icon"] = const_1123;
         param1["itemgrid"] = const_1247;
         param1["itemgrid_horizontal"] = const_500;
         param1["itemgrid_vertical"] = const_699;
         param1["itemlist"] = const_1278;
         param1["itemlist_horizontal"] = const_398;
         param1["itemlist_vertical"] = const_371;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1587;
         param1["menu"] = const_1804;
         param1["menu_item"] = const_1582;
         param1["submenu"] = const_1167;
         param1["minimizebox"] = const_1790;
         param1["notify"] = const_1668;
         param1["null"] = const_690;
         param1["password"] = const_779;
         param1["radiobutton"] = const_918;
         param1["region"] = const_465;
         param1["restorebox"] = const_1613;
         param1["scaler"] = const_547;
         param1["scaler_horizontal"] = const_1628;
         param1["scaler_vertical"] = const_1811;
         param1["scrollbar_horizontal"] = const_529;
         param1["scrollbar_vertical"] = const_780;
         param1["scrollbar_slider_button_up"] = const_1294;
         param1["scrollbar_slider_button_down"] = const_1217;
         param1["scrollbar_slider_button_left"] = const_1248;
         param1["scrollbar_slider_button_right"] = const_1106;
         param1["scrollbar_slider_bar_horizontal"] = const_1295;
         param1["scrollbar_slider_bar_vertical"] = const_1195;
         param1["scrollbar_slider_track_horizontal"] = const_1235;
         param1["scrollbar_slider_track_vertical"] = const_1277;
         param1["scrollable_itemlist"] = const_1597;
         param1["scrollable_itemlist_vertical"] = const_554;
         param1["scrollable_itemlist_horizontal"] = const_1281;
         param1["selector"] = const_834;
         param1["selector_list"] = const_825;
         param1["submenu"] = const_1167;
         param1["tab_button"] = const_829;
         param1["tab_container_button"] = const_1184;
         param1["tab_context"] = const_420;
         param1["tab_content"] = const_1107;
         param1["tab_selector"] = const_923;
         param1["text"] = const_461;
         param1["input"] = const_928;
         param1["toolbar"] = const_1816;
         param1["tooltip"] = const_435;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
