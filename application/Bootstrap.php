<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{

    protected function _initConfig()
    {
        // Action Helpers
        Zend_Controller_Action_HelperBroker::addPath(APPLICATION_PATH . '/controllers/helpers');

        $config = new Zend_Config($this->getOptions(), true);
        Zend_Registry::set('config', $config);
        return $config;
    }

    protected function _initDoctrine()
    {
        require_once 'Doctrine/Doctrine.php';
        $this->getApplication()
            ->getAutoloader()
            ->pushAutoloader(array('Doctrine', 'autoload'), 'Doctrine');

        $manager = Doctrine_Manager::getInstance();
        $manager->setAttribute(
            Doctrine::ATTR_MODEL_LOADING,
            Doctrine::MODEL_LOADING_CONSERVATIVE
        );

        $config = new Zend_Config_Ini(APPLICATION_PATH . '/configs/database.ini');
        $conn = Doctrine_Manager::connection($config->doctrine->dsn, 'doctrine')->setCharset('utf8');

        return $conn;
    }

    protected function _initLocale()
    {
        $locale = null;

        $session = new Zend_Session_Namespace('summers.l10n');
        if ($session->locale) {
            $locale = new Zend_Locale($session->locale);
        }

        if ($locale === null) {
            try {
                $locale = new Zend_Locale('browser');
            } catch (Zend_Locale_Exception $e) {

                $locale = new Zend_Locale(
                    Summers_Snenko::getSettings_guest()->langDefault);//'uk_UA'
            }
        }

        Zend_Registry::getInstance()->set('Zend_Locale', $locale);
//        $registry = Zend_Registry::getInstance();
//        $registry->set('Zend_Locale', $locale);
    }

    protected function _initTranslate()
    {
        $translate = null;

        $translate = new Zend_Translate(
            'array',
            Zend_Registry::get('config')->lang->dir,
            null,
            array(
                 'scan' => Zend_Translate::LOCALE_DIRECTORY,// Zend_Translate::LOCALE_FILENAME,
                 'disableNotices' => 1));

        Zend_Registry::getInstance()->set('Zend_Translate', $translate);
    }

    protected function _initDatabase()
    {
        $config = new Zend_Config_Ini(APPLICATION_PATH . '/configs/database.ini');

        $database = Zend_Db::factory($config->database);
        Zend_Db_Table::setDefaultAdapter($database);

        Zend_Registry::set("database", $database);
        return $database;
    }

    protected function _initAcl()
    {
        Zend_Loader::loadClass('Acl');
        Zend_Loader::loadClass('CheckAccess');

        Zend_Controller_Front::getInstance()
            ->registerPlugin(new CheckAccess());

        $acl = Acl::getInstance();

        // Чіпляємо ACL до Zend_Navigation
        Zend_View_Helper_Navigation_HelperAbstract::setDefaultAcl($acl);
        Zend_View_Helper_Navigation_HelperAbstract::setDefaultRole($acl->getCurrentRole());

        return $acl;

    }

    protected function _initNavigation()
    {
//        $db = Zend_Db_Table::getDefaultAdapter();
        $navigation_config = new Zend_Config_Xml(APPLICATION_PATH . '/configs/navigation.xml');
        $conteiner = new Zend_Navigation($navigation_config);

        //registration navigation container
        $registry = Zend_Registry::getInstance();
        $registry->set('Zend_Navigation', $conteiner);

//        Zend_Controller_Action_HelperBroker::addHelper(
//            new Summers_Controller_Action_Helper_Navigation()
//        );

    }

    protected function _initAuth()
    {
        $auth = Zend_Auth::getInstance();
        $data = $auth->getStorage()->read();
        if(!isset($data->role)) {
            //створюєсться новий, пустий обєкт storage_data і в нього засовуємо змінну status
            //Zend_Loader::loadClass('Acl');
            $storage_data = new stdClass();
            $storage_data->role = Acl::ROLE_GUEST;
            $auth->getStorage()->write($storage_data);
        }
    }



//    protected function _initViewHelpers()
//    {
////        $bootstrap = $this->getInvokeArg('bootstrap');
////        $view = $bootstrap->getResource('view');
////or
////$view = new Zend_View();
//
//        $loader = new Zend_Loader_PluginLoader();
//        $loader->addPrefixPath('Izwt_View_Helper', 'Izwt/View/Helper');
//
//        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('viewRenderer');
//        $viewRenderer->view->addHelperPath('Izwt/View/Helper', 'Izwt_View_Helper');
//        return $loader;
//    }
}

