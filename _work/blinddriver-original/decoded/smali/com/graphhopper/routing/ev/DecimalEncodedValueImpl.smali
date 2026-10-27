.class public final Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;
.super Lcom/graphhopper/routing/ev/IntEncodedValueImpl;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# instance fields
.field private final factor:D

.field private final useMaximumAsInfinity:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDZZZ)V
    .locals 8

    div-double v0, p3, p5

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v5, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IIZZ)V

    if-nez p7, :cond_1

    .line 3
    iget p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    int-to-double p1, p1

    mul-double/2addr p1, p5

    cmpl-double p1, p1, p3

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    int-to-double v0, p0

    mul-double/2addr v0, p5

    const-string p0, "minStorableValue "

    const-string p2, " is not a multiple of the specified factor "

    .line 5
    invoke-static {p3, p4, p0, p2}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-wide p5, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    move/from16 p1, p9

    .line 8
    iput-boolean p1, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDZ)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v5, p3

    move v8, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDDZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZZIIIIIIDZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr5/i0;
            value = "name"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lr5/i0;
            value = "bits"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lr5/i0;
            value = "min_storable_value"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lr5/i0;
            value = "max_storable_value"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lr5/i0;
            value = "max_value"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lr5/i0;
            value = "negate_reverse_direction"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Lr5/i0;
            value = "store_two_directions"
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lr5/i0;
            value = "fwd_data_index"
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lr5/i0;
            value = "bwd_data_index"
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lr5/i0;
            value = "fwd_shift"
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Lr5/i0;
            value = "bwd_shift"
        .end annotation
    .end param
    .param p12    # I
        .annotation runtime Lr5/i0;
            value = "fwd_mask"
        .end annotation
    .end param
    .param p13    # I
        .annotation runtime Lr5/i0;
            value = "bwd_mask"
        .end annotation
    .end param
    .param p14    # D
        .annotation runtime Lr5/i0;
            value = "factor"
        .end annotation
    .end param
    .param p16    # Z
        .annotation runtime Lr5/i0;
            value = "use_maximum_as_infinity"
        .end annotation
    .end param
    .annotation runtime Lr5/k;
        mode = .enum Lr5/j;->m:Lr5/j;
    .end annotation

    .line 13
    invoke-direct/range {p0 .. p13}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IIIIZZIIIIII)V

    .line 14
    iput-wide p14, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    move/from16 p1, p16

    .line 15
    iput-boolean p1, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    return-void
.end method


# virtual methods
.method public getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I

    move-result p1

    iget-boolean p2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    if-ne p1, p2, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    int-to-double p1, p1

    iget-wide v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method public getMaxOrMaxStorableDecimal()D
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getMaxOrMaxStorableInt()I

    move-result v0

    iget-boolean v1, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    if-ne v0, v1, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_0
    int-to-double v0, v0

    iget-wide v2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxStorableDecimal()D
    .locals 4

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinStorableDecimal()D
    .locals 4

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNextStorableValue(D)D
    .locals 4

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->getMaxStorableDecimal()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->getMaxStorableDecimal()D

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": There is no next storable value for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ". max:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    mul-double/2addr v0, v2

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_2
    iget-wide v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-double p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public getSmallestNonZeroValue()D
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->negateReverseDirection:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getting the smallest non-zero value is not possible if minValue!=0 or negateReverseDirection"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->useMaximumAsInfinity:Z

    if-eqz v0, :cond_1

    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    int-to-double v1, v0

    iget-wide v3, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    mul-double/2addr v1, v3

    cmpl-double v1, p4, v1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->uncheckedSet(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void

    :cond_1
    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    div-double/2addr p4, v0

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    int-to-double v0, v0

    cmpl-double v0, p4, v0

    const-string v1, ", factor: "

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    int-to-double v2, v0

    cmpg-double v0, p4, v2

    if-ltz v0, :cond_3

    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p4

    long-to-int p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->uncheckedSet(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    iget-wide v2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value too small for encoding "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", minValue:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    iget-wide v2, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;->factor:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value too large for encoding: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", maxValue:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "NaN value for "

    const-string p3, " not allowed!"

    invoke-static {p2, p0, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value cannot be infinite if useMaximumAsInfinity is false"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Call init before using EncodedValue "

    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
