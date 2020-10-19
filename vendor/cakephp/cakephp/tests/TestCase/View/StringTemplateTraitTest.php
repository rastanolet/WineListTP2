<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @since         3.0.0
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */
namespace Cake\Test\TestCase\View;

use Cake\Core\InstanceConfigTrait;
use Cake\TestSuite\TestCase;
use Cake\View\StringTemplateTrait;

/**
 * TestStringTemplate
 */
class TestStringTemplate
{
    use InstanceConfigTrait;
    use StringTemplateTrait;

    /**
     * _defaultConfig
     *
     * @var array
     */
    protected $_defaultConfig = [];
}

/**
 * StringTemplateTraitTest class
 */
class StringTemplateTraitTest extends TestCase
{
    /**
     * @var TestStringTemplate
     */
    public $Template;

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $this->Template = new TestStringTemplate();
    }

    /**
     * testInitStringTemplates
     *
     * @return void
     */
    public function testInitStringTemplates()
    {
        $templates = [
            'text' => '<p>{{text}}</p>',
        ];
        $this->Template->setTemplates($templates);

        $this->assertEquals(
            [
                'text' => '<p>{{text}}</p>',
            ],
            $this->Template->getTemplates(),
            'newly added template should be included in template list'
        );
    }

    /**
     * test settings['templates']
     *
     * @return void
     */
    public function testInitStringTemplatesArrayForm()
    {
        $this->Template->setConfig(
            'templates.text',
            '<p>{{text}}</p>'
        );

        $this->assertEquals(
            [
                'text' => '<p>{{text}}</p>',
            ],
            $this->Template->getTemplates(),
            'Configured templates should be included in template list'
        );
    }

    /**
     * testFormatStringTemplate
     *
     * @return void
     */
    public function testFormatStringTemplate()
    {
        $templates = [
            'text' => '<p>{{text}}</p>',
        ];
        $this->Template->setTemplates($templates);
        $result = $this->Template->formatTemplate('text', [
            'text' => 'CakePHP',
        ]);
        $this->assertEquals(
            '<p>CakePHP</p>',
            $result
        );
    }

    /**
     * testGetTemplater
     *
     * @return void
     */
    public function testGetTemplater()
    {
        $templates = [
            'text' => '<p>{{text}}</p>',
        ];
        $this->Template->setTemplates($templates);
        $result = $this->Template->templater();
        $this->assertInstanceOf('Cake\View\StringTemplate', $result);
    }
}
