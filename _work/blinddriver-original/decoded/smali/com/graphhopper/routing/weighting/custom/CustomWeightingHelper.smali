.class public Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static GLOBAL_MAX_SPEED:D = 999.0

.field static GLOBAL_PRIORITY:D = 1.0


# instance fields
.field protected customModel:Lcom/graphhopper/util/CustomModel;

.field protected lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcChangeAngle(DD)D
    .locals 4

    .line 1
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p2, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr p2, v2

    sub-double/2addr p2, p0

    const-wide p0, 0x4080e00000000000L    # 540.0

    add-double/2addr p2, p0

    rem-double/2addr p2, v2

    sub-double/2addr p2, v0

    return-wide p2
.end method

.method public static calcChangeAngle(Lcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/routing/ev/DecimalEncodedValue;IZIZ)D
    .locals 0

    .line 2
    invoke-interface {p1, p3, p2, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p2

    .line 3
    invoke-interface {p1, p5, p4, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    .line 4
    invoke-static {p2, p3, p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->calcChangeAngle(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static in(Lcom/graphhopper/util/shapes/Polygon;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 3

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->createBBox(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/shapes/BBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/Polygon;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/graphhopper/util/shapes/BBox;->intersects(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/Polygon;->isRectangle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/graphhopper/util/shapes/BBox;->contains(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->makeImmutable()Lcom/graphhopper/util/PointList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/shapes/Polygon;->intersects(Lcom/graphhopper/util/PointList;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final calcMaxPriority()D
    .locals 7

    new-instance v0, Lcom/graphhopper/json/MinMax;

    sget-wide v1, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->GLOBAL_PRIORITY:D

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->customModel:Lcom/graphhopper/util/CustomModel;

    invoke-virtual {v1}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/json/Statement;

    invoke-virtual {v5}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-interface {v5, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-interface {v5, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v2

    invoke-interface {v2}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxOrMaxStorableDecimal()D

    move-result-wide v5

    iput-wide v5, v0, Lcom/graphhopper/json/MinMax;->max:D

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->findMinMax(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;

    iget-wide v1, v0, Lcom/graphhopper/json/MinMax;->min:D

    cmpg-double p0, v1, v3

    if-ltz p0, :cond_2

    iget-wide v1, v0, Lcom/graphhopper/json/MinMax;->max:D

    cmpg-double p0, v1, v3

    if-ltz p0, :cond_1

    return-wide v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-wide v0, v0, Lcom/graphhopper/json/MinMax;->max:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maximum priority has to be >=0 but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-wide v0, v0, Lcom/graphhopper/json/MinMax;->min:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "priority has to be >=0 but can be negative ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final calcMaxSpeed()D
    .locals 5

    new-instance v0, Lcom/graphhopper/json/MinMax;

    sget-wide v1, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->GLOBAL_MAX_SPEED:D

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->customModel:Lcom/graphhopper/util/CustomModel;

    invoke-virtual {v1}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-static {v0, v1, v2}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->findMinMax(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;

    iget-wide v1, v0, Lcom/graphhopper/json/MinMax;->min:D

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, v0, Lcom/graphhopper/json/MinMax;->max:D

    cmpg-double v3, v1, v3

    if-lez v3, :cond_1

    sget-wide v3, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->GLOBAL_MAX_SPEED:D

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->customModel:Lcom/graphhopper/util/CustomModel;

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The first statement for \'speed\' must be unconditionally to set the speed. But it was "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-wide v0, v0, Lcom/graphhopper/json/MinMax;->max:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maximum speed has to be >0 but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-wide v0, v0, Lcom/graphhopper/json/MinMax;->min:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speed has to be >=0 but can be negative ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPriority(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public getSpeed(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public getTurnPenalty(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public init(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/CustomModel;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/JsonFeature;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->customModel:Lcom/graphhopper/util/CustomModel;

    return-void
.end method
