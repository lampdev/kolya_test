<?php

namespace Acme\TestBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Product
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Product
{

    /**
     * @ORM\ManyToOne(targetEntity="Category", inversedBy="products")
     * @ORM\JoinColumn(name="category_id", referencedColumnName="id")
     */
    protected $category;
    
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     */
    protected $enname;

    /**
     * Get name
     *
     * @return string 
     */
    public function getEnname()
    {
        if ($this->name != null){
            $this->enname = $this->cutWord('en', $this->name);
        }
        return $this->enname;
    }

    protected $frname;

    /**
     * Get name
     *
     * @return string 
     */
    public function getFrname()
    {
        if ($this->name != null){
            $this->frname = $this->cutWord('fr', $this->name);
        }
        return $this->frname;
    }

    /**
     * @var float
     *
     * @ORM\Column(name="price", type="float")
     */
    private $price;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $enname,$frname
     * @return Product
     */
    public function setName($enname, $frname)
    {
        $this->name = 'en='.$enname.';fr='.$frname;
     //   $this->name = $name;
        return $this;
    }

    /**
     * Set name
     *
     * @param string $enname
     * @return Product
     */
    public function setEnname($enname)
    {
    //    $this->setName($enname,$this->frname);
        $this->enname = $enname;
        return $this;
    }
/**
     * Set name
     *
     * @param string $frname
     * @return Product
     */
    public function setFrname($frname)
    {
        $this->setName($this->enname,$frname);
        $this->frname = $frname;
        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
       // return $this->name;
    }

    /**
     * Set price
     *
     * @param float $price
     * @return Product
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price
     *
     * @return float 
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Product
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set category
     *
     * @param \Acme\TestBundle\Entity\Category $category
     * @return Product
     */
    public function setCategory(\Acme\TestBundle\Entity\Category $category = null)
    {
        $this->category = $category;

        return $this;
    }

    /**
     * Get category
     *
     * @return \Acme\TestBundle\Entity\Category 
     */
    public function getCategory()
    {
        return $this->category;
    }

    public function cutWord($language, $word)
    {
        $words = explode(';', $word);
        if ($language=='en'){
            $wordWithLang = $words[0];
        }elseif ($language=='fr') {
            $wordWithLang = $words[1];
        }
        $langAndNeedWord = explode('=', $wordWithLang);
        $result = $langAndNeedWord[1];
        return $result;
    }
}
