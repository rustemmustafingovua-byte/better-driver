.class public Lcom/graphhopper/routing/ev/IntEncodedValueImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/IntEncodedValue;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final bits:I

.field private bwdDataIndex:I

.field bwdMask:I

.field bwdShift:I

.field private fwdDataIndex:I

.field fwdMask:I

.field fwdShift:I

.field final maxStorableValue:I

.field maxValue:I

.field final minStorableValue:I

.field private final name:Ljava/lang/String;

.field final negateReverseDirection:Z

.field private final storeTwoDirections:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZZIIIIII)V
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
    .annotation runtime Lr5/k;
        mode = .enum Lr5/j;->m:Lr5/j;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->name:Ljava/lang/String;

    .line 41
    iput-boolean p7, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    .line 42
    iput p2, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bits:I

    .line 43
    iput-boolean p6, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->negateReverseDirection:Z

    .line 44
    iput p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    .line 45
    iput p4, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    .line 46
    iput p5, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxValue:I

    .line 47
    iput p8, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdDataIndex:I

    .line 48
    iput p9, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdDataIndex:I

    .line 49
    iput p10, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdShift:I

    .line 50
    iput p11, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdShift:I

    .line 51
    iput p12, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdMask:I

    .line 52
    iput p13, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdShift:I

    .line 4
    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdShift:I

    .line 5
    invoke-static {p1}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isValidEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez p2, :cond_6

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_5

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": negating value for reverse direction only works for minValue == 0 and !storeTwoDirections but was minValue="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", storeTwoDirections="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->name:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    const/4 p1, 0x1

    shl-int p5, p1, p2

    sub-int/2addr p5, p1

    if-eqz p4, :cond_2

    neg-int p1, p5

    goto :goto_1

    :cond_2
    move p1, p3

    .line 9
    :goto_1
    iput p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    add-int/2addr p5, p3

    .line 10
    iput p5, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    const/high16 p1, -0x80000000

    if-eq p3, p1, :cond_4

    .line 11
    iput p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxValue:I

    if-eqz p4, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 12
    :cond_3
    iput p2, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bits:I

    .line 13
    iput-boolean p4, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->negateReverseDirection:Z

    return-void

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "-2147483648 is not allowed for minValue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, ": at the moment the number of reserved bits cannot be more than 31"

    .line 16
    invoke-static {p1, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, ": bits cannot be zero or negative"

    .line 19
    invoke-static {p1, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "EncodedValue name wasn\'t valid: "

    const-string p3, ". Use lower case letters, underscore and numbers only."

    .line 22
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method private checkValue(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->name:Ljava/lang/String;

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value too small for encoding "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", minValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->name:Ljava/lang/String;

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value too large for encoding: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EncodedValue "

    const-string v1, " not initialized"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isLowerLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidEncodedValue(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    const-string v0, "in_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "backward_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isLowerLetter(C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljavax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_2

    if-lez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isLowerLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    move v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v2
.end method


# virtual methods
.method public final getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdDataIndex:I

    invoke-interface {p3, p2, p1}, Lcom/graphhopper/routing/ev/EdgeIntAccess;->getInt(II)I

    move-result p1

    iget p2, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    iget p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdMask:I

    and-int/2addr p1, p3

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdShift:I

    ushr-int p0, p1, p0

    add-int/2addr p2, p0

    return p2

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdDataIndex:I

    invoke-interface {p3, p2, v0}, Lcom/graphhopper/routing/ev/EdgeIntAccess;->getInt(II)I

    move-result p2

    iget-boolean p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->negateReverseDirection:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    iget p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdMask:I

    and-int/2addr p2, p3

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdShift:I

    ushr-int p0, p2, p0

    add-int/2addr p1, p0

    neg-int p0, p1

    return p0

    :cond_1
    iget p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    iget p3, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdMask:I

    and-int/2addr p2, p3

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdShift:I

    ushr-int p0, p2, p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getMaxOrMaxStorableInt()I
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxValue:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getMaxStorableInt()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getMaxStorableInt()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxStorableValue:I

    return p0
.end method

.method public getMinStorableInt()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bits:I

    invoke-virtual {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->next(I)V

    iget v0, p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->bitMask:I

    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdMask:I

    iget v0, p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->dataIndex:I

    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdDataIndex:I

    iget v0, p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->shift:I

    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdShift:I

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bits:I

    invoke-virtual {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->next(I)V

    iget v0, p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->bitMask:I

    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdMask:I

    iget v0, p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->dataIndex:I

    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdDataIndex:I

    iget p1, p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->shift:I

    iput p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdShift:I

    :cond_0
    iget-boolean p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bits:I

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bits:I

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call init multiple times"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isInitialized()Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdMask:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStoreTwoDirections()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    return p0
.end method

.method public final setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->checkValue(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->uncheckedSet(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final uncheckedSet(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->negateReverseDirection:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    neg-int p4, p4

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->storeTwoDirections:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, ": value for reverse direction would overwrite forward direction. Enable storeTwoDirections for this EncodedValue or don\'t use setReverse"

    invoke-static {p0, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxValue:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->maxValue:I

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->minStorableValue:I

    sub-int/2addr p4, v0

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdDataIndex:I

    invoke-interface {p3, p2, p1}, Lcom/graphhopper/routing/ev/EdgeIntAccess;->getInt(II)I

    move-result p1

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdMask:I

    not-int v0, v0

    and-int/2addr p1, v0

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdDataIndex:I

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->bwdShift:I

    shl-int p0, p4, p0

    or-int/2addr p0, p1

    invoke-interface {p3, p2, v0, p0}, Lcom/graphhopper/routing/ev/EdgeIntAccess;->setInt(III)V

    return-void

    :cond_3
    iget p1, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdDataIndex:I

    invoke-interface {p3, p2, p1}, Lcom/graphhopper/routing/ev/EdgeIntAccess;->getInt(II)I

    move-result p1

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdMask:I

    not-int v0, v0

    and-int/2addr p1, v0

    iget v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdDataIndex:I

    iget p0, p0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->fwdShift:I

    shl-int p0, p4, p0

    or-int/2addr p0, p1

    invoke-interface {p3, p2, v0, p0}, Lcom/graphhopper/routing/ev/EdgeIntAccess;->setInt(III)V

    return-void
.end method
