.class public final Lcom/graphhopper/storage/IntsRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/graphhopper/storage/IntsRef;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Lcom/graphhopper/storage/IntsRef;


# instance fields
.field public final ints:[I

.field public final length:I

.field public final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/graphhopper/storage/IntsRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/graphhopper/storage/IntsRef;-><init>(IZ)V

    sput-object v0, Lcom/graphhopper/storage/IntsRef;->EMPTY:Lcom/graphhopper/storage/IntsRef;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/IntsRef;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use instance EMPTY instead of capacity 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    .line 5
    iput p1, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    return-void
.end method

.method public constructor <init>([III)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    .line 9
    iput p2, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    .line 10
    iput p3, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    return-void
.end method

.method public static deepCopyOf(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/storage/IntsRef;
    .locals 4

    new-instance v0, Lcom/graphhopper/storage/IntsRef;

    iget-object v1, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    iget v2, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget v3, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    add-int/2addr v3, v2

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    const/4 v2, 0x0

    iget p0, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    invoke-direct {v0, v1, v2, p0}, Lcom/graphhopper/storage/IntsRef;-><init>([III)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/graphhopper/storage/IntsRef;)I
    .locals 7

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    .line 3
    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    .line 4
    iget-object v2, p1, Lcom/graphhopper/storage/IntsRef;->ints:[I

    .line 5
    iget v3, p1, Lcom/graphhopper/storage/IntsRef;->offset:I

    .line 6
    iget v4, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    iget v5, p1, Lcom/graphhopper/storage/IntsRef;->length:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    :goto_0
    if-ge v1, v4, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 7
    aget v1, v0, v1

    add-int/lit8 v6, v3, 0x1

    .line 8
    aget v3, v2, v3

    if-le v1, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-ge v1, v3, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    move v1, v5

    move v3, v6

    goto :goto_0

    .line 9
    :cond_3
    iget p0, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    iget p1, p1, Lcom/graphhopper/storage/IntsRef;->length:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/storage/IntsRef;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/IntsRef;->compareTo(Lcom/graphhopper/storage/IntsRef;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/graphhopper/storage/IntsRef;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/graphhopper/storage/IntsRef;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/IntsRef;->intsEquals(Lcom/graphhopper/storage/IntsRef;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public intsEquals(Lcom/graphhopper/storage/IntsRef;)Z
    .locals 6

    iget v0, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    iget v1, p1, Lcom/graphhopper/storage/IntsRef;->length:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v1, p1, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget-object p1, p1, Lcom/graphhopper/storage/IntsRef;->ints:[I

    iget v3, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    add-int/2addr v0, v3

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    aget v4, v4, v3

    aget v5, p1, v1

    if-eq v4, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public isEmpty()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isValid()Z
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    if-ltz v1, :cond_5

    array-length v2, v0

    const-string v3, ",ints.length="

    if-gt v1, v2, :cond_4

    iget v2, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    if-ltz v2, :cond_3

    array-length v4, v0

    if-gt v2, v4, :cond_2

    add-int v4, v2, v1

    const-string v5, ",length="

    if-ltz v4, :cond_1

    add-int/2addr v2, v1

    array-length v0, v0

    if-gt v2, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget v2, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    iget-object p0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    array-length p0, p0

    const-string v4, "offset+length out of bounds: offset="

    invoke-static {v4, v1, v5, v2, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget p0, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    const-string v2, "offset+length is negative: offset="

    invoke-static {v2, v1, v5, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget-object p0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    array-length p0, p0

    const-string v2, "offset out of bounds: "

    invoke-static {v2, v1, v3, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    const-string v1, "offset is negative: "

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    iget-object p0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    array-length p0, p0

    const-string v2, "length is out of bounds: "

    invoke-static {v2, v1, v3, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    const-string v1, "length is negative: "

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ints is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    iget v2, p0, Lcom/graphhopper/storage/IntsRef;->length:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    iget v3, p0, Lcom/graphhopper/storage/IntsRef;->offset:I

    if-le v1, v3, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
