<?php
class Summers_Form_Blog extends Zend_Form// Summers_Form_Standart //Zend_Form//Twitter_Bootstrap_Form_Inline
{

    public function init()
    {
        $this->setMethod('POST');
//        Zend_Dojo::enableForm($this);

        //Zend_Dojo::enableForm($this);
//        $body = (new Zend_Dojo_Form_Element_Editor('body'))
//            ->setOptions(Summers_Form_Standart::$options_dojo_editor)
//            ->setLabel('body')
//            ->addDecorators(Summers_Form_Standart::$decorators_dojo)
//            ->setRequired(true)
//            ->addFilter('StringTrim')
//            ->addValidator('NotEmpty', true, array('messages' => array('isEmpty' => 'Поле не може бути пустим.')));

//        $this->addPrefixPath('Izwt_Form_','Izwt/Form', 'wysiwyg');

        $this->addElement('hidden',   'blogid', array('required' => false));
        $this->addElement('text',     'title', array('label' => 'Title', 'required' => true, 'class' => 'form-control col-lg-3', 'options' => array('StringLength' => array(false, array(4, 255)),),'filters' =>array('StringTrim')));

        $this->addElement(new Izwt_Form_Element_Wysiwyg('body', array('label' => 'body','required' => true, 'filters'  => array('StringTrim'))));
//        $this->addElement(new Izwt_Form_Element_Wysiwyg('body', array('label' => 'body')));

        //----------------------------------------------------------------------
        // content textarea field
//        $content = new Soulex_Form_Element_TinyMce('body');
//        $this->removeDecorators($content);
//        $content->setAttrib('style', 'width: 100%; height: 300px;');
//        $content->setOptions(array(
//                                  'label'      => 'Content: ',
//                                  'mode'       => 'exact',
//                                  'elements' => 'content',
//                                  'editorOptions' => new Zend_Config_Ini(APPLICATION_PATH . '/configs/tinymce.ini', 'administrator')
//                             ));
//        $this->addElement($content);
        //----------------------------------------------------------------------

//        $this->addElement('Checkbox', 'blogstatus', array('label' => 'blog-status') );
        $blogstatus = (new Zend_Form_Element_Checkbox('blogstatus'))->setLabel('blog-status');//->addDecorators(Summers_Form_Standart::$decorators_checkbox);
        $this->addElement('text',     'meta',array('label' => 'meta', 'class' => 'form-control col-lg-3', 'options' => array('StringLength' => array(false, array(0, 500))),'filters' => array('StringTrim')));
        $this->addElement('text',     'mask',array('label' => 'mask', 'class' => 'form-control col-lg-3', 'options' => array('StringLength' => array(false, array(0, 500))),'filters' => array('StringTrim')));

//        // ---------------------------------------------------------
        $this->addElement('submit', 'reset',  array('label' => 'reset', 'type' => 'reset', 'class' => 'btn btn-warning','decorators'=>Summers_Form_Standart::$decorators_submit) );
        $this->addElement('submit', 'submit', array('label' => 'submit','type' => 'submit', 'class' => 'btn btn-success','decorators'=>Summers_Form_Standart::$decorators_submit) );
        $this->addElement('submit', 'cancel', array('label' => 'cancel','type' => 'submit', 'class' => 'btn btn-default','decorators'=>Summers_Form_Standart::$decorators_submit) );

        //        // --- Groups ----------------------------------------------
//        $this->addDisplayGroup(array('title', $body), 'display-body', array('legend'=>'display-body'));
//        $this->addDisplayGroup(array('blogstatus', 'mask', $blogstatus), 'display-mark', array('legend'=>'display-mark'));
//        $this->addDisplayGroup(array('submit', 'reset', 'cancel'), 'actions');
        parent::init();
    }
}