<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ViewController extends AbstractController
{
    /**
     * @Route("/view", name="app_view")
     */
    public function index(): Response
    {
        return $this->render('view/index.html.twig', [
            'controller_name' => 'ViewController',
        ]);
    }
    /**
     * @Route("/dashboard", name="display_Dashboard")
     */

    public function indexDashboard(): Response
    {
        return $this->render('Back.html.twig');
    }
    
    /**
     * @Route("/front", name="display_front")
     */
    public function indexfront(): Response
    {
        return $this->render('Front.html.twig');
    }
}
