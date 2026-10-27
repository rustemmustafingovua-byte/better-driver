.class Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shortcut"
.end annotation


# instance fields
.field flags:I

.field from:I

.field prepareEdgeBwd:I

.field prepareEdgeFwd:I

.field skippedEdge1:I

.field skippedEdge2:I

.field to:I

.field weight:D


# direct methods
.method public constructor <init>(IIIIIIID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeFwd:I

    iput p2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeBwd:I

    iput p3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->from:I

    iput p4, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->to:I

    iput p5, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge1:I

    iput p6, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge2:I

    iput p7, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    iput-wide p8, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->weight:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScDirMask()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->from:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->from:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->to:I

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->weight:D

    iget v4, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge1:I

    iget p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge2:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", weight:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
