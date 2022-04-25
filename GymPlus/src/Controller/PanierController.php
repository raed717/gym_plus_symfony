<?php


namespace App\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use App\Entity\Produit;
use App\Repository\ProduitRepository;

class PanierController extends AbstractController
{
    /**
     * @Route("/panier", name="app_panier_")
     */
   

        public function index(SessionInterface $session,ProduitRepository $produitRepository): Response

        {
            $panier = $session->get("panier", []);
    
            // On "fabrique" les données
            $dataPanier = [];
            $total = 0;
    
            foreach($panier as $id => $quantite){
                $produit = $produitRepository->find($id);
                $dataPanier[] = [
                    "produit" => $produit,
                    "quantite" => $quantite
                ];
                $total += $produit->getPrice() * $quantite;
            }
    
            
            return $this->render('panier/index.html.twig', compact("dataPanier", "total"));
    
        }


         


         /**
     * @Route("/add/{id}", name="add")
     */
    public function add(Produit $produit, SessionInterface $session)
    {
        // On récupère le panier actuel
        $panier = $session->get("panier", []);
        $id = $produit->getId();

        if(!empty($panier[$id])){
            $panier[$id]++;
        }else{
            $panier[$id] = 1;
        }

        // On sauvegarde dans la session
        $session->set("panier", $panier);

        return $this->redirectToRoute("app_panier_");
    }
    }







