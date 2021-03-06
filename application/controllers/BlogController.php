<?php

class BlogController extends Zend_Controller_Action
{

    public function init()
    {
        //$this->db = Zend_Db_Table::getDefaultAdapter();

    }

    public function indexAction()
    {
        $blogs = new Summers_Model_Blog;
        $blogs->setBlogs();
        $blogs->setMask_ToFullArray();
        $this->view->blogs = $blogs->getBlogs();

        $blogs = new Summers_Model_Blog;
        $blogs->setBlogs(false);
        $blogs->setMask_ToFullArray();
        $this->view->blogs_status_none = $blogs->getBlogs();

        $this->view->title = 'Blogs of Helena Osokina';
        $this->view->description = 'blog-description';
    }

    public function createAction()
    {
        // action body
        $form = (new Summers_Form_Blog())->setAction('/blog/create')->populate($_POST);

        if ($this->getRequest()->isPost()) {
            if ($form->submit->isChecked()) {

                $postData = $this->getRequest()->getPost();
                if ($form->isValid($postData)) {
                    $values = $form->getValues();

                    $values['blogupdate'] = Summers_Snenko::getCurrentDate();
                    $values['userid'] = 1;

                    $blog = new Summers_Model_Blog();
                    $blog->fromArray($values);
                    $blog->save();

                    if ($blog->getErrorStack()->toArray()) {
                        throw new Zend_Controller_Action_Exception('Invalid saved');
                    }
                    $this->_helper->snenko->gotoAfterAction('blog', $blog->blogid);
                }
            } elseif ($form->cancel->isChecked()) {
                $this->_helper->snenko->gotoAfterAction('blog');
            }
        }

//        $this->view->headTitle( $this->translate('Create article') );
        $this->view->title = 'Create article';
        $this->view->form = $form;
    }

    public function updateAction()
    {
        $form = (new Summers_Form_Blog())->setAction('/blog/update')->populate($_POST);

        if ($this->getRequest()->isPost()) {
            if ($form->submit->isChecked()) {

                $postData = $this->getRequest()->getPost();
                if ($form->isValid($postData)) {
                    //зберігаємо все
                    $values = $form->getValues();

                    $values['blogupdate'] = Summers_Snenko::getCurrentDate();
                    $values['userid'] = 1;

                    $blog = Doctrine::getTable('Summers_Model_Blog')->find($values['blogid']);
                    $blog->fromArray($values);
                    $blog->save();
                    //$blog->setBlog($values);
                    if ($blog->getErrorStack()->toArray()) {
                        throw new Zend_Controller_Action_Exception('Invalid saved');
                    }
                    $this->_helper->snenko->gotoAfterAction('blog', $blog->blogid);
                }

            } elseif ($form->cancel->isChecked()) {
                $this->_helper->snenko->gotoAfterAction('blog');
            }
        } else {
            $input = (new Zend_Filter_Input(
                array('id' => array('HtmlEntities', 'StripTags', 'StringTrim')),
                array('id' => array('NotEmpty', 'Int'))
            ))->setData($this->getRequest()->getParams());

            //перевырка валыдності url
            if ($input->isValid()) {
                $blog = new Summers_Model_Blog;
                $blog->setBlog_byId($input->id);

                if ($blog->getErrorStack()->toArray()) {
                    throw new Zend_Controller_Action_Exception('Page not found', 404);
                }
                //задаємо початкові значення в формі
                $form->populate($blog->getData());
            } else {
                throw new Zend_Controller_Action_Exception('Invalid input');
            }
        }

        $this->view->title = 'Update article';
        $this->view->form = $form;
        $this->view->title = 'Update article';
    }

    public function displayAction()
    {
        $input = new Zend_Filter_Input(
            array('id' => array('HtmlEntities', 'StripTags', 'StringTrim')),
            array('id' => array('NotEmpty', 'Int')));

        $input->setData($this->getRequest()->getParams());

        if ($input->isValid()) {

            $blog = new Summers_Model_Blog;
            $blog->setBlog_byId($input->id);
            if($blog->mask) {
                $blog->mask = $blog->maskToArray($blog->mask);
            }

            if ($blog->getErrorStack()->toArray()) {
                throw new Zend_Controller_Action_Exception('Page not found', 404);
            }

            $this->view->blog = $blog->getData();

            $this->view->title = $blog->title;
//            $this->view->description = $blog->title 'blog-description';
            $this->view->keywords = $blog->mask;

        } else {
            throw new Zend_Controller_Action_Exception('Invalid input');
        }
    }

    public function deleteAction()
    {
        $form = new Summers_Form_Delete('/blog/delete');

        if ($this->getRequest()->isPost())
        {
            $form->populate($_POST);
            //видаляємо
            if ($form->submit->isChecked()) {
                $postData = $this->getRequest()->getPost();
                if ($form->isValid($postData)) {
                    $values = $form->getValues();

                    $blog = new Summers_Model_Blog;
                    $blog->setBlog_byId($values['id']);
                    $blog_title = $blog->title;

                    $blog->deleteBlog($values['id']);

                    if($blog->getErrorStack()->toArray()){
                        throw new Zend_Controller_Action_Exception('Can`t delete!');
                    }
                    //Успіх, переходимо на success
                    $this->_helper->getHelper('FlashMessenger')
                        ->addMessage("Product \"{$blog_title}\" has deleted");
                    $this->_redirect('/blog/success');
                }
            }

            //скасовуємо видалення
            elseif ($form->cancel->isChecked()) {
                $this->_helper->snenko->gotoAfterAction('blog');
            }

        } else {
            $input = (new Zend_Filter_Input(
                array('id' => array('HtmlEntities', 'StripTags', 'StringTrim')),
                array('id' => array('NotEmpty', 'Int'))
            ))->setData($this->getRequest()->getParams());

            //перевырка валідності url
            if ($input->isValid()) {

                //Визначаэмо назву товара, що видаляється
                $blog = new Summers_Model_Blog;
                $blog->setBlog_byId($input->id);
                if($blog->blogid){
                    $form->populate(array('id' => $input->id));
                    $this->view->caption = 'blog';
                    $this->view->message = $blog->title;

                }else{
                    throw new Zend_Controller_Action_Exception('Invalid id');
                }
            } else {throw new Zend_Controller_Action_Exception('Invalid input');}
        }

        $this->view->form = $form;
        $this->view->title = 'delete article';
    }

    public function successAction()
    {
        if ($this->_helper->getHelper('FlashMessenger')->getMessages()) {
            $this->view->messages = $this->_helper->getHelper('FlashMessenger')->getMessages();
        } else {
            $this->_redirect('/');
        }
    }


}











