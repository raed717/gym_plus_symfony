<?php

namespace App\Controller;
use App\Entity\Client;
use App\Form\ClientType;

use Doctrine\Persistence\ObjectManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\HttpFoundation\Session\Session;
 

class SecurityController extends AbstractController
{
    /**
     * @Route("/inscription", name="security_registration")
     */
    public function registration(Request $request, EntityManagerInterface $manager, UserPasswordEncoderInterface $encoder)
    {
        $client = new Client();
        $form = $this->createForm(ClientType::class, $client);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){

            $hash = $encoder->encodePassword($client, $client->getPassword());
            $client->setMdpClient($hash);
            $manager->persist($client);
            $manager->flush();

            return $this->redirectToRoute('security_login');
        }
        return $this->render('security/registration.html.twig', [
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("/security_login", name="security_login")
     */
    public function login(): Response{

        $session = new Session();
        // set and get session attributes
        $session->set('name', 'Drak');
        $session->get('name');

        // set flash messages
        $session->getFlashBag()->add('notice', 'Profile updated');
        foreach ($session->getFlashBag()->get('notice', []) as $message) {
            echo '<div class="flash-notice">'.$message.'</div>';
        }



        return $this->render('security/login.html.twig');

    }

}
