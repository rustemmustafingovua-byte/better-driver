.class public Lcom/graphhopper/routing/SPTEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/graphhopper/routing/SPTEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public adjNode:I

.field public deleted:Z

.field public edge:I

.field public parent:Lcom/graphhopper/routing/SPTEntry;

.field public weight:D


# direct methods
.method public constructor <init>(ID)V
    .locals 6

    const/4 v1, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/SPTEntry;-><init>(IIDLcom/graphhopper/routing/SPTEntry;)V

    return-void
.end method

.method public constructor <init>(IIDLcom/graphhopper/routing/SPTEntry;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/graphhopper/routing/SPTEntry;->edge:I

    .line 4
    iput p2, p0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    .line 5
    iput-wide p3, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    .line 6
    iput-object p5, p0, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/graphhopper/routing/SPTEntry;)I
    .locals 3

    .line 2
    iget-wide v0, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-wide p0, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

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
    check-cast p1, Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/SPTEntry;->compareTo(Lcom/graphhopper/routing/SPTEntry;)I

    move-result p0

    return p0
.end method

.method public getParent()Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    return-object p0
.end method

.method public getWeightOfVisitedPath()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/SPTEntry;->deleted:Z

    return p0
.end method

.method public setDeleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/SPTEntry;->deleted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget v1, p0, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget-wide v2, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") weight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
