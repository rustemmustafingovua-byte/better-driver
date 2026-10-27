.class Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarjanHashIntIntMap"
.end annotation


# instance fields
.field private final map:Lcom/carrotsearch/hppc/e0;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/e0;

    new-instance v1, Lcom/carrotsearch/hppc/n;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/carrotsearch/hppc/e0;->r:Lcom/carrotsearch/hppc/u;

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2}, Lcom/carrotsearch/hppc/t;->a(D)V

    iget v3, v0, Lcom/carrotsearch/hppc/e0;->p:I

    if-gt p1, v3, :cond_0

    iget-object v3, v0, Lcom/carrotsearch/hppc/e0;->l:[I

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, v0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget-object v4, v0, Lcom/carrotsearch/hppc/e0;->m:[I

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/e0;->a(I)V

    if-eqz v3, :cond_2

    iget p1, v0, Lcom/carrotsearch/hppc/e0;->n:I

    iget-boolean v1, v0, Lcom/carrotsearch/hppc/e0;->q:Z

    add-int/2addr p1, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/carrotsearch/hppc/e0;->l([I[I)V

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;->map:Lcom/carrotsearch/hppc/e0;

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;->map:Lcom/carrotsearch/hppc/e0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/e0;->g(I)I

    move-result p0

    return p0
.end method

.method public has(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;->map:Lcom/carrotsearch/hppc/e0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/e0;->containsKey(I)Z

    move-result p0

    return p0
.end method

.method public minTo(II)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;->map:Lcom/carrotsearch/hppc/e0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/e0;->g(I)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/e0;->j(II)V

    return-void
.end method

.method public set(II)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;->map:Lcom/carrotsearch/hppc/e0;

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/e0;->j(II)V

    return-void
.end method
