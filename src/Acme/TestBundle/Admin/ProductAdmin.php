<?php

namespace Acme\TestBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

class ProductAdmin extends Admin
{
   // protected $baseRouteName = 'sonata_post';
    protected $baseRoutePattern = 'product';
    // Fields to be shown on create/edit forms
    protected function configureFormFields(FormMapper $formMapper)
    {
        // $formMapper->add('Acme\TestBundle\Entity\Product', 'sonata_type_collection',
        //         array('required' => false, 'by_reference' => false),
        //         array('edit' => 'inline', 'inline' => 'table')
        //     );
        //     ->add('title', 'text', array('label' => 'Post Title'))
        //     ->add('enabled')
        //    // ->add('author', 'entity', array('class' => 'Acme\TestBundle\Entity\Product'))
        //     ->add('body') //if no type is specified, SonataAdminBundle tries to guess it
        // ;
        // $formMapper->add( 'body','genemu_tinymce',array('label' => 'Содержание'));
        $formMapper
           ->with('General')
                ->add('enname', 'text')
                ->add('frname', 'text')
                ->add('price')
                ->add('description')
                ->add('category')//, 'sonata_type_model', array('required' => false,'by_reference' => false))
           ->end()
        ;
    }

    // Fields to be shown on filter forms
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('price')
            ->add('category')
        ;
    }

    // Fields to be shown on lists
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
         //   ->addIdentifier('name')
            ->add('enname')
            ->add('frname')
            ->add('price')
            ->add('description')
            ->add('category', 'text')
            ->add('_action','action', array(
                'actions'=>array(
                    'edit'=>array(),
                    'delete'=>array()
                    )
                ))
        ;
    }

    // public function configureShowFields(ShowMapper $showMapper)
    // {
    //     $showMapper
    //         ->add('name')
    //         ->add('price')
    //         ->add('description')
    //         ->add('category')
    //     ;
    // }
}