.class public Lcom/graphhopper/ResponsePath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ascend:D

.field private debugInfo:Ljava/lang/String;

.field private descend:D

.field private description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private distance:D

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fare:Ljava/math/BigDecimal;

.field private impossible:Z

.field private instructions:Lcom/graphhopper/util/InstructionList;

.field private final legs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/Trip$Leg;",
            ">;"
        }
    .end annotation
.end field

.field private numChanges:I

.field private final pathDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field private pointList:Lcom/graphhopper/util/PointList;

.field private final pointsOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private routeWeight:D

.field private time:J

.field private waypointIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private waypointList:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->errors:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    sget-object v0, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->waypointList:Lcom/graphhopper/util/PointList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/ResponsePath;->waypointIndices:Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->legs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->pointsOrder:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->pathDetails:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/ResponsePath;->impossible:Z

    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getErrors()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "You cannot call "

    const-string v2, " if response contains errors. Check this with ghResponse.hasErrors(). Errors are: "

    invoke-static {v1, p1, v2, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addDebugInfo(Ljava/lang/String;)Lcom/graphhopper/ResponsePath;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    const-string v1, ";"

    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    invoke-static {v0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Debug information has to be none null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addError(Ljava/lang/Throwable;)Lcom/graphhopper/ResponsePath;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addErrors(Ljava/util/List;)Lcom/graphhopper/ResponsePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/graphhopper/ResponsePath;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addPathDetails(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->pathDetails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->pathDetails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Details have to be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/graphhopper/ResponsePath;->pathDetails:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/graphhopper/ResponsePath;->pathDetails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public calcBBox2D()Lpb/h;
    .locals 6

    const-string v0, "calcBBox2D"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    new-instance v0, Lpb/h;

    invoke-direct {v0}, Lpb/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v2, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v2

    iget-object v4, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v4, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lpb/h;->b(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAscend()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/ResponsePath;->ascend:D

    return-wide v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->debugInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getDescend()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/ResponsePath;->descend:D

    return-wide v0
.end method

.method public getDescription()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->description:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public getDistance()D
    .locals 2

    const-string v0, "getDistance"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/graphhopper/ResponsePath;->distance:D

    return-wide v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->errors:Ljava/util/List;

    return-object p0
.end method

.method public getFare()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->fare:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public getInstructions()Lcom/graphhopper/util/InstructionList;
    .locals 1

    const-string v0, "getInstructions"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->instructions:Lcom/graphhopper/util/InstructionList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "To access instructions you need to enable creation before routing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLegs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/Trip$Leg;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->legs:Ljava/util/List;

    return-object p0
.end method

.method public getNumChanges()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/ResponsePath;->numChanges:I

    return p0
.end method

.method public getPathDetails()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->pathDetails:Ljava/util/Map;

    return-object p0
.end method

.method public getPoints()Lcom/graphhopper/util/PointList;
    .locals 1

    const-string v0, "getPoints"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    return-object p0
.end method

.method public getPointsOrder()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->pointsOrder:Ljava/util/List;

    return-object p0
.end method

.method public getRouteWeight()D
    .locals 2

    const-string v0, "getRouteWeight"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/graphhopper/ResponsePath;->routeWeight:D

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    const-string v0, "getTimes"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/graphhopper/ResponsePath;->time:J

    return-wide v0
.end method

.method public getWaypointIndices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "getWaypointIndices"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->waypointIndices:Ljava/util/List;

    return-object p0
.end method

.method public getWaypoints()Lcom/graphhopper/util/PointList;
    .locals 1

    const-string v0, "getWaypoints"

    invoke-direct {p0, v0}, Lcom/graphhopper/ResponsePath;->check(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->waypointList:Lcom/graphhopper/util/PointList;

    return-object p0
.end method

.method public hasErrors()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->errors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isImpossible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/ResponsePath;->impossible:Z

    return p0
.end method

.method public setAscend(D)Lcom/graphhopper/ResponsePath;
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/graphhopper/ResponsePath;->ascend:D

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ascend has to be positive but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDescend(D)Lcom/graphhopper/ResponsePath;
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/graphhopper/ResponsePath;->descend:D

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "descend has to be positive but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDescription(Ljava/util/List;)Lcom/graphhopper/ResponsePath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/ResponsePath;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->description:Ljava/util/List;

    return-object p0
.end method

.method public setDistance(D)Lcom/graphhopper/ResponsePath;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/ResponsePath;->distance:D

    return-object p0
.end method

.method public setFare(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->fare:Ljava/math/BigDecimal;

    return-void
.end method

.method public setImpossible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/ResponsePath;->impossible:Z

    return-void
.end method

.method public setInstructions(Lcom/graphhopper/util/InstructionList;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->instructions:Lcom/graphhopper/util/InstructionList;

    return-void
.end method

.method public setNumChanges(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/ResponsePath;->numChanges:I

    return-void
.end method

.method public setPoints(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    sget-object v1, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call setPoint twice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPointsOrder(Ljava/util/List;)Lcom/graphhopper/ResponsePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/graphhopper/ResponsePath;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->pointsOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->pointsOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setRouteWeight(D)Lcom/graphhopper/ResponsePath;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/ResponsePath;->routeWeight:D

    return-object p0
.end method

.method public setTime(J)Lcom/graphhopper/ResponsePath;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/ResponsePath;->time:J

    return-object p0
.end method

.method public setWaypointIndices(Ljava/util/List;)Lcom/graphhopper/ResponsePath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/graphhopper/ResponsePath;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->waypointIndices:Ljava/util/List;

    return-object p0
.end method

.method public setWaypoints(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->waypointList:Lcom/graphhopper/util/PointList;

    sget-object v1, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/ResponsePath;->waypointList:Lcom/graphhopper/util/PointList;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call setWaypoints twice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/ResponsePath;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nodes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/ResponsePath;->instructions:Lcom/graphhopper/util/InstructionList;

    const-string v2, ", "

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/ResponsePath;->instructions:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/graphhopper/ResponsePath;->errors:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
