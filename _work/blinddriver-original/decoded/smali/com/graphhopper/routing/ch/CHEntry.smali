.class public Lcom/graphhopper/routing/ch/CHEntry;
.super Lcom/graphhopper/routing/SPTEntry;
.source "SourceFile"


# instance fields
.field public incEdge:I


# direct methods
.method public constructor <init>(ID)V
    .locals 7

    const/4 v2, -0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/ch/CHEntry;-><init>(IIIDLcom/graphhopper/routing/SPTEntry;)V

    return-void
.end method

.method public constructor <init>(IIIDLcom/graphhopper/routing/SPTEntry;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/SPTEntry;-><init>(IIDLcom/graphhopper/routing/SPTEntry;)V

    .line 3
    iput p2, v0, Lcom/graphhopper/routing/ch/CHEntry;->incEdge:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getParent()Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHEntry;->getParent()Lcom/graphhopper/routing/ch/CHEntry;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lcom/graphhopper/routing/ch/CHEntry;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    check-cast p0, Lcom/graphhopper/routing/ch/CHEntry;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/graphhopper/routing/SPTEntry;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHEntry;->incEdge:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", incEdge: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
