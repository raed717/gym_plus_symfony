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

        }

        return $this->render('security/registration.html.twig', [
            'form' => $form->createView()
        ]);
    }
}
