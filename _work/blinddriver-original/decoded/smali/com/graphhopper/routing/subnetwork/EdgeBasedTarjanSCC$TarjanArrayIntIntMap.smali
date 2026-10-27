.class Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;
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
    name = "TarjanArrayIntIntMap"
.end annotation


# instance fields
.field private final arr:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;->arr:[I

    const/4 p0, -0x1

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;->arr:[I

    aget p0, p0, p1

    return p0
.end method

.method public has(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;->arr:[I

    aget p0, p0, p1

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public minTo(II)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;->arr:[I

    aget v0, p0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, p0, p1

    return-void
.end method

.method public set(II)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;->arr:[I

    aput p2, p0, p1

    return-void
.end method
