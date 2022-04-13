<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TabCoach
 *
 * @ORM\Table(name="tab_coach")
 * @ORM\Entity
 */
class TabCoach
{
    /**
     * @var int
     *
     * @ORM\Column(name="id_coach", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idCoach;

    /**
     * @var string
     *
     * @ORM\Column(name="nom_coach", type="string", length=25, nullable=false)
     */
    private $nomCoach;

    /**
     * @var string
     *
     * @ORM\Column(name="specialite", type="string", length=20, nullable=false)
     */
    private $specialite;

    /**
     * @var string
     *
     * @ORM\Column(name="mail", type="string", length=25, nullable=false)
     */
    private $mail;

    /**
     * @var string
     *
     * @ORM\Column(name="mdp_coach", type="string", length=25, nullable=false)
     */
    private $mdpCoach;



    /**
     * Get the value of idCoach
     *
     * @return  int
     */ 
    public function getIdCoach()
    {
        return $this->idCoach;
    }

    /**
     * Set the value of idCoach
     *
     * @param  int  $idCoach
     *
     * @return  self
     */ 
    public function setIdCoach(int $idCoach)
    {
        $this->idCoach = $idCoach;

        return $this;
    }
}
