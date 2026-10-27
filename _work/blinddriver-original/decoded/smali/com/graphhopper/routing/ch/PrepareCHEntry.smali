.class public Lcom/graphhopper/routing/ch/PrepareCHEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/graphhopper/routing/ch/PrepareCHEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public adjNode:I

.field public firstEdgeKey:I

.field public incEdgeKey:I

.field public origEdges:I

.field public parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

.field public prepareEdge:I

.field public weight:D


# direct methods
.method public constructor <init>(IIIIDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iput p2, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    iput p3, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    iput p4, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iput-wide p5, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iput p7, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/graphhopper/routing/ch/PrepareCHEntry;)I
    .locals 3

    .line 2
    iget-wide v0, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iget-wide p0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/ch/PrepareCHEntry;->compareTo(Lcom/graphhopper/routing/ch/PrepareCHEntry;)I

    move-result p0

    return p0
.end method

.method public getParent()Lcom/graphhopper/routing/ch/PrepareCHEntry;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget v1, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") weight: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", incEdgeKey: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
