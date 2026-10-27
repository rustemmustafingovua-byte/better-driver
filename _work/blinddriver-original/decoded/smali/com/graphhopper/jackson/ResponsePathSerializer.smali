.class public Lcom/graphhopper/jackson/ResponsePathSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/jackson/ResponsePathSerializer$Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeNumber(Ljava/lang/StringBuilder;I)V
    .locals 2

    shl-int/lit8 p1, p1, 0x1

    if-gez p1, :cond_0

    not-int p1, p1

    :cond_0
    :goto_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    and-int/lit8 v1, p1, 0x1f

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3f

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x5

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x3f

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static encodePolyline(Lcom/graphhopper/util/PointList;ZD)Ljava/lang/String;
    .locals 11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/16 v2, 0x14

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v6

    mul-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    sub-int v3, v6, v3

    invoke-static {v0, v3}, Lcom/graphhopper/jackson/ResponsePathSerializer;->encodeNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v7

    mul-double/2addr v7, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v3, v7

    sub-int v4, v3, v4

    invoke-static {v0, v4}, Lcom/graphhopper/jackson/ResponsePathSerializer;->encodeNumber(Ljava/lang/StringBuilder;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v4, v7

    sub-int v5, v4, v5

    invoke-static {v0, v5}, Lcom/graphhopper/jackson/ResponsePathSerializer;->encodeNumber(Ljava/lang/StringBuilder;I)V

    move v5, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "multiplier cannot be smaller than 1 but was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " for polyline"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static jsonObject(Lcom/graphhopper/GHResponse;Lcom/graphhopper/jackson/ResponsePathSerializer$Info;ZZZZD)Lp6/v;
    .locals 6

    new-instance v0, Lp6/v;

    sget-object v1, Lp6/m;->l:Lp6/m;

    invoke-direct {v0, v1}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual {p0}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/PMap;->toMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "hints"

    invoke-virtual {v0, v2, v3}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "info"

    invoke-virtual {v0, p1, v2}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lp6/a;

    invoke-direct {p1, v1}, Lp6/a;-><init>(Lp6/m;)V

    iget-object v1, v0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    const-string v2, "paths"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/graphhopper/GHResponse;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/ResponsePath;

    iget-object v2, p1, Lp6/f;->l:Lp6/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp6/v;

    invoke-direct {v3, v2}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual {p1, v3}, Lp6/a;->H(Lb6/q;)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getDistance()D

    move-result-wide v4

    const/4 v2, 0x3

    invoke-static {v4, v5, v2}, Lcom/graphhopper/util/Helper;->round(DI)D

    move-result-wide v4

    const-string v2, "distance"

    invoke-virtual {v3, v2, v4, v5}, Lp6/v;->J(Ljava/lang/String;D)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getRouteWeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v4

    const-string v2, "weight"

    invoke-virtual {v3, v2, v4, v5}, Lp6/v;->J(Ljava/lang/String;D)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getTime()J

    move-result-wide v4

    new-instance v2, Lp6/n;

    invoke-direct {v2, v4, v5}, Lp6/n;-><init>(J)V

    iget-object v4, v3, Lp6/v;->m:Ljava/util/LinkedHashMap;

    const-string v5, "time"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getNumChanges()I

    move-result v2

    invoke-static {v2}, Lp6/m;->a(I)Lp6/j;

    move-result-object v2

    const-string v5, "transfers"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "legs"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getLegs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getDescription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "description"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getDescription()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    sget-object v2, Lp6/e;->m:Lp6/e;

    goto :goto_1

    :cond_2
    sget-object v2, Lp6/e;->n:Lp6/e;

    :goto_1
    const-string v5, "points_encoded"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_3

    const-string v2, "points_encoded_multiplier"

    invoke-virtual {v3, v2, p6, p7}, Lp6/v;->J(Ljava/lang/String;D)V

    :cond_3
    if-eqz p3, :cond_6

    const-string v2, "bbox"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->calcBBox2D()Lpb/h;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v2

    if-eqz p5, :cond_4

    invoke-static {v2, p4, p6, p7}, Lcom/graphhopper/jackson/ResponsePathSerializer;->encodePolyline(Lcom/graphhopper/util/PointList;ZD)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {v2, p4}, Lcom/graphhopper/util/PointList;->toLineString(Z)Lpb/q;

    move-result-object v2

    :goto_2
    const-string v4, "points"

    invoke-virtual {v3, v2, v4}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const-string v2, "instructions"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getInstructions()Lcom/graphhopper/util/InstructionList;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string v2, "details"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getPathDetails()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ascend"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getAscend()D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lp6/v;->J(Ljava/lang/String;D)V

    const-string v2, "descend"

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getDescend()D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lp6/v;->J(Ljava/lang/String;D)V

    :cond_6
    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getWaypoints()Lcom/graphhopper/util/PointList;

    move-result-object v2

    if-eqz p5, :cond_7

    invoke-static {v2, p4, p6, p7}, Lcom/graphhopper/jackson/ResponsePathSerializer;->encodePolyline(Lcom/graphhopper/util/PointList;ZD)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-virtual {v2, p4}, Lcom/graphhopper/util/PointList;->toLineString(Z)Lpb/q;

    move-result-object v2

    :goto_3
    const-string v4, "snapped_waypoints"

    invoke-virtual {v3, v2, v4}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getFare()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getFare()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fare"

    invoke-virtual {v3, v2, v1}, Lp6/v;->K(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method
