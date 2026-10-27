.class public final Lcom/graphhopper/routing/ev/EnumEncodedValue;
.super Lcom/graphhopper/routing/ev/IntEncodedValueImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum;",
        ">",
        "Lcom/graphhopper/routing/ev/IntEncodedValueImpl;"
    }
.end annotation


# instance fields
.field private final arr:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation runtime Lr5/v;
    .end annotation
.end field

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZZIIIIIILjava/lang/Class;)V
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
    .param p14    # Ljava/lang/Class;
        .annotation runtime Lr5/i0;
            value = "enum_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZZIIIIII",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .annotation runtime Lr5/k;
        mode = .enum Lr5/j;->m:Lr5/j;
    .end annotation

    .line 5
    invoke-direct/range {p0 .. p13}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IIIIZZIIIIII)V

    .line 6
    iput-object p14, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->enumType:Ljava/lang/Class;

    .line 7
    invoke-virtual {p14}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->arr:[Ljava/lang/Enum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, v0, p3}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IZ)V

    .line 3
    iput-object p2, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->enumType:Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->arr:[Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/graphhopper/routing/ev/EdgeIntAccess;",
            ")TE;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->arr:[Ljava/lang/Enum;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getEnumType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->enumType:Ljava/lang/Class;

    return-object p0
.end method

.method public getValues()[Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;->arr:[Ljava/lang/Enum;

    return-object p0
.end method

.method public final setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/graphhopper/routing/ev/EdgeIntAccess;",
            "TE;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void
.end method
