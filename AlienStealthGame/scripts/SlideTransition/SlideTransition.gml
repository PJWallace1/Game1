// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function SlideTranition(_mode, _target);
/// @param {enum} _mode
/// @ param {asset} _target
function SlideTransition(_mode, _target){
	with(Obj_Transition){
		mode = _mode;
		if(argument_count > 1){
			target = _target;
		}
	}
}