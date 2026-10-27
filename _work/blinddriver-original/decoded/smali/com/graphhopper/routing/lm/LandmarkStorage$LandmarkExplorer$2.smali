.class Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->initLandmarkWeights(IIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp5/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

.field final synthetic val$finalMaxWeight:Ljava/util/Map$Entry;

.field final synthetic val$lmIdx:I

.field final synthetic val$maxedout:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$offset:I

.field final synthetic val$rowSize:J


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;JIILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    iput-wide p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$rowSize:J

    iput p4, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$lmIdx:I

    iput p5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$offset:I

    iput-object p6, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$maxedout:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$finalMaxWeight:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/graphhopper/routing/SPTEntry;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    invoke-static {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->c(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;)Lcom/graphhopper/routing/lm/LandmarkStorage;

    move-result-object v0

    int-to-long v1, p1

    iget-wide v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$rowSize:J

    mul-long/2addr v1, v3

    iget p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$lmIdx:I

    mul-int/lit8 p1, p1, 0x4

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$offset:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-wide v3, p2, Lcom/graphhopper/routing/SPTEntry;->weight:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setWeight(JD)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$maxedout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->val$finalMaxWeight:Ljava/util/Map$Entry;

    iget-wide p1, p2, Lcom/graphhopper/routing/SPTEntry;->weight:D

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;->apply(ILcom/graphhopper/routing/SPTEntry;)V

    return-void
.end method
