/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 13:07
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.switcher
{
    import framework.core.communication.Message;
    import framework.core.communication.listener.IListener;

    import org.as3commons.collections.Map;

    public class Switcher implements ISwitcher
    {
        private var _currentListener:IListener;
        private var _sourceToBin:Map;
        private var _sourceToMessage:Map;

        public function Switcher()
        {
            _sourceToBin = new Map();
            _sourceToMessage = new Map();
        }

        public function AddSwitch(source:IListener,bin:IListener,switchSourceMessageClass:Class):void
        {
            _sourceToBin.add(source, bin);
            _sourceToMessage.add(source, switchSourceMessageClass);
        }

        public function Listen(message:Message):void
        {
            _currentListener.Listen(message);
            changeCurrentListener(message);
        }

        private function changeCurrentListener(message:Message):void
        {
            if(_sourceToMessage.hasKey(_currentListener))
            {
                if(message is _sourceToMessage.itemFor(_currentListener))
                {
                    _currentListener = _sourceToBin.itemFor(_currentListener);
                }
            }
        }

        public function SetStart(listener:IListener):void
        {
            _currentListener = listener;
        }
    }
}
