package fr.epsi.eboutique.business.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@IdClass( value = CommandeLignePK.class )
@Table( name = "comm_produit" )
public class CommandeLigne {

    @Id
    @ManyToOne
    @JoinColumn( name = "commande_id" )
    private Commande commande;

    @Id
    @ManyToOne
    @JoinColumn( name = "produit_id" )
    private Produit  produit;

    @Column( name = "quantite" )
    private int      quantite;

    public Commande getCommande() {
        return commande;
    }

    public void setCommande( Commande commande ) {
        this.commande = commande;
    }

    public Produit getProduit() {
        return produit;
    }

    public void setProduit( Produit produit ) {
        this.produit = produit;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite( int quantite ) {
        this.quantite = quantite;
    }

    public BigDecimal getTotal() {
        return produit.getPrix().multiply( BigDecimal.valueOf( quantite ) );
    }

}
