package react.native.component;

import react.native.component.props.*;
import react.ReactComponent;

@:jsRequire('react-native', 'Pressable')
extern class Pressable extends ReactComponentOfProps<PressableProps> {
	static function getSize(uri:String, success:Int->Int->Void , ?failure:Dynamic->Void):Void;
}
