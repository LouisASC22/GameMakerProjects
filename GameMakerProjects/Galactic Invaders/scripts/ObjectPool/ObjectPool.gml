function ObjectPool(v_obj, v_size, v_layer, v_overFlow = false) constructor {
    //object to fill the pool
    object = v_obj;
    //max size of the pool
    size = v_size;
    overFlow = v_overFlow;
    //layer to set the objects
    _layer = v_layer;
    //create the list with an array
    objList = array_create(size, noone);
    //# of current active objects in the pool
    activeCount = 0;
    
    //initialize the pool (filling the empty objList array with new objects)
    initPool = function() {
        //loop through the objList array
        for(i = 0; i < size; i++) {
            //instance an object
            var v_o = instance_create_layer(0, 0, _layer, object);
            //assign the object's instance ID to the objList @ index "i"
            objList[i] = v_o.id;
            //deactivate the object (setting it to standby mode)
            instance_deactivate_object(objList[i]);
        }       
    }   
    
    //find an inactive object in objList; if they're all active, make a new one
    //then add it to the end of the list
    getPooledObject = function() {
        //if under max size
        if (activeCount < size) {
            //loop through the objList array
            for (i = 0; i < size; i++) {
                //returns the first object that's not active
                if (!instance_exists(objList[i])) {
                    return objList[i];               
                }           
            }
        //if overFlow is true, go ahead and make a new object
        } else if (overFlow == true) {
                var v_o = instance_create_layer(0, 0, _layer, object);   
                //add it to the end of the objList array
                array_push(objList, v_o);
                //deactivate/put it in standby
                instance_deactivate_object(v_o);
                //return the ID
                return objList[activeCount];
        } else {
            //if both fail, through a debug error & return noone
            show_debug_message(object_get_name(object) + " [objPool: line 41] Trying to overflow obj pool with overflow false");
            return noone;
        }
    }   
    
    //activating an object from the pool
    instanceObj = function() {
        //get an object to activate
        var v_inacObj = getPooledObject();
        //failsafe check
        if (v_inacObj != noone) {
            //activate and add to the active counter
            instance_activate_object(v_inacObj);
            activeCount++;
            //return the object's ID for use
            return v_inacObj;
        } else {
            show_debug_message("[objPool: line 67] Failed to instance: " + object_get_name(object));
        }
    }   
    
    //Deactivating objects instead of destroying them to save resources
    deactivate = function(v_objID) {
        //if objList has more than the allotted amount of objects
        if (activeCount > size) {
            //set the value to "undefined"
            clearArrayInd(v_objID);
            //Make a "new" list to clear all "undefined" indexes
            clearArrayUnd();
            //destroy the object
            instance_destroy(v_objID);
            activeCount--;       
        } else {
            //Since the the list is size is fine; deactivate the object
            instance_deactivate_object(v_objID);
            activeCount--;   
            }   
    }   

    //Finds the object's instance ID in the objList array
    //& changes it to "undefined"
    clearArrayInd = function(v_obj) {
            var v_Size = array_length(objList);
            for (i = 0; i < v_Size; i++) {
                if (objList[i] == v_obj) {
                    objList[i] = undefined;
                }           
            }
    }
    
    //Finds all indexes in the objList array with values that are
    //not "undefined" then sets them to objList which removes all indexes
    //with the "undefined" value.
    clearArrayUnd = function() {   
        function clearArray(v_element, v_index) {
            return v_element != undefined;
        }
        objList = array_filter(objList,clearArray);   
    }
    
    //Debugging; returns a string "[objects currently active] / [max size]"
    countActive = function() {
        return (string(activeCount) + "/" + string(size));
    }   
}

// https://forum.gamemaker.io/index.php?threads/could-i-get-some-opinions-on-how-my-object-pool-system-is-looking.109274/