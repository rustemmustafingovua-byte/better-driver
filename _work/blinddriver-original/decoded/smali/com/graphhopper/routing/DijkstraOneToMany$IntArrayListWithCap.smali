.class Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;
.super Lcom/carrotsearch/hppc/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/DijkstraOneToMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArrayListWithCap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCapacity()I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    array-length p0, p0

    return p0
.end method
