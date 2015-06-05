<?php
class CKEditor {
    function CKEditor( $textareaId ) {
         return "<script type=\"text/javascript\">
                       CKEDITOR.replace( '". $textareaId ."' );
                  </script>";
    }
}
?>
