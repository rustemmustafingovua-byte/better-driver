.class Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarjanHashIntSet"
.end annotation


# instance fields
.field private final set:Lcom/carrotsearch/hppc/q0;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/q0;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/q0;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;->set:Lcom/carrotsearch/hppc/q0;

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;->set:Lcom/carrotsearch/hppc/q0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    return-void
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;->set:Lcom/carrotsearch/hppc/q0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->contains(I)Z

    move-result p0

    return p0
.end method

.method public remove(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;->set:Lcom/carrotsearch/hppc/q0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->remove(I)Z

    return-void
.end method
