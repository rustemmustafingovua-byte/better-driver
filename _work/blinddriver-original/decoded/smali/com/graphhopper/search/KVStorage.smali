.class public Lcom/graphhopper/search/KVStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/search/KVStorage$KValue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_POINTER:J = 0x0L

.field private static final MAX_LENGTH:I = 0xff

.field static final MAX_UNIQUE_KEYS:I = 0x4000

.field private static final START_POINTER:J = 0x1L


# instance fields
.field private final bitUtil:Lcom/graphhopper/util/BitUtil;

.field private bytePointer:J

.field private final dir:Lcom/graphhopper/storage/Directory;

.field private final indexToClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final indexToKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final keys:Lcom/graphhopper/storage/DataAccess;

.field private lastEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;"
        }
    .end annotation
.end field

.field private lastEntryPointer:J

.field private final vals:Lcom/graphhopper/storage/DataAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Directory;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    sget-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iput-object v0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/graphhopper/search/KVStorage;->lastEntryPointer:J

    iput-object p1, p0, Lcom/graphhopper/search/KVStorage;->dir:Lcom/graphhopper/storage/Directory;

    const/16 v0, 0x2800

    if-eqz p2, :cond_0

    const-string p2, "edgekv_keys"

    invoke-interface {p1, p2, v0}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    const-string p2, "edgekv_vals"

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    return-void

    :cond_0
    const-string p2, "nodekv_keys"

    invoke-interface {p1, p2, v0}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    const-string p2, "nodekv_vals"

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    return-void
.end method

.method private classToShortName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "S"

    return-object p0

    :cond_0
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "i"

    return-object p0

    :cond_1
    const-class p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "l"

    return-object p0

    :cond_2
    const-class p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "f"

    return-object p0

    :cond_3
    const-class p0, Ljava/lang/Double;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "d"

    return-object p0

    :cond_4
    const-class p0, [B

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "["

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot find short name. Unknown class "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cutString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0xfa

    if-le v2, v3, :cond_0

    new-instance p0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :cond_0
    return-object p0
.end method

.method private deserializeObj(Ljava/util/concurrent/atomic/AtomicInteger;JLjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "J",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/graphhopper/search/KVStorage;->hasDynLength(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p2, p3}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    new-array v1, v0, [B

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, p2, p3, v1, v0}, Lcom/graphhopper/storage/DataAccess;->getBytes(J[BI)V

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    const-class p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/String;

    sget-object p1, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :cond_1
    const-class p0, [B

    invoke-virtual {p4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    invoke-direct {p0, p4}, Lcom/graphhopper/search/KVStorage;->getFixLength(Ljava/lang/Class;)I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v2, p2, p3, v1, v0}, Lcom/graphhopper/storage/DataAccess;->getBytes(J[BI)V

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4
    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const-class p2, Ljava/lang/Long;

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v2, 0x8

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/util/BitUtil;->toLong([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_7
    const-class p2, Ljava/lang/Float;

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_8
    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/util/BitUtil;->toFloat([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_9
    const-class p2, Ljava/lang/Double;

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_a
    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/util/BitUtil;->toDouble([BI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "unknown class "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getBytesForValue(Ljava/lang/Class;Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bytes.length cannot be > 255 but was "

    const/16 v2, 0xff

    if-eqz v0, :cond_1

    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    if-gt p1, v2, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    array-length p0, p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". String:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, [B

    array-length p0, p2

    if-gt p0, v2, :cond_2

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length p1, p2

    invoke-static {p1, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/BitUtil;->fromInt(I)[B

    move-result-object p0

    return-object p0

    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->fromLong(J)[B

    move-result-object p0

    return-object p0

    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/BitUtil;->fromFloat(F)[B

    move-result-object p0

    return-object p0

    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->fromDouble(D)[B

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The Class of a value was "

    const-string v0, ", currently supported: byte[], String, int, long, float and double"

    invoke-static {p2, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFixLength(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-class p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-class p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-class p0, Ljava/lang/Double;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown class "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 p0, 0x8

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x4

    return p0
.end method

.method private hasDynLength(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, [B

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private setKVList(JLjava/util/Map;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-wide v1, p1

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/search/KVStorage$KValue;

    iget-boolean p2, p2, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {p1}, Lcom/graphhopper/search/KVStorage$KValue;->b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/search/KVStorage;->add(JLjava/lang/String;Ljava/lang/Object;ZZ)J

    move-result-wide p0

    :goto_1
    move-wide v1, p0

    goto :goto_2

    :cond_1
    move-object v0, p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {p0}, Lcom/graphhopper/search/KVStorage$KValue;->b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {p0}, Lcom/graphhopper/search/KVStorage$KValue;->b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/search/KVStorage;->add(JLjava/lang/String;Ljava/lang/Object;ZZ)J

    move-result-wide v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {p0}, Lcom/graphhopper/search/KVStorage$KValue;->a(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {p0}, Lcom/graphhopper/search/KVStorage$KValue;->a(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/search/KVStorage;->add(JLjava/lang/String;Ljava/lang/Object;ZZ)J

    move-result-wide p0

    goto :goto_1

    :cond_3
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_4
    return-wide v1
.end method

.method private shortNameToClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string p0, "S"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "i"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    const-string p0, "l"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_2
    const-string p0, "f"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_3
    const-string p0, "d"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_4
    const-string p0, "["

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-class p0, [B

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find class. Unknown short name "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(JLjava/lang/String;Ljava/lang/Object;ZZ)J
    .locals 14

    move-wide v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_9

    if-eqz v3, :cond_8

    .line 1
    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 2
    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4000

    if-ge v4, v6, :cond_0

    .line 3
    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot store more than 16384 unique keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_7

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    .line 9
    :goto_0
    invoke-direct {p0, v4}, Lcom/graphhopper/search/KVStorage;->hasDynLength(Ljava/lang/Class;)Z

    move-result v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x3

    if-eqz v2, :cond_4

    .line 10
    const-class v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    const-class v11, [B

    .line 11
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v3

    check-cast v11, [B

    array-length v11, v11

    if-nez v11, :cond_4

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    add-long v3, v0, v9

    invoke-interface {v2, v3, v4}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    .line 13
    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-virtual {v5}, Ljava/lang/Integer;->shortValue()S

    move-result v5

    invoke-interface {v2, v0, v1, v5}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    .line 14
    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    add-long/2addr v0, v7

    invoke-interface {p0, v0, v1, v6}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    return-wide v3

    .line 15
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/graphhopper/search/KVStorage;->getBytesForValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    add-long/2addr v7, v0

    add-long/2addr v9, v0

    array-length v11, v3

    int-to-long v11, v11

    add-long/2addr v11, v9

    invoke-interface {v4, v11, v12}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    .line 17
    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x2

    shl-int/2addr v5, v11

    if-eqz p5, :cond_5

    move v6, v11

    :cond_5
    or-int/2addr v5, v6

    or-int v5, v5, p6

    int-to-short v5, v5

    invoke-interface {v4, v0, v1, v5}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    if-eqz v2, :cond_6

    .line 18
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    array-length v1, v3

    int-to-byte v1, v1

    invoke-interface {v0, v7, v8, v1}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    move-wide v7, v9

    .line 19
    :cond_6
    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    array-length v0, v3

    invoke-interface {p0, v7, v8, v3, v0}, Lcom/graphhopper/storage/DataAccess;->setBytes(J[BI)V

    .line 20
    array-length p0, v3

    int-to-long v0, p0

    add-long/2addr v7, v0

    return-wide v7

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " must be "

    const-string v4, " but was "

    .line 22
    const-string v5, "Class of value for key "

    invoke-static {v5, v2, v3, v0, v4}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value for key "

    const-string v1, " cannot be null"

    .line 25
    invoke-static {v0, v2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Ljava/util/Map;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;)J"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_9

    .line 41
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->lastEntries:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide p0, p0, Lcom/graphhopper/search/KVStorage;->lastEntryPointer:J

    return-wide p0

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/search/KVStorage$KValue;

    iget-boolean v5, v5, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 44
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-virtual {v5}, Lcom/graphhopper/search/KVStorage$KValue;->getFwd()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 45
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-virtual {v5}, Lcom/graphhopper/search/KVStorage$KValue;->getBwd()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 46
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 47
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {v5}, Lcom/graphhopper/search/KVStorage$KValue;->b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 48
    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    iget-object v6, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {v6}, Lcom/graphhopper/search/KVStorage$KValue;->b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/graphhopper/search/KVStorage;->getBytesForValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    .line 49
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {v5}, Lcom/graphhopper/search/KVStorage$KValue;->a(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 50
    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    iget-object v6, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-static {v4}, Lcom/graphhopper/search/KVStorage$KValue;->a(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/graphhopper/search/KVStorage;->getBytesForValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    goto/16 :goto_0

    .line 51
    :cond_7
    iput-object p1, p0, Lcom/graphhopper/search/KVStorage;->lastEntries:Ljava/util/Map;

    .line 52
    iget-wide v4, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    iput-wide v4, p0, Lcom/graphhopper/search/KVStorage;->lastEntryPointer:J

    .line 53
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-interface {v0, v4, v5}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    .line 54
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    iget-wide v4, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    int-to-byte v3, v3

    invoke-interface {v0, v4, v5, v3}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    .line 55
    iget-wide v3, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    invoke-direct {p0, v3, v4, p1}, Lcom/graphhopper/search/KVStorage;->setKVList(JLjava/util/Map;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    cmp-long p1, v3, v1

    if-ltz p1, :cond_8

    .line 56
    iget-wide p0, p0, Lcom/graphhopper/search/KVStorage;->lastEntryPointer:J

    return-wide p0

    .line 57
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Negative bytePointer in KVStorage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot store more than 200 entries per entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified List must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->dir:Lcom/graphhopper/storage/Directory;

    iget-object v1, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->dir:Lcom/graphhopper/storage/Directory;

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public create(J)Lcom/graphhopper/search/KVStorage;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iget-object p1, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    const-class p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 13

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    iget-object v3, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    int-to-short v3, v3

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5, v3}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    const/4 v0, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    iget-object v6, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-class v7, Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/graphhopper/search/KVStorage;->getBytesForValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v6

    iget-object v8, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    add-long v9, v4, v1

    array-length v11, v6

    int-to-long v11, v11

    add-long/2addr v11, v9

    invoke-interface {v8, v11, v12}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    iget-object v8, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    array-length v11, v6

    int-to-short v11, v11

    invoke-interface {v8, v4, v5, v11}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    array-length v5, v6

    invoke-interface {v4, v9, v10, v6, v5}, Lcom/graphhopper/storage/DataAccess;->setBytes(J[BI)V

    array-length v4, v6

    int-to-long v4, v4

    add-long/2addr v9, v4

    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-direct {p0, v4}, Lcom/graphhopper/search/KVStorage;->classToShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/graphhopper/search/KVStorage;->getBytesForValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v7, 0x1

    add-long/2addr v7, v9

    invoke-interface {v5, v7, v8}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v5, v9, v10, v4, v6}, Lcom/graphhopper/storage/DataAccess;->setBytes(J[BI)V

    add-int/lit8 v3, v3, 0x1

    move-wide v4, v7

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length v0, v4

    const-string v1, "class name byte length must be 1 but was "

    invoke-static {v0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v1, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->flush()V

    iget-object v1, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    iget-object v3, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-wide v4, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    invoke-virtual {v3, v4, v5}, Lcom/graphhopper/util/BitUtil;->getIntLow(J)I

    move-result v3

    invoke-interface {v1, v0, v3}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-wide v3, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    invoke-virtual {v1, v3, v4}, Lcom/graphhopper/util/BitUtil;->getIntHigh(J)I

    move-result v1

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-void
.end method

.method public get(JLjava/lang/String;Z)Ljava/lang/Object;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_9

    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v4, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    and-int/lit8 v7, v4, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    ushr-int/lit8 v4, v4, 0x2

    const-wide/16 v8, 0x2

    add-long/2addr p1, v8

    if-nez p4, :cond_5

    if-nez v7, :cond_6

    :cond_5
    if-eqz p4, :cond_7

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object p4, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/graphhopper/search/KVStorage;->deserializeObj(Ljava/util/concurrent/atomic/AtomicInteger;JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-direct {p0, v4}, Lcom/graphhopper/search/KVStorage;->hasDynLength(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v4, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result v4

    add-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    goto :goto_3

    :cond_8
    invoke-direct {p0, v4}, Lcom/graphhopper/search/KVStorage;->getFixLength(Ljava/lang/Class;)I

    move-result v4

    :goto_3
    int-to-long v4, v4

    add-long/2addr p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return-object v1

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p3, "Pointer to access KVStorage cannot be negative:"

    invoke-static {p1, p2, p3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAll(J)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_a

    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v5, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    and-int/lit8 v8, v5, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    ushr-int/lit8 v5, v5, 0x2

    const-wide/16 v8, 0x2

    add-long/2addr p1, v8

    iget-object v8, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-direct {p0, v2, p1, p2, v8}, Lcom/graphhopper/search/KVStorage;->deserializeObj(Ljava/util/concurrent/atomic/AtomicInteger;JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr p1, v9

    iget-object v9, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/graphhopper/search/KVStorage$KValue;

    if-eqz v9, :cond_6

    new-instance v10, Lcom/graphhopper/search/KVStorage$KValue;

    if-eqz v7, :cond_4

    move-object v7, v8

    goto :goto_3

    :cond_4
    invoke-static {v9}, Lcom/graphhopper/search/KVStorage$KValue;->b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v9}, Lcom/graphhopper/search/KVStorage$KValue;->a(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;

    move-result-object v8

    :goto_4
    invoke-direct {v10, v7, v8}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    new-instance v6, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-direct {v6, v8}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    new-instance v9, Lcom/graphhopper/search/KVStorage$KValue;

    const/4 v10, 0x0

    if-eqz v7, :cond_8

    move-object v7, v8

    goto :goto_5

    :cond_8
    move-object v7, v10

    :goto_5
    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    move-object v8, v10

    :goto_6
    invoke-direct {v9, v7, v8}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    return-object v1

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Pointer to access KVStorage cannot be negative:"

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCapacity()J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getKeys()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    return-object p0
.end method

.method public getMap(J)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v4, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result v4

    ushr-int/lit8 v4, v4, 0x2

    const-wide/16 v5, 0x2

    add-long/2addr p1, v5

    iget-object v5, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-direct {p0, v2, p1, p2, v5}, Lcom/graphhopper/search/KVStorage;->deserializeObj(Ljava/util/concurrent/atomic/AtomicInteger;JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr p1, v6

    iget-object v6, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Pointer to access KVStorage cannot be negative:"

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadExisting()Z
    .locals 11

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v2, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    iget-object v3, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/graphhopper/search/KVStorage;->bytePointer:J

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->vals:Lcom/graphhopper/storage/DataAccess;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v2, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result v0

    const-wide/16 v2, 0x2

    move-wide v4, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v1, v0, :cond_0

    iget-object v7, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v7, v4, v5}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result v7

    add-long/2addr v4, v2

    new-array v8, v7, [B

    iget-object v9, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v9, v4, v5, v8, v7}, Lcom/graphhopper/storage/DataAccess;->getBytes(J[BI)V

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    int-to-long v7, v7

    add-long/2addr v4, v7

    iget-object v7, p0, Lcom/graphhopper/search/KVStorage;->keyToIndex:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/graphhopper/search/KVStorage;->indexToKey:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v7, v6, [B

    iget-object v8, p0, Lcom/graphhopper/search/KVStorage;->keys:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v8, v4, v5, v7, v6}, Lcom/graphhopper/storage/DataAccess;->getBytes(J[BI)V

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, Lcom/graphhopper/search/KVStorage;->indexToClass:Ljava/util/List;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v8}, Lcom/graphhopper/search/KVStorage;->shortNameToClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Loaded values but cannot load keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v1
.end method
