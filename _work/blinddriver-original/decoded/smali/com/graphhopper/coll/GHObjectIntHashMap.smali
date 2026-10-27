.class public Lcom/graphhopper/coll/GHObjectIntHashMap;
.super Lcom/carrotsearch/hppc/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/carrotsearch/hppc/o1;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 1
    sget-object v2, Lcom/graphhopper/coll/GHIntObjectHashMap;->DETERMINISTIC:Lcom/carrotsearch/hppc/u;

    const/16 v3, 0xa

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/carrotsearch/hppc/o1;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 2
    sget-object v2, Lcom/graphhopper/coll/GHIntObjectHashMap;->DETERMINISTIC:Lcom/carrotsearch/hppc/u;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/carrotsearch/hppc/o1;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    .line 3
    sget-object v0, Lcom/graphhopper/coll/GHIntObjectHashMap;->DETERMINISTIC:Lcom/carrotsearch/hppc/u;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/carrotsearch/hppc/o1;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(IDLcom/carrotsearch/hppc/u;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/carrotsearch/hppc/o1;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/l1;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lcom/carrotsearch/hppc/l1;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/coll/GHObjectIntHashMap;-><init>(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/o1;->putAll(Lcom/carrotsearch/hppc/l1;)I

    return-void
.end method
