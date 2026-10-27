.class public Lcom/graphhopper/coll/GHLongLongBTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/coll/LongLongMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;,
        Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;
    }
.end annotation


# static fields
.field private static final logger:Lnc/b;


# instance fields
.field private final bytesPerValue:I

.field private final emptyValue:J

.field private final factor:F

.field private height:I

.field private final initLeafSize:I

.field private final maxLeafEntries:I

.field private final maxValue:J

.field private root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

.field private size:J

.field private final splitIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/coll/GHLongLongBTree;->logger:Lnc/b;

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/coll/GHLongLongBTree;->maxLeafEntries:I

    iput p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->bytesPerValue:I

    const/16 v0, 0x8

    if-gt p2, v0, :cond_4

    iput-wide p3, p0, Lcom/graphhopper/coll/GHLongLongBTree;->emptyValue:J

    mul-int/2addr p2, v0

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const-wide/16 v0, 0x1

    shl-long v2, v0, p2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->maxValue:J

    if-lt p1, p3, :cond_3

    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->splitIndex:I

    const/high16 p2, 0x40000000    # 2.0f

    const/16 p4, 0xa

    if-ge p1, p4, :cond_1

    iput p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->factor:F

    iput p3, p0, Lcom/graphhopper/coll/GHLongLongBTree;->initLeafSize:I

    goto :goto_0

    :cond_1
    const/16 p3, 0x14

    if-ge p1, p3, :cond_2

    iput p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->factor:F

    const/4 p1, 0x4

    iput p1, p0, Lcom/graphhopper/coll/GHLongLongBTree;->initLeafSize:I

    goto :goto_0

    :cond_2
    const p2, 0x3fd9999a    # 1.7f

    iput p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->factor:F

    div-int/2addr p1, p4

    iput p1, p0, Lcom/graphhopper/coll/GHLongLongBTree;->initLeafSize:I

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->clear()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal maxLeafEntries:"

    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Values can have 8 bytes maximum but requested was "

    invoke-static {p2, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/graphhopper/coll/GHLongLongBTree;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->bytesPerValue:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/coll/GHLongLongBTree;)J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->emptyValue:J

    return-wide v0
.end method

.method public static binarySearch([JIIJ)I
    .locals 5

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v1, p2

    :goto_0
    sub-int v2, v1, p1

    if-le v2, v0, :cond_1

    add-int v2, v1, p1

    ushr-int/2addr v2, v0

    aget-wide v3, p0, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    not-int p0, p2

    return p0

    :cond_2
    aget-wide p0, p0, v1

    cmp-long p0, p0, p3

    if-nez p0, :cond_3

    return v1

    :cond_3
    not-int p0, v1

    return p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/coll/GHLongLongBTree;)F
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->factor:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/graphhopper/coll/GHLongLongBTree;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->initLeafSize:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/graphhopper/coll/GHLongLongBTree;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->maxLeafEntries:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/graphhopper/coll/GHLongLongBTree;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->splitIndex:I

    return p0
.end method

.method private getEntries()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->getEntries()I

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->size:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->height:I

    new-instance v1, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget v2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->initLeafSize:I

    invoke-direct {v1, p0, v2, v0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;-><init>(Lcom/graphhopper/coll/GHLongLongBTree;IZ)V

    iput-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    return-void
.end method

.method public final fromLong([BJI)V
    .locals 3

    .line 3
    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->bytesPerValue:I

    const/4 v0, 0x7

    if-le p0, v0, :cond_0

    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0x38

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_0
    const/4 v0, 0x6

    if-le p0, v0, :cond_1

    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x30

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p1, v0

    :cond_1
    const/4 v0, 0x5

    if-le p0, v0, :cond_2

    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x28

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p1, v0

    :cond_2
    const/4 v0, 0x4

    if-le p0, v0, :cond_3

    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, v0

    :cond_3
    const/4 v0, 0x3

    if-le p0, v0, :cond_4

    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p1, v0

    :cond_4
    const/4 v0, 0x2

    if-le p0, v0, :cond_5

    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, v0

    :cond_5
    const/4 v0, 0x1

    if-le p0, v0, :cond_6

    add-int/lit8 p0, p4, 0x1

    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 9
    aput-byte v0, p1, p0

    :cond_6
    long-to-int p0, p2

    int-to-byte p0, p0

    .line 10
    aput-byte p0, p1, p4

    return-void
.end method

.method public final fromLong(J)[B
    .locals 2

    .line 1
    iget v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->bytesPerValue:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/graphhopper/coll/GHLongLongBTree;->fromLong([BJI)V

    return-object v0
.end method

.method public get(J)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->get(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getEmptyValue()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->emptyValue:J

    return-wide v0
.end method

.method public getMaxValue()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->maxValue:J

    return-wide v0
.end method

.method public getMemoryUsage()I
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->getCapacity()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->size:J

    return-wide v0
.end method

.method public height()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->height:I

    return p0
.end method

.method public optimize()V
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->compact()V

    :cond_0
    return-void
.end method

.method public print()V
    .locals 2

    sget-object v0, Lcom/graphhopper/coll/GHLongLongBTree;->logger:Lnc/b;

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public put(JJ)J
    .locals 3

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->maxValue:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->emptyValue:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->put(JJ)Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;

    move-result-object p1

    iget-object p2, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    if-eqz p2, :cond_0

    iget p3, p0, Lcom/graphhopper/coll/GHLongLongBTree;->height:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/graphhopper/coll/GHLongLongBTree;->height:I

    iput-object p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->root:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    :cond_0
    iget-object p2, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->oldValue:[B

    if-nez p2, :cond_1

    iget-wide p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->size:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->size:J

    const-wide/32 v0, 0xf4240

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->optimize()V

    :cond_1
    iget-object p1, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->oldValue:[B

    if-nez p1, :cond_2

    iget-wide p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->emptyValue:J

    return-wide p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/graphhopper/coll/GHLongLongBTree;->toLong([B)J

    move-result-wide p0

    return-wide p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide p2, p0, Lcom/graphhopper/coll/GHLongLongBTree;->emptyValue:J

    const-string p0, "Value cannot be the \'empty value\' "

    invoke-static {p2, p3, p0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide v0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->maxValue:J

    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->bytesPerValue:I

    const-string p2, "Value "

    const-string v2, " exceeded max value: "

    invoke-static {p2, p3, p4, v2}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Increase bytesPerValue ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toLong([B)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/coll/GHLongLongBTree;->toLong([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public toLong([BI)J
    .locals 10

    .line 2
    iget p0, p0, Lcom/graphhopper/coll/GHLongLongBTree;->bytesPerValue:I

    const/16 v0, 0x38

    const/4 v1, 0x7

    const/16 v2, 0x8

    if-ne p0, v2, :cond_0

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    :goto_0
    int-to-long v3, v3

    shl-long/2addr v3, v0

    goto :goto_1

    :cond_0
    if-le p0, v1, :cond_1

    add-int/lit8 v3, p2, 0x7

    .line 3
    aget-byte v3, p1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    const/16 v0, 0x30

    const/4 v5, 0x6

    const-wide/16 v6, 0xff

    if-ne p0, v1, :cond_2

    add-int/lit8 v1, p2, 0x6

    .line 4
    aget-byte v1, p1, v1

    int-to-long v8, v1

    :goto_2
    shl-long v0, v8, v0

    or-long/2addr v3, v0

    goto :goto_3

    :cond_2
    if-le p0, v5, :cond_3

    add-int/lit8 v1, p2, 0x6

    .line 5
    aget-byte v1, p1, v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    goto :goto_2

    :cond_3
    :goto_3
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-ne p0, v5, :cond_4

    add-int/lit8 v5, p2, 0x5

    .line 6
    aget-byte v5, p1, v5

    int-to-long v8, v5

    :goto_4
    shl-long/2addr v8, v0

    or-long/2addr v3, v8

    goto :goto_5

    :cond_4
    if-le p0, v1, :cond_5

    add-int/lit8 v5, p2, 0x5

    .line 7
    aget-byte v5, p1, v5

    int-to-long v8, v5

    and-long/2addr v8, v6

    goto :goto_4

    :cond_5
    :goto_5
    const/16 v0, 0x20

    const/4 v5, 0x4

    if-ne p0, v1, :cond_6

    add-int/lit8 v1, p2, 0x4

    .line 8
    aget-byte v1, p1, v1

    int-to-long v8, v1

    :goto_6
    shl-long v0, v8, v0

    or-long/2addr v3, v0

    goto :goto_7

    :cond_6
    if-le p0, v5, :cond_7

    add-int/lit8 v1, p2, 0x4

    .line 9
    aget-byte v1, p1, v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    goto :goto_6

    :cond_7
    :goto_7
    const/16 v0, 0x18

    const/4 v1, 0x3

    if-ne p0, v5, :cond_8

    add-int/lit8 v5, p2, 0x3

    .line 10
    aget-byte v5, p1, v5

    int-to-long v8, v5

    :goto_8
    shl-long/2addr v8, v0

    or-long/2addr v3, v8

    goto :goto_9

    :cond_8
    if-le p0, v1, :cond_9

    add-int/lit8 v5, p2, 0x3

    .line 11
    aget-byte v5, p1, v5

    int-to-long v8, v5

    and-long/2addr v8, v6

    goto :goto_8

    :cond_9
    :goto_9
    const/16 v0, 0x10

    const/4 v5, 0x2

    if-ne p0, v1, :cond_a

    add-int/lit8 v1, p2, 0x2

    .line 12
    aget-byte v1, p1, v1

    int-to-long v8, v1

    :goto_a
    shl-long v0, v8, v0

    or-long/2addr v3, v0

    goto :goto_b

    :cond_a
    if-le p0, v5, :cond_b

    add-int/lit8 v1, p2, 0x2

    .line 13
    aget-byte v1, p1, v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    goto :goto_a

    :cond_b
    :goto_b
    if-ne p0, v5, :cond_c

    add-int/lit8 p0, p2, 0x1

    .line 14
    aget-byte p0, p1, p0

    int-to-long v0, p0

    :goto_c
    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    if-le p0, v0, :cond_d

    add-int/lit8 p0, p2, 0x1

    .line 15
    aget-byte p0, p1, p0

    int-to-long v0, p0

    and-long/2addr v0, v6

    goto :goto_c

    .line 16
    :cond_d
    :goto_d
    aget-byte p0, p1, p2

    int-to-long p0, p0

    and-long/2addr p0, v6

    or-long/2addr p0, v3

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->height()I

    move-result v0

    invoke-direct {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->getEntries()I

    move-result p0

    const-string v1, "Height:"

    const-string v2, ", entries:"

    invoke-static {v1, v0, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
