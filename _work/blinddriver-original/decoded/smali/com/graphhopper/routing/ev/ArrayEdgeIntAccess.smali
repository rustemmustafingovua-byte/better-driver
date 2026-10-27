.class public Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/EdgeIntAccess;


# instance fields
.field private final arr:Lcom/carrotsearch/hppc/x;

.field private final intsPerEdge:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->arr:Lcom/carrotsearch/hppc/x;

    iput p1, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->intsPerEdge:I

    return-void
.end method

.method public static createFromBytes(I)Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;
    .locals 5

    new-instance v0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;

    int-to-double v1, p0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getInt(II)I
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->intsPerEdge:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->arr:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->arr:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    return p0
.end method

.method public setInt(III)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->intsPerEdge:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->arr:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p2, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->arr:Lcom/carrotsearch/hppc/x;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/carrotsearch/hppc/x;->resize(I)V

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/ev/ArrayEdgeIntAccess;->arr:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1, p3}, Lcom/carrotsearch/hppc/x;->set(II)I

    return-void
.end method
