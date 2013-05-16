/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 12:02
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.controller
{
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    public class ExecuteDone extends Message
    {
        public function ExecuteDone(dispatcher:ISender)
        {
            super(dispatcher);
        }
    }
}
