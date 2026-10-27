.class Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;
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
    name = "TarjanArrayIntSet"
.end annotation


# instance fields
.field private final set:Lcom/carrotsearch/hppc/j;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/j;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;->set:Lcom/carrotsearch/hppc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hppc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Was meant to be hppc BitSet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;->set:Lcom/carrotsearch/hppc/j;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/j;->h(J)V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;->set:Lcom/carrotsearch/hppc/j;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result p0

    return p0
.end method

.method public remove(I)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;->set:Lcom/carrotsearch/hppc/j;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/j;->f(J)V

    return-void
.end method
