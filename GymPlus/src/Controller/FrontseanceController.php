<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\TabSeance;


class FrontseanceController extends AbstractController
{
    /**
     * @Route("/frontseance", name="app_frontseance")
     */
    public function index(EntityManagerInterface $entityManager): Response
    {
        $TabSeance = $entityManager
            ->getRepository(TabSeance::class)
            ->findAll();

        return $this->render('frontseance/index.html.twig', [
            'TabSeances' => $TabSeance,
        ]);
    }
}
