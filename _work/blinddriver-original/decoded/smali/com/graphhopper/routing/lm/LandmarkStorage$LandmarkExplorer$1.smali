.class Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setSubnetworks([BI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo5/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

.field final synthetic val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subnetworkId:I

.field final synthetic val$subnetworks:[B


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;[BILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$subnetworks:[B

    iput p3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$subnetworkId:I

    iput-object p4, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/graphhopper/routing/SPTEntry;)Z
    .locals 6

    .line 2
    iget-object p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$subnetworks:[B

    aget-byte v0, p2, p1

    .line 3
    iget v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$subnetworkId:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/graphhopper/routing/lm/LandmarkStorage;->e()Lnc/b;

    move-result-object p2

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    .line 5
    invoke-static {v1}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->access$000(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;)Lcom/graphhopper/storage/Graph;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createPoint(Lcom/graphhopper/storage/Graph;I)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$subnetworkId:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "subnetworkId for node "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") already set ("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Cannot change to "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-interface {p2, p1}, Lnc/b;->e(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-byte p0, v1

    .line 8
    aput-byte p0, p2, p1

    :cond_1
    return v2
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;->apply(ILcom/graphhopper/routing/SPTEntry;)Z

    move-result p0

    return p0
.end method
