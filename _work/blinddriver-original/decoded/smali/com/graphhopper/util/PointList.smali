.class public Lcom/graphhopper/util/PointList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/graphhopper/util/PointAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/graphhopper/util/shapes/GHPoint3D;",
        ">;",
        "Lcom/graphhopper/util/PointAccess;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PRECISION:D = 1.0E-6

.field public static final EMPTY:Lcom/graphhopper/util/PointList;

.field static final ERR_MSG:Ljava/lang/String; = "Tried to access PointList with too big index!"

.field private static final factory:Lpb/m;


# instance fields
.field private cachedLineString:Lpb/q;

.field private elevations:[D

.field protected is3D:Z

.field private isImmutable:Z

.field private latitudes:[D

.field private longitudes:[D

.field protected size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lpb/m;

    invoke-direct {v0}, Lpb/m;-><init>()V

    sput-object v0, Lcom/graphhopper/util/PointList;->factory:Lpb/m;

    new-instance v0, Lcom/graphhopper/util/PointList$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/PointList$1;-><init>(IZ)V

    sput-object v0, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/graphhopper/util/PointList;->size:I

    .line 4
    iput-boolean v0, p0, Lcom/graphhopper/util/PointList;->isImmutable:Z

    .line 5
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    .line 6
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    .line 7
    iput-boolean p2, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz p2, :cond_0

    .line 8
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    :cond_0
    return-void
.end method

.method private ensureMutability()V
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->isImmutable()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot change an immutable PointList"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static equalsEps(DD)Z
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v0, p0

    move-wide v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/graphhopper/util/PointList;->equalsEps(DDD)Z

    move-result p0

    return p0
.end method

.method public static equalsEps(DDD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static from(Lpb/q;)Lcom/graphhopper/util/PointList;
    .locals 9

    new-instance v0, Lcom/graphhopper/util/PointList;

    invoke-direct {v0}, Lcom/graphhopper/util/PointList;-><init>()V

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->t()[Lpb/a;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lcom/graphhopper/util/shapes/GHPoint;

    iget-wide v5, v3, Lpb/a;->m:D

    iget-wide v7, v3, Lpb/a;->l:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/shapes/GHPoint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromLineString(Lpb/q;)Lcom/graphhopper/util/PointList;
    .locals 9

    new-instance v0, Lcom/graphhopper/util/PointList;

    invoke-direct {v0}, Lcom/graphhopper/util/PointList;-><init>()V

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->t()[Lpb/a;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lcom/graphhopper/util/shapes/GHPoint;

    iget-wide v5, v3, Lpb/a;->m:D

    iget-wide v7, v3, Lpb/a;->l:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/shapes/GHPoint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private incCap(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    array-length v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    const/16 v1, 0xf

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    iget-object v0, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-nez v0, :cond_0

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/util/PointList;->add(DDD)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add point without elevation data in 3D mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(DDD)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/graphhopper/util/PointList;->ensureMutability()V

    .line 5
    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/graphhopper/util/PointList;->incCap(I)V

    .line 7
    iget-object v1, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    iget v2, p0, Lcom/graphhopper/util/PointList;->size:I

    aput-wide p1, v1, v2

    .line 8
    iget-object p1, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    aput-wide p3, p1, v2

    .line 9
    iget-boolean p1, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    aput-wide p5, p1, v2

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    :goto_0
    iput v0, p0, Lcom/graphhopper/util/PointList;->size:I

    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This is a 2D list we cannot store elevation: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Lcom/graphhopper/util/PointAccess;I)V
    .locals 8

    .line 14
    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/util/PointList;->add(DDD)V

    return-void

    :cond_0
    move-object v1, p0

    .line 16
    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    invoke-virtual {v1, v2, v3, p0, p1}, Lcom/graphhopper/util/PointList;->add(DD)V

    return-void
.end method

.method public add(Lcom/graphhopper/util/PointList;)V
    .locals 6

    .line 20
    invoke-direct {p0}, Lcom/graphhopper/util/PointList;->ensureMutability()V

    .line 21
    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 22
    invoke-direct {p0, v1}, Lcom/graphhopper/util/PointList;->incCap(I)V

    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 24
    iget v2, p0, Lcom/graphhopper/util/PointList;->size:I

    add-int/2addr v2, v0

    .line 25
    iget-object v3, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 26
    iget-object v3, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 27
    iget-boolean v3, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v3, :cond_0

    .line 28
    iget-object v3, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v4

    aput-wide v4, v3, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iput v1, p0, Lcom/graphhopper/util/PointList;->size:I

    return-void
.end method

.method public add(Lcom/graphhopper/util/shapes/GHPoint;)V
    .locals 8

    .line 17
    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v0, :cond_0

    .line 18
    iget-wide v2, p1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v4, p1, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    check-cast p1, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-wide v6, p1, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/util/PointList;->add(DDD)V

    return-void

    :cond_0
    move-object v1, p0

    .line 19
    iget-wide v2, p1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-virtual {v1, v2, v3, p0, p1}, Lcom/graphhopper/util/PointList;->add(DD)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/util/PointList;->ensureMutability()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/util/PointList;->size:I

    return-void
.end method

.method public clone(Z)Lcom/graphhopper/util/PointList;
    .locals 8

    new-instance v0, Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v1

    invoke-virtual {p0, v7}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    invoke-virtual {p0, v7}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/util/PointList;->add(DDD)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/graphhopper/util/PointList;->add(DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->reverse()V

    :cond_2
    return-object v0
.end method

.method public copy(II)Lcom/graphhopper/util/PointList;
    .locals 5

    if-gt p1, p2, :cond_3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    instance-of v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/graphhopper/util/ShallowImmutablePointList;

    iget-object v1, v0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    iget v0, v0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    sub-int/2addr p2, p1

    new-instance v0, Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iput p2, v0, Lcom/graphhopper/util/PointList;->size:I

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->isImmutable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/graphhopper/util/PointList;->isImmutable:Z

    iget-object v2, v1, Lcom/graphhopper/util/PointList;->latitudes:[D

    iget-object v3, v0, Lcom/graphhopper/util/PointList;->latitudes:[D

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/graphhopper/util/PointList;->longitudes:[D

    iget-object v3, v0, Lcom/graphhopper/util/PointList;->longitudes:[D

    invoke-static {v2, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/graphhopper/util/PointList;->elevations:[D

    iget-object v1, v0, Lcom/graphhopper/util/PointList;->elevations:[D

    invoke-static {p0, p1, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    const-string v1, ", "

    const-string v2, ", size:"

    const-string v3, "Illegal interval: "

    invoke-static {v3, p1, v1, p2, v2}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "from must be smaller or equal to end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureNode(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/PointList;->incCap(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/graphhopper/util/PointList;->equalsEps(DD)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/graphhopper/util/PointList;->equalsEps(DD)Z

    move-result v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v4

    invoke-virtual {p1, v1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    invoke-static/range {v4 .. v9}, Lcom/graphhopper/util/PointList;->equalsEps(DDD)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method public get(I)Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 7

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint3D;

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    return-object v0
.end method

.method public getCachedLineString(Z)Lpb/q;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/PointList;->cachedLineString:Lpb/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->isImmutable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PointList;->toLineString(Z)Lpb/q;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/PointList;->cachedLineString:Lpb/q;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Make PointList immutable before calling getCachedLineString"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCapacity()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    array-length p0, p0

    return p0
.end method

.method public getDimension()I
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getEle(I)D
    .locals 3

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Lcom/graphhopper/util/PointList;->size:I

    const-string v1, "Tried to access PointList with too big index! index:"

    const-string v2, ", size:"

    invoke-static {v1, p1, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLat(I)D
    .locals 3

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Lcom/graphhopper/util/PointList;->size:I

    const-string v1, "Tried to access PointList with too big index! index:"

    const-string v2, ", size:"

    invoke-static {v1, p1, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLon(I)D
    .locals 3

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Lcom/graphhopper/util/PointList;->size:I

    const-string v1, "Tried to access PointList with too big index! index:"

    const-string v2, ", size:"

    invoke-static {v1, p1, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x49

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x49

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x49

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public is3D()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isImmutable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/PointList;->isImmutable:Z

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/graphhopper/util/shapes/GHPoint3D;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/util/PointList$2;

    invoke-direct {v0, p0}, Lcom/graphhopper/util/PointList$2;-><init>(Lcom/graphhopper/util/PointList;)V

    return-object v0
.end method

.method public makeImmutable()Lcom/graphhopper/util/PointList;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/util/PointList;->isImmutable:Z

    return-object p0
.end method

.method public parse2DJSON(Ljava/lang/String;)V
    .locals 12

    const-string v0, "\\["

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move-object v5, p0

    goto :goto_1

    :cond_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/graphhopper/util/PointList;->add(DDD)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeLastPoint()V
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/graphhopper/util/PointList;->size:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot remove last point from empty PointList"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reverse()V
    .locals 8

    invoke-direct {p0}, Lcom/graphhopper/util/PointList;->ensureMutability()V

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget v2, p0, Lcom/graphhopper/util/PointList;->size:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    aget-wide v4, v3, v1

    aget-wide v6, v3, v2

    aput-wide v6, v3, v1

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    aget-wide v4, v3, v1

    aget-wide v6, v3, v2

    aput-wide v6, v3, v1

    aput-wide v4, v3, v2

    iget-boolean v3, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    aget-wide v4, v3, v1

    aget-wide v6, v3, v2

    aput-wide v6, v3, v1

    aput-wide v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(IDDD)V
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/util/PointList;->ensureMutability()V

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/util/PointList;->latitudes:[D

    aput-wide p2, v0, p1

    iget-object p2, p0, Lcom/graphhopper/util/PointList;->longitudes:[D

    aput-wide p4, p2, p1

    iget-boolean p2, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    aput-wide p6, p0, p1

    return-void

    :cond_0
    invoke-static {p6, p7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This is a 2D list we cannot store elevation: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Lcom/graphhopper/util/PointList;->size:I

    const-string p2, "index has to be smaller than size "

    invoke-static {p0, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(ID)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/PointList;->elevations:[D

    aput-wide p2, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This is a 2D PointList, you cannot set it\'s elevation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Lcom/graphhopper/util/PointList;->size:I

    const-string p3, "Tried to access PointList with too big index! index:"

    const-string v0, ", size:"

    invoke-static {p3, p1, v0, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setNode(IDDD)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/graphhopper/util/PointList;->set(IDDD)V

    return-void
.end method

.method public shallowCopy(IIZ)Lcom/graphhopper/util/PointList;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->makeImmutable()Lcom/graphhopper/util/PointList;

    :cond_0
    new-instance p3, Lcom/graphhopper/util/ShallowImmutablePointList;

    invoke-direct {p3, p1, p2, p0}, Lcom/graphhopper/util/ShallowImmutablePointList;-><init>(IILcom/graphhopper/util/PointList;)V

    return-object p3
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/PointList;->size:I

    return p0
.end method

.method public toLineString(Z)Lpb/q;
    .locals 13

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    :goto_0
    new-array v0, v0, [Lpb/a;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-eqz p1, :cond_1

    new-instance v6, Lpb/a;

    invoke-virtual {p0, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v7

    invoke-virtual {p0, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v9

    invoke-virtual {p0, v4}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v11

    invoke-direct/range {v6 .. v12}, Lpb/a;-><init>(DDD)V

    goto :goto_2

    :cond_1
    new-instance v6, Lpb/a;

    invoke-virtual {p0, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v7

    invoke-virtual {p0, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lpb/a;-><init>(DD)V

    :goto_2
    aput-object v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    if-ne p0, v2, :cond_3

    aget-object p0, v0, v3

    aput-object p0, v0, v2

    :cond_3
    sget-object p0, Lcom/graphhopper/util/PointList;->factory:Lpb/m;

    new-instance v2, Lqb/c;

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    :cond_4
    invoke-direct {v2, v0, v1}, Lqb/c;-><init>([Lpb/a;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lpb/q;

    invoke-direct {p1, v2, p0}, Lpb/q;-><init>(Lpb/d;Lpb/m;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimToSize(I)V
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/util/PointList;->ensureMutability()V

    iget v0, p0, Lcom/graphhopper/util/PointList;->size:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/graphhopper/util/PointList;->size:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "new size needs be smaller than old size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
