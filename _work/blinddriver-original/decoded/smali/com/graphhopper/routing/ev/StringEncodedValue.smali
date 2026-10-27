.class public final Lcom/graphhopper/routing/ev/StringEncodedValue;
.super Lcom/graphhopper/routing/ev/IntEncodedValueImpl;
.source "SourceFile"


# instance fields
.field private final indexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxValues:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/graphhopper/routing/ev/StringEncodedValue;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZZIIIIIIILjava/util/List;Ljava/util/HashMap;)V
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
    .param p14    # I
        .annotation runtime Lr5/i0;
            value = "max_values"
        .end annotation
    .end param
    .param p15    # Ljava/util/List;
        .annotation runtime Lr5/i0;
            value = "values"
        .end annotation
    .end param
    .param p16    # Ljava/util/HashMap;
        .annotation runtime Lr5/i0;
            value = "index_map"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZZIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lr5/k;
        mode = .enum Lr5/j;->m:Lr5/j;
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p13}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IIIIZZIIIIII)V

    .line 24
    invoke-interface {p15}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p14, :cond_0

    .line 25
    iput p14, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->maxValues:I

    move-object p1, p15

    .line 26
    iput-object p1, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    move-object/from16 p1, p16

    .line 27
    iput-object p1, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    return-void

    :cond_0
    move-object p1, p15

    .line 28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    invoke-interface {p15}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "Number of values is higher than the maximum value count: "

    const-string p3, " > "

    .line 30
    invoke-static {p2, p1, p3, p14}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IZ)V

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    .line 7
    iput p2, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->maxValues:I

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-gt p4, p2, :cond_1

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    .line 11
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 12
    iget-object p4, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    add-int/lit8 v0, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_0

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const-string p3, "Number of values is higher than the maximum value count: "

    const-string p4, " > "

    .line 15
    invoke-static {p3, p1, p4, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, v0, p3}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IZ)V

    .line 3
    invoke-static {p2}, Lcom/graphhopper/routing/ev/StringEncodedValue;->roundUp(I)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->maxValues:I

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    return-void
.end method

.method private static roundUp(I)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    ushr-int p0, v0, p0

    return p0
.end method


# virtual methods
.method public final getString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->maxValues:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->indexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;->maxValues:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Maximum number of values reached for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void
.end method
