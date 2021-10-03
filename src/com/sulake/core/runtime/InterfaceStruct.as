package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1485:IID;
      
      private var var_1867:String;
      
      private var var_108:IUnknown;
      
      private var var_806:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1485 = param1;
         this.var_1867 = getQualifiedClassName(this.var_1485);
         this.var_108 = param2;
         this.var_806 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1485;
      }
      
      public function get iis() : String
      {
         return this.var_1867;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_108;
      }
      
      public function get references() : uint
      {
         return this.var_806;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_108 == null;
      }
      
      public function dispose() : void
      {
         this.var_1485 = null;
         this.var_1867 = null;
         this.var_108 = null;
         this.var_806 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_806;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_806) : uint(0);
      }
   }
}
