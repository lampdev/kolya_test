<?php

namespace Acme\TestBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Acme\TestBundle\Entity\Product;
use Acme\TestBundle\Entity\Category;

class LoadUserData implements FixtureInterface
{
    /**
     * {@inheritDoc}
     */
    public function load(ObjectManager $manager)
    {	
    	for ($i=0; $i < 5; $i++) { 

	    	$someCategory = new Category();
	        $someCategory->setName($this->randName());

	        for ($j=0; $j < 20; $j++) { 

		        $someProduct = new Product();
		        $someProduct->setName('en='.$this->randName().';fr='.$this->randNameFrench());
		        $someProduct->setPrice($this->randPrice());
		        $someProduct->setDescription('');
		        $someProduct->setCategory($someCategory);

		       	$manager->persist($someProduct); 
		    } 

	        $manager->persist($someCategory);           
    	}
    	$manager->flush();
    }

    public function randName(){

		$symbols = 'wqertyuiopasdfghjklzxcvbnm';
		$name = '';
		$quantity = rand(6, 10);
		for($i=1; $i<=$quantity; $i++){
			$name .= $symbols[rand(0, strlen($symbols)-1)]; 
		}
		return $name;
    }

    public function randNameFrench(){

		$symbols = 'wqertyuiopasdfghjklzxcvbnm';
		$name = '';
		$quantity = rand(6, 10);
		for($i=1; $i<=$quantity; $i++){
			$name .= $symbols[rand(0, strlen($symbols)-1)]; 
		}
		return $name;
    }


    public function randPrice(){

		$symbols = '123456789';
		$price = '';
		$quantity = rand(4, 6);
		for($i=1; $i<=$quantity; $i++){
			if ($quantity-$i == 2){
				$price.='.';
			}
			else{
				$price .= $symbols[rand(0, strlen($symbols)-1)]; 
			}
		}
		return $price;
    }
}