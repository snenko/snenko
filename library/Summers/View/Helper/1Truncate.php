<?php
/**
 *
 * User: Adolis
 * Date: 04.06.15
 * Time: 16:25
 * To change this template use File | Settings | File Templates.
 */
//require_once 'Zend/View/Helper/Abstract.php';
class Summers_View_Helper_Truncate extends Zend_View_Helper_Abstract
{
    public function truncate($string, $length = 80, $etc = '...', $break_words = false, $middle = false)
    {
        //substr(strip_tags($blog['body'], '<br><br/>'), 0, 700)
        $string = strip_tags($string);

        if ($length == 0)
            return '';
        if (strlen($string) > $length) {
            $length -= min($length, strlen($etc));
            if (! $break_words && ! $middle) {
                //strip_tags
                $string = preg_replace('/\s+?(\S+)?$/', '', mb_substr($string, 0, $length + 1));
            }
            if (! $middle) {
                return mb_substr($string, 0, $length) . $etc;
            } else {
                return mb_substr($string, 0, $length / 2) . $etc . mb_substr($string, -$length / 2);
            }
        } else {
            return $string;
        };
    }
}