.class public Lcom/graphhopper/routing/util/UrbanDensityCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lnc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/routing/util/UrbanDensityCalculator;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->logger:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ev/EnumEncodedValue;DLcom/graphhopper/routing/util/i;D[ZLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->lambda$calcCity$3(Lcom/graphhopper/routing/ev/EnumEncodedValue;DLjava/util/function/ToDoubleFunction;D[ZLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->lambda$calcResidential$0(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(DLcom/graphhopper/routing/util/k;[ZDLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->lambda$calcResidential$1(DLjava/util/function/ToDoubleFunction;[ZDLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V

    return-void
.end method

.method private static calcCity(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/EnumEncodedValue;DDI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/UrbanDensity;",
            ">;DDI)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result v0

    new-array v8, v0, [Z

    new-instance v5, Lcom/graphhopper/routing/util/i;

    invoke-direct {v5, p1}, Lcom/graphhopper/routing/util/i;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    new-instance v1, Lcom/graphhopper/routing/util/j;

    move-object v2, p1

    move-wide v3, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/graphhopper/routing/util/j;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;DLcom/graphhopper/routing/util/i;D[Z)V

    invoke-static {p0, v1, p6}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->calcRoadDensities(Lcom/graphhopper/storage/Graph;Ljava/util/function/BiConsumer;I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    aget-boolean p2, v8, p1

    if-eqz p2, :cond_0

    const/high16 p2, -0x80000000

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    sget-object p3, Lcom/graphhopper/routing/ev/UrbanDensity;->CITY:Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-interface {p2, v2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static calcResidential(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;DDI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/UrbanDensity;",
            ">;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "DDI)V"
        }
    .end annotation

    new-instance v3, Lcom/graphhopper/routing/util/k;

    invoke-direct {v3, p2, p3}, Lcom/graphhopper/routing/util/k;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result p2

    new-array v4, p2, [Z

    new-instance v0, Lcom/graphhopper/routing/util/l;

    move-wide v1, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/util/l;-><init>(DLcom/graphhopper/routing/util/k;[ZD)V

    invoke-static {p0, v0, p8}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->calcRoadDensities(Lcom/graphhopper/storage/Graph;Ljava/util/function/BiConsumer;I)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    const/high16 p4, -0x80000000

    invoke-interface {p0, p3, p4}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p4

    aget-boolean p5, v4, p3

    if-eqz p5, :cond_0

    sget-object p5, Lcom/graphhopper/routing/ev/UrbanDensity;->RESIDENTIAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    goto :goto_1

    :cond_0
    sget-object p5, Lcom/graphhopper/routing/ev/UrbanDensity;->RURAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    :goto_1
    invoke-interface {p4, p1, p5}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static calcUrbanDensity(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;DDDDI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/UrbanDensity;",
            ">;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "DDDDI)V"
        }
    .end annotation

    sget-object v0, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->logger:Lnc/b;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Calculating residential areas ..., radius={}, sensitivity={}, threads={}"

    invoke-interface {v0, v2, v1}, Lnc/b;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/graphhopper/util/StopWatch;->started()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p12

    invoke-static/range {v2 .. v10}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->calcResidential(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;DDI)V

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p2

    invoke-virtual {p2}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Finished calculating residential areas, took: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "s"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lnc/b;->k(Ljava/lang/String;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p8, v1

    if-lez p3, :cond_0

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v1, v2}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "Calculating city areas ..., radius={}, sensitivity={}, threads={}"

    invoke-interface {v0, v1, p3}, Lnc/b;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/graphhopper/util/StopWatch;->started()Lcom/graphhopper/util/StopWatch;

    move-result-object p3

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move/from16 v8, p12

    invoke-static/range {v2 .. v8}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->calcCity(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/EnumEncodedValue;DDI)V

    invoke-virtual {p3}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Finished calculating city areas, took: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->lambda$calcCity$2(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$calcCity$2(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D
    .locals 0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/UrbanDensity;->RESIDENTIAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    if-ne p0, p1, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static synthetic lambda$calcCity$3(Lcom/graphhopper/routing/ev/EnumEncodedValue;DLjava/util/function/ToDoubleFunction;D[ZLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 1

    invoke-interface {p8, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/UrbanDensity;

    sget-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->RURAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p7, p8, p1, p2, p3}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->calcRoadDensity(Lcom/graphhopper/util/EdgeIteratorState;DLjava/util/function/ToDoubleFunction;)D

    move-result-wide p0

    mul-double/2addr p0, p4

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_1

    invoke-interface {p8}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    const/4 p1, 0x1

    aput-boolean p1, p6, p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$calcResidential$0(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D
    .locals 0

    invoke-interface {p2, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-interface {p2, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->TRACK:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->SERVICE:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->PATH:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->BRIDLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static synthetic lambda$calcResidential$1(DLjava/util/function/ToDoubleFunction;[ZDLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 0

    invoke-virtual {p6, p7, p0, p1, p2}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->calcRoadDensity(Lcom/graphhopper/util/EdgeIteratorState;DLjava/util/function/ToDoubleFunction;)D

    move-result-wide p0

    invoke-interface {p7}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p2

    mul-double/2addr p0, p4

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, p0, p4

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    aput-boolean p0, p3, p2

    return-void
.end method
