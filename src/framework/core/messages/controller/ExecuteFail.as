/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 12:45
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.controller
{
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    public class ExecuteFail extends Message
    {
        public function ExecuteFail(dispatcher:ISender)
        {
            super(dispatcher);
        }
    }
}
