<?php

namespace App\Repository;

use App\Entity\Client;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Client[] findByName()
 */
class ClientRepository extends ServiceEntityRepository
{
    public function findByName()
    {
        return $this->entityManager->createQueryBuilder('client')
            ->orderBy('client.nom','DESC')
            ->getQuery()
            ->getResult()
            ;
    }
}
