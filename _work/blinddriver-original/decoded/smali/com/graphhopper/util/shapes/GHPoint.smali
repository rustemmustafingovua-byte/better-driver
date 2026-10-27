.class public Lcom/graphhopper/util/shapes/GHPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lat:D

.field public lon:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    .line 3
    iput-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    .line 6
    iput-wide p3, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    return-void
.end method

.method public static create(Lpb/w;)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 5

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object v1

    iget-wide v1, v1, Lpb/a;->m:D

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object p0

    iget-wide v3, p0, Lpb/a;->l:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getX called on empty Point"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getY called on empty Point"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJson([D)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 5

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/graphhopper/util/shapes/GHPoint;->fromString(Ljava/lang/String;Z)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0
.end method

.method private static fromString(Ljava/lang/String;Z)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 7

    .line 2
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x2

    const-string v3, "\'"

    const-string v4, "Cannot parse point \'"

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v5, 0x1

    .line 5
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {p1, v5, v6, v1, v2}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {p1, v1, v2, v5, v6}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-static {v4, p0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-static {v4, p0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromStringLonLat(Ljava/lang/String;)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/graphhopper/util/shapes/GHPoint;->fromString(Ljava/lang/String;Z)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/graphhopper/util/shapes/GHPoint;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v3, p1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v1, v2, v3, v4}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v1, v2, p0, p1}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x245

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public isValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toGeoJson()[Ljava/lang/Double;
    .locals 3

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.8f,%.8f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
