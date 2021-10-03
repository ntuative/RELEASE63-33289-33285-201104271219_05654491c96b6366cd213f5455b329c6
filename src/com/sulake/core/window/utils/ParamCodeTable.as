package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_199;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1266;
         param1["embedded_controller"] = const_1256;
         param1["resize_to_accommodate_children"] = const_72;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_874;
         param1["mouse_dragging_target"] = const_263;
         param1["mouse_dragging_trigger"] = const_422;
         param1["mouse_scaling_target"] = const_331;
         param1["mouse_scaling_trigger"] = const_471;
         param1["horizontal_mouse_scaling_trigger"] = const_271;
         param1["vertical_mouse_scaling_trigger"] = const_289;
         param1["observe_parent_input_events"] = const_1193;
         param1["optimize_region_to_layout_size"] = const_511;
         param1["parent_window"] = const_1234;
         param1["relative_horizontal_scale_center"] = const_220;
         param1["relative_horizontal_scale_fixed"] = const_135;
         param1["relative_horizontal_scale_move"] = const_373;
         param1["relative_horizontal_scale_strech"] = const_395;
         param1["relative_scale_center"] = const_1201;
         param1["relative_scale_fixed"] = const_685;
         param1["relative_scale_move"] = const_1215;
         param1["relative_scale_strech"] = const_1147;
         param1["relative_vertical_scale_center"] = const_219;
         param1["relative_vertical_scale_fixed"] = const_138;
         param1["relative_vertical_scale_move"] = const_285;
         param1["relative_vertical_scale_strech"] = const_299;
         param1["on_resize_align_left"] = const_724;
         param1["on_resize_align_right"] = const_559;
         param1["on_resize_align_center"] = const_499;
         param1["on_resize_align_top"] = const_847;
         param1["on_resize_align_bottom"] = const_580;
         param1["on_resize_align_middle"] = const_636;
         param1["on_accommodate_align_left"] = const_1305;
         param1["on_accommodate_align_right"] = const_594;
         param1["on_accommodate_align_center"] = const_907;
         param1["on_accommodate_align_top"] = const_1196;
         param1["on_accommodate_align_bottom"] = const_531;
         param1["on_accommodate_align_middle"] = const_852;
         param1["route_input_events_to_parent"] = const_610;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1230;
         param1["scalable_with_mouse"] = const_1162;
         param1["reflect_horizontal_resize_to_parent"] = const_564;
         param1["reflect_vertical_resize_to_parent"] = const_552;
         param1["reflect_resize_to_parent"] = const_312;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1165;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
