<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
// using entity Article
use App\Entity\Article;

class AccueilController extends AbstractController
{
    /**
     * @Route("/accueil", name="accueil")
     */
    public function accueil()
    {
           // create a Doctrine manager and get back all articles
        $article = $this->getDoctrine()->getRepository(Article::class)->findAll();
        // create view with twig, with attribute NosArticles
        return $this->render("accueil/accueil.html.twig",["NosArticle"=>$article]);
    }
    /**
     * @Route("/debug/AccueilController", name="debugAccueilController")
     */
    public function debug()
    {
        return $this->render('accueil/debug.html.twig', [
            'controller_name' => 'AccueilController',
        ]);
    }
}
