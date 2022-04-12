<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TabSeance
 *
 * @ORM\Table(name="tab_seance", indexes={@ORM\Index(name="id_coach", columns={"id_coach"})})
 * @ORM\Entity
 */
class TabSeance
{
    /**
     * @var int
     *
     * @ORM\Column(name="id_seance", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idSeance;

    /**
     * @var string
     *
     * @ORM\Column(name="type_seance", type="string", length=25, nullable=false)
     */
    private $typeSeance;

    /**
     * @var string
     *
     * @ORM\Column(name="date_debut", type="string", length=20, nullable=false)
     */
    private $dateDebut;

    /**
     * @var string
     *
     * @ORM\Column(name="date_fin", type="string", length=20, nullable=false)
     */
    private $dateFin;

    /**
     * @var \TabCoach
     *
     * @ORM\ManyToOne(targetEntity="TabCoach")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_coach", referencedColumnName="id_coach")
     * })
     */
    private $idCoach;


}
