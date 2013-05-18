/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:12
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.presentation
{
    public interface IPresentationScenario
    {
        function NextSlide():void;
        function PrevSlide():void;
        function GotoSlide(slideIndex:int):void;
    }
}
