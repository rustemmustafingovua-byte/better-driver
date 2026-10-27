.class Lcom/graphhopper/util/PathSimplification$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/PathSimplification$Partition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/util/PathSimplification;->simplify(Lcom/graphhopper/ResponsePath;Lcom/graphhopper/util/RamerDouglasPeucker;Z)Lcom/graphhopper/util/PointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$intervals:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/util/PathSimplification$1;->val$intervals:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntervalLength(I)I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification$1;->val$intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/util/PathSimplification$Interval;

    iget v0, v0, Lcom/graphhopper/util/PathSimplification$Interval;->end:I

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification$1;->val$intervals:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/PathSimplification$Interval;

    iget p0, p0, Lcom/graphhopper/util/PathSimplification$Interval;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public setInterval(III)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification$1;->val$intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/util/PathSimplification$Interval;

    iput p2, v0, Lcom/graphhopper/util/PathSimplification$Interval;->start:I

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification$1;->val$intervals:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/PathSimplification$Interval;

    iput p3, p0, Lcom/graphhopper/util/PathSimplification$Interval;->end:I

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification$1;->val$intervals:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
