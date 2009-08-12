/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (MrbsArea.as).
 */

package com.baidu.ite.mrbs.entity {

    import flash.events.EventDispatcher;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import flash.utils.IExternalizable;
    import flash.utils.getQualifiedClassName;
    import mx.collections.ListCollectionView;
    import mx.core.IUID;
    import mx.utils.UIDUtil;
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;
    import org.granite.tide.IEntity;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;

    use namespace meta;

    [Managed]
    public class MrbsAreaBase implements IExternalizable, IUID {

        protected var _em:IEntityManager = null;

        private var __initialized:Boolean = true;
        private var __detachedState:String = null;

        private var _areaName:String;
        private var _descn:String;
        private var _id:Number;
        private var _linkman:String;
        private var _mrbsRooms:ListCollectionView;
        private var _shortDescn:String;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __initialized;

            var property:* = this[name];
            return (
                (!(property is MrbsArea) || (property as MrbsArea).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }

        [Transient]
        public function meta_getEntityManager():IEntityManager {
            return _em;
        }
        public function meta_setEntityManager(em:IEntityManager):void {
            _em = em;
        }

        public function set areaName(value:String):void {
            _areaName = value;
        }
        public function get areaName():String {
            return _areaName;
        }

        public function set descn(value:String):void {
            _descn = value;
        }
        public function get descn():String {
            return _descn;
        }

        public function set id(value:Number):void {
            _id = value;
        }
        public function get id():Number {
            return _id;
        }

        public function set linkman(value:String):void {
            _linkman = value;
        }
        public function get linkman():String {
            return _linkman;
        }

        public function set mrbsRooms(value:ListCollectionView):void {
            _mrbsRooms = value;
        }
        public function get mrbsRooms():ListCollectionView {
            return _mrbsRooms;
        }

        public function set shortDescn(value:String):void {
            _shortDescn = value;
        }
        public function get shortDescn():String {
            return _shortDescn;
        }

        public function set uid(value:String):void {
            // noop...
        }
        public function get uid():String {
        	if (isNaN(_id))
        		return UIDUtil.createUID();
        	return getQualifiedClassName(this) + "#[" + String(_id) + "]";
        	
        }

        public function meta_merge(em:IEntityManager, obj:*):void {
            var src:MrbsAreaBase = MrbsAreaBase(obj);
            __initialized = src.__initialized;
            __detachedState = src.__detachedState;
            if (meta::isInitialized()) {
               em.meta_mergeExternal(src._areaName, _areaName, null, this, 'areaName', function setter(o:*):void{_areaName = o as String});
               em.meta_mergeExternal(src._descn, _descn, null, this, 'descn', function setter(o:*):void{_descn = o as String});
               em.meta_mergeExternal(src._id, _id, null, this, 'id', function setter(o:*):void{_id = o as Number});
               em.meta_mergeExternal(src._linkman, _linkman, null, this, 'linkman', function setter(o:*):void{_linkman = o as String});
               em.meta_mergeExternal(src._mrbsRooms, _mrbsRooms, null, this, 'mrbsRooms', function setter(o:*):void{_mrbsRooms = o as ListCollectionView});
               em.meta_mergeExternal(src._shortDescn, _shortDescn, null, this, 'shortDescn', function setter(o:*):void{_shortDescn = o as String});
            }
            else {
               em.meta_mergeExternal(src._id, _id, null, this, 'id', function setter(o:*):void{_id = o as Number});
            }
        }

        public function readExternal(input:IDataInput):void {
            __initialized = input.readObject() as Boolean;
            __detachedState = input.readObject() as String;
            if (meta::isInitialized()) {
                _areaName = input.readObject() as String;
                _descn = input.readObject() as String;
                _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _linkman = input.readObject() as String;
                _mrbsRooms = input.readObject() as ListCollectionView;
                _shortDescn = input.readObject() as String;
            }
            else {
                _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        public function writeExternal(output:IDataOutput):void {
            output.writeObject(__initialized);
            output.writeObject(__detachedState);
            if (meta::isInitialized()) {
                output.writeObject((_areaName is IPropertyHolder) ? IPropertyHolder(_areaName).object : _areaName);
                output.writeObject((_descn is IPropertyHolder) ? IPropertyHolder(_descn).object : _descn);
                output.writeObject((_id is IPropertyHolder) ? IPropertyHolder(_id).object : _id);
                output.writeObject((_linkman is IPropertyHolder) ? IPropertyHolder(_linkman).object : _linkman);
                output.writeObject((_mrbsRooms is IPropertyHolder) ? IPropertyHolder(_mrbsRooms).object : _mrbsRooms);
                output.writeObject((_shortDescn is IPropertyHolder) ? IPropertyHolder(_shortDescn).object : _shortDescn);
            }
            else {
                output.writeObject(_id);
            }
        }
    }
}