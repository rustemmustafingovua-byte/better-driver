.class public Lcom/graphhopper/storage/index/PixelGridTraversal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bounds:Lcom/graphhopper/util/shapes/BBox;

.field private final deltaX:D

.field private final deltaY:D

.field parts:I


# direct methods
.method public constructor <init>(ILcom/graphhopper/util/shapes/BBox;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/storage/index/PixelGridTraversal;->parts:I

    iput-object p2, p0, Lcom/graphhopper/storage/index/PixelGridTraversal;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v0, p2, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v2, p2, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaY:D

    iget-wide v0, p2, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide p1, p2, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaX:D

    return-void
.end method


# virtual methods
.method public traverse(Lpb/a;Lpb/a;Ljava/util/function/Consumer;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb/a;",
            "Lpb/a;",
            "Ljava/util/function/Consumer<",
            "Lpb/a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v1, Lpb/a;->l:D

    iget-object v6, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v7, v6, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr v4, v7

    iget-wide v9, v1, Lpb/a;->m:D

    iget-wide v11, v6, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr v9, v11

    iget-wide v13, v2, Lpb/a;->l:D

    sub-double/2addr v13, v7

    iget-wide v1, v2, Lpb/a;->m:D

    sub-double/2addr v1, v11

    cmpg-double v6, v4, v13

    const/4 v7, -0x1

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    cmpg-double v11, v9, v1

    if-gez v11, :cond_1

    const/4 v7, 0x1

    :cond_1
    iget-wide v11, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaX:D

    sub-double v15, v13, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    div-double v11, v11, v17

    move-wide/from16 v17, v9

    const/16 p1, 0x1

    iget-wide v8, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaY:D

    sub-double v19, v1, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    div-double v8, v8, v21

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaX:D

    div-double v1, v4, v1

    double-to-int v1, v1

    iget v2, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->parts:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-wide/from16 v23, v4

    iget-wide v4, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaY:D

    div-double v4, v17, v4

    double-to-int v2, v4

    iget v4, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->parts:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaX:D

    div-double/2addr v13, v4

    double-to-int v4, v13

    iget v5, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->parts:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-wide v13, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaY:D

    div-double v13, v21, v13

    double-to-int v5, v13

    iget v10, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->parts:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gez v6, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    move/from16 v13, p1

    :goto_1
    add-int/2addr v13, v1

    int-to-double v13, v13

    move-wide/from16 v21, v11

    iget-wide v10, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaX:D

    mul-double/2addr v13, v10

    sub-double v13, v13, v23

    div-double/2addr v13, v15

    if-gez v7, :cond_3

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    move/from16 v10, p1

    :goto_2
    add-int/2addr v10, v2

    int-to-double v10, v10

    move/from16 p1, v6

    move/from16 p2, v7

    iget-wide v6, v0, Lcom/graphhopper/storage/index/PixelGridTraversal;->deltaY:D

    mul-double/2addr v10, v6

    sub-double v10, v10, v17

    div-double v10, v10, v19

    new-instance v0, Lpb/a;

    int-to-double v6, v1

    move-wide v15, v8

    int-to-double v8, v2

    invoke-direct {v0, v6, v7, v8, v9}, Lpb/a;-><init>(DD)V

    invoke-interface {v3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_3
    if-ne v2, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    :goto_4
    cmpg-double v0, v13, v10

    if-ltz v0, :cond_6

    if-ne v2, v5, :cond_7

    :cond_6
    if-eq v1, v4, :cond_7

    add-double v13, v13, v21

    add-int v1, v1, p1

    goto :goto_5

    :cond_7
    add-double/2addr v10, v15

    add-int v2, v2, p2

    :goto_5
    new-instance v0, Lpb/a;

    int-to-double v6, v1

    int-to-double v8, v2

    invoke-direct {v0, v6, v7, v8, v9}, Lpb/a;-><init>(DD)V

    invoke-interface {v3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3
.end method
