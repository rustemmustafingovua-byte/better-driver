.class public Lcom/graphhopper/routing/EdgeRestrictions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sourceOutEdge:I

.field private targetInEdge:I

.field private final unfavoredEdges:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/graphhopper/routing/EdgeRestrictions;->sourceOutEdge:I

    iput v0, p0, Lcom/graphhopper/routing/EdgeRestrictions;->targetInEdge:I

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {v0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/EdgeRestrictions;->unfavoredEdges:Lcom/carrotsearch/hppc/x;

    return-void
.end method


# virtual methods
.method public getSourceOutEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/EdgeRestrictions;->sourceOutEdge:I

    return p0
.end method

.method public getTargetInEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/EdgeRestrictions;->targetInEdge:I

    return p0
.end method

.method public getUnfavoredEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/EdgeRestrictions;->unfavoredEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public setSourceOutEdge(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/EdgeRestrictions;->sourceOutEdge:I

    return-void
.end method

.method public setTargetInEdge(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/EdgeRestrictions;->targetInEdge:I

    return-void
.end method
