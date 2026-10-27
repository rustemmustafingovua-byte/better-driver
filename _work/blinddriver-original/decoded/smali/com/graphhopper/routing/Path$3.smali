.class Lcom/graphhopper/routing/Path$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/Path$EdgeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/Path;->calcPoints()Lcom/graphhopper/util/PointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/Path;

.field final synthetic val$points:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/Path;Lcom/graphhopper/util/PointList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/Path$3;->this$0:Lcom/graphhopper/routing/Path;

    iput-object p2, p0, Lcom/graphhopper/routing/Path$3;->val$points:Lcom/graphhopper/util/PointList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public next(Lcom/graphhopper/util/EdgeIteratorState;II)V
    .locals 0

    sget-object p2, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/graphhopper/routing/Path$3;->val$points:Lcom/graphhopper/util/PointList;

    invoke-virtual {p3, p1, p2}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
