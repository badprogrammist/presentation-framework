/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:14
 * Mail: badprogrammist@gmail.com
 */
package framework.core.executors.presentation
{
    import framework.core.communication.Message;
    import framework.core.communication.listener.IListener;
    import framework.entity.presentation.IPresentationScenario;

    public class PresentationExecutorBase implements IListener
    {
        private var _presentationScenario:IPresentationScenario;

        public function PresentationExecutorBase(presentationScenario:IPresentationScenario)
        {
            _presentationScenario = presentationScenario;
        }

        public function Listen(message:Message):void
        {
        }

        public function get presentationScenario():IPresentationScenario
        {
            return _presentationScenario;
        }
    }
}
