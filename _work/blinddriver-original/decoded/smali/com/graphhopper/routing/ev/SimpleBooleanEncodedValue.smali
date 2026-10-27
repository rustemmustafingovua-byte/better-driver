.class public final Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;
.super Lcom/graphhopper/routing/ev/IntEncodedValueImpl;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

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

    .line 3
    invoke-direct/range {p0 .. p13}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IIIIZZIIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public final getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void
.end method
