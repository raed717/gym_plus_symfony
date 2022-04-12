<?php

namespace App\Form;

use App\Entity\TabSeance;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class TabSeanceType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('typeSeance')
            ->add('dateDebut')
            ->add('dateFin')
            ->add('idCoach')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => TabSeance::class,
        ]);
    }
}
