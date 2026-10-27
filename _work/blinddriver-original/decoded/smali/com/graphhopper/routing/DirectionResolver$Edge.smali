.class Lcom/graphhopper/routing/DirectionResolver$Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/DirectionResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Edge"
.end annotation


# instance fields
.field final adjNode:I

.field final edgeId:I

.field final nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;


# direct methods
.method public constructor <init>(IILcom/graphhopper/routing/DirectionResolver$Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    iput p2, p0, Lcom/graphhopper/routing/DirectionResolver$Edge;->adjNode:I

    iput-object p3, p0, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    return-void
.end method
