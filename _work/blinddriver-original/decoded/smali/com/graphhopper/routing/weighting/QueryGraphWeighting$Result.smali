.class Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/weighting/QueryGraphWeighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field minTurnWeight:D

.field origInEdge:I

.field origOutEdge:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origInEdge:I

    .line 4
    iput v0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origOutEdge:I

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 5
    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;-><init>()V

    return-void
.end method
