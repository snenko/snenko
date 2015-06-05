<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        //карусель
        $carousel = new Summers_Model_Collection_Carousel();
        $carousel->loadCarousels();

        $this->view->carousel = $carousel->getCarousels();

        //товари
        if($poduct_ids = Summers_Snenko::getTitleProducts())
            $this->view->products = (new Summers_Model_Product())
                ->getProducts(array('products'=>$poduct_ids));

        //статті
        $articles = (new Summers_Model_Blog())->getLastArticles(5);
        $this->view->articles = $articles;
        $this->view->label = 'label';
        $this->view->sublabel = 'sublabel';

        $this->view->title = 'label';
        $this->view->description = 'sublabel';
        $this->view->keywords = array('login', 'label');
    }

    public function contactsAction()
    {
        $form = new Summers_Form_Contacts();
        $form->setAction('/index/contacts');

        if ($this->getRequest()->isPost()) {

            $postData = $this->getRequest()->getPost();
            if ($form->isValid($postData)) {

                $values = $form->getValues();

                $mail = new Zend_Mail();
                $mail->setBodyText($values['message']);
                $mail->setFrom($values['email'], $values['name']);
                $mail->addTo(Summers_Snenko::getSettings_guest()->guestEmailAddress );
                $mail->setSubject('Contact form submission');
                $mail->send();

                $this->_helper->getHelper('FlashMessenger')
                    ->addMessage('Thank you. Your message was successfully sent.');
                $this->redirect('/index/success');
            }
        }

        // information block
        $pageName = 'contacts';
        $contacts = Doctrine::getTable('Summers_Model_Page')->findBy('name', $pageName);

        if (count($contacts) > 0) {
            $this->view->body = Summers_Snenko::tegTranslateParser($contacts[0]->body);
            $this->view->keywords = $contacts[0]->meta;
        }

        $this->view->form = $form;
        $this->view->title = 'Contacts';
        $this->view->description = 'contacts-description';
    }

    public function successAction()
    {
        if ($this->_helper->getHelper('FlashMessenger')->getMessages()) {
            $this->view->messages = $this->_helper->getHelper('FlashMessenger')->getMessages();
        } else {
            $this->redirect('/');
        }
    }

}



