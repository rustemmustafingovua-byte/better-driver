.class public Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedComponents"
.end annotation


# instance fields
.field private biggestComponent:Lcom/carrotsearch/hppc/x;

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/x;",
            ">;"
        }
    .end annotation
.end field

.field private numComponents:I

.field private numEdgeKeys:I

.field private final singleEdgeComponents:Lcom/carrotsearch/hppc/j;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->components:Ljava/util/List;

    new-instance v0, Lcom/carrotsearch/hppc/j;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->singleEdgeComponents:Lcom/carrotsearch/hppc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hppc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/carrotsearch/hppc/x;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->biggestComponent:Lcom/carrotsearch/hppc/x;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Was meant to be hppc BitSet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->biggestComponent:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->components:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->numComponents:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->numEdgeKeys:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)Lcom/carrotsearch/hppc/j;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->singleEdgeComponents:Lcom/carrotsearch/hppc/j;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;Lcom/carrotsearch/hppc/x;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->biggestComponent:Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method public static bridge synthetic g(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->numComponents:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->numEdgeKeys:I

    return-void
.end method


# virtual methods
.method public getBiggestComponent()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->biggestComponent:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getComponents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/x;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->components:Ljava/util/List;

    return-object p0
.end method

.method public getEdgeKeys()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->numEdgeKeys:I

    return p0
.end method

.method public getSingleEdgeComponents()Lcom/carrotsearch/hppc/j;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->singleEdgeComponents:Lcom/carrotsearch/hppc/j;

    return-object p0
.end method

.method public getTotalComponents()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->numComponents:I

    return p0
.end method
