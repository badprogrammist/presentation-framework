/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:02
 * Mail: badprogrammist@gmail.com
 */
package framework.core.executors.presentation
{
    import framework.core.communication.Message;
    import framework.core.messages.presentation.GotoSlideMessage;
    import framework.entity.presentation.IPresentationScenario;

    public class GotoSlide extends PresentationExecutorBase
    {
        public function GotoSlide(presentationScenario:IPresentationScenario)
        {
            super(presentationScenario);
        }

        override public function Listen(message:Message):void
        {
            if (message is GotoSlideMessage)
            {
                var gotoSlideMessage:GotoSlideMessage = message as GotoSlideMessage;
                presentationScenario.GotoSlide(gotoSlideMessage.slideIndex);
            }
        }


    }
}
