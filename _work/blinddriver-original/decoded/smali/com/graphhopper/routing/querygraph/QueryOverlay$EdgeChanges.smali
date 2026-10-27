.class Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/querygraph/QueryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeChanges"
.end annotation


# instance fields
.field private final additionalEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field

.field private final removedEdges:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->additionalEdges:Ljava/util/List;

    new-instance p1, Lcom/carrotsearch/hppc/x;

    invoke-direct {p1, p2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->removedEdges:Lcom/carrotsearch/hppc/x;

    return-void
.end method


# virtual methods
.method public getAdditionalEdges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->additionalEdges:Ljava/util/List;

    return-object p0
.end method

.method public getRemovedEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->removedEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method
