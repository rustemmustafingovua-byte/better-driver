.class Lcom/graphhopper/util/FinishInstruction$1;
.super Lcom/graphhopper/util/PointList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/util/FinishInstruction;-><init>(Ljava/lang/String;DDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$ele:D

.field final synthetic val$lat:D

.field final synthetic val$lon:D


# direct methods
.method public constructor <init>(IZDDD)V
    .locals 0

    iput-wide p3, p0, Lcom/graphhopper/util/FinishInstruction$1;->val$lat:D

    iput-wide p5, p0, Lcom/graphhopper/util/FinishInstruction$1;->val$lon:D

    iput-wide p7, p0, Lcom/graphhopper/util/FinishInstruction$1;->val$ele:D

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    move-wide p1, p3

    move-wide p3, p5

    move-wide p5, p7

    invoke-virtual/range {p0 .. p6}, Lcom/graphhopper/util/PointList;->add(DDD)V

    return-void
.end method
