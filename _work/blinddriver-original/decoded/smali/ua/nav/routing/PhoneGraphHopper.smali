.class public final Lua/nav/routing/PhoneGraphHopper;
.super Lcom/graphhopper/GraphHopper;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final graphDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "graphDir"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;-><init>()V

    iput-object p1, p0, Lua/nav/routing/PhoneGraphHopper;->graphDir:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G()D
    .locals 2

    invoke-static {}, Lua/nav/routing/PhoneGraphHopper;->truckWeighting$lambda$3()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic H(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    invoke-static {p0}, Lua/nav/routing/PhoneGraphHopper;->truckWeighting$lambda$2(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic I(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    invoke-static {p0, p1, p2}, Lua/nav/routing/PhoneGraphHopper;->carWeighting$lambda$1(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic J(Lua/nav/routing/PhoneGraphHopper;Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lua/nav/routing/PhoneGraphHopper;->createWeightingFactory$lambda$0(Lua/nav/routing/PhoneGraphHopper;Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lid/l1;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    invoke-static/range {p0 .. p9}, Lua/nav/routing/PhoneGraphHopper;->truckWeighting$lambda$1(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lid/l1;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic L(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lua/nav/routing/PhoneGraphHopper;->truckWeighting$lambda$4(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic M(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    invoke-static {p0, p1, p2}, Lua/nav/routing/PhoneGraphHopper;->truckWeighting$lambda$0(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic N(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lua/nav/routing/PhoneGraphHopper;->carWeighting$lambda$4(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic O(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    invoke-static {p0}, Lua/nav/routing/PhoneGraphHopper;->carWeighting$lambda$2(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic P(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    invoke-static {p0, p1, p2}, Lua/nav/routing/PhoneGraphHopper;->carWeighting$lambda$0(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic Q()D
    .locals 2

    invoke-static {}, Lua/nav/routing/PhoneGraphHopper;->carWeighting$lambda$3()D

    move-result-wide v0

    return-wide v0
.end method

.method private final carWeighting()Lcom/graphhopper/routing/weighting/custom/CustomWeighting;
    .locals 11

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v1, "car_average_speed"

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v1, "car_access"

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    new-instance v2, Lid/x;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lid/x;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;I)V

    new-instance v4, Lcom/graphhopper/routing/h;

    invoke-direct {v4, p0}, Lcom/graphhopper/routing/h;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    new-instance v1, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;

    new-instance v3, Lid/x;

    const/4 p0, 0x1

    invoke-direct {v3, v0, p0}, Lid/x;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;I)V

    new-instance v5, Lc2/c0;

    const/16 p0, 0x8

    invoke-direct {v5, p0}, Lc2/c0;-><init>(I)V

    new-instance v6, Lc2/c0;

    const/16 p0, 0x9

    invoke-direct {v6, p0}, Lc2/c0;-><init>(I)V

    const-wide v7, 0x4056800000000000L    # 90.0

    const-wide v9, 0x4072c00000000000L    # 300.0

    invoke-direct/range {v1 .. v10}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;DD)V

    new-instance p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;

    sget-object v0, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;-><init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V

    return-object p0
.end method

.method private static final carWeighting$lambda$0(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final carWeighting$lambda$1(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static final carWeighting$lambda$2(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxOrMaxStorableDecimal()D

    move-result-wide v0

    return-wide v0
.end method

.method private static final carWeighting$lambda$3()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method private static final carWeighting$lambda$4(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static final createWeightingFactory$lambda$0(Lua/nav/routing/PhoneGraphHopper;Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 1

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "car"

    invoke-static {p3, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lua/nav/routing/PhoneGraphHopper;->carWeighting()Lcom/graphhopper/routing/weighting/custom/CustomWeighting;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "truck"

    invoke-static {p3, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lua/nav/routing/PhoneGraphHopper;->truckWeighting(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/custom/CustomWeighting;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u043d\u0435\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u044f "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final truckWeighting(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/custom/CustomWeighting;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v3, "car_average_speed"

    invoke-virtual {v2, v3}, Lcom/graphhopper/routing/util/EncodingManager;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v2

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v4, "car_access"

    invoke-virtual {v3, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v8

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v4, "hgv"

    const-class v5, Lcom/graphhopper/routing/ev/Hgv;

    invoke-virtual {v3, v4, v5}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v6

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v4, "road_access"

    const-class v5, Lcom/graphhopper/routing/ev/RoadAccess;

    invoke-virtual {v3, v4, v5}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v7

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v4, "max_width"

    invoke-virtual {v3, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v10

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v4, "max_height"

    invoke-virtual {v3, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v11

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v4, "max_weight"

    invoke-virtual {v3, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v12

    iget-object v0, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v3, "max_weight_except"

    const-class v4, Lcom/graphhopper/routing/ev/MaxWeightExcept;

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v13

    sget-object v0, Lid/l1;->Companion:Lid/k1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "h"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truck.weight"

    invoke-virtual {v1, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "truck.height"

    invoke-virtual {v1, v3}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "truck.width"

    invoke-virtual {v1, v4}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v14, Lid/l1;

    move-object v9, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v15

    invoke-virtual {v1, v3, v5, v6}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v17

    invoke-virtual {v1, v4, v5, v6}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v19

    invoke-direct/range {v14 .. v20}, Lid/l1;-><init>(DDD)V

    goto :goto_0

    :cond_0
    move-object v9, v6

    const/4 v14, 0x0

    :goto_0
    new-instance v0, Lid/x;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lid/x;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;I)V

    new-instance v18, Lid/y;

    move-object v6, v9

    move-object v9, v14

    move-object/from16 v5, v18

    invoke-direct/range {v5 .. v13}, Lid/y;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lid/l1;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    new-instance v15, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;

    new-instance v1, Lid/x;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lid/x;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;I)V

    new-instance v2, Lc2/c0;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lc2/c0;-><init>(I)V

    new-instance v3, Lc2/c0;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lc2/c0;-><init>(I)V

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    const-wide v23, 0x4072c00000000000L    # 300.0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;DD)V

    new-instance v0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;

    sget-object v1, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-direct {v0, v1, v15}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;-><init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V

    return-object v0
.end method

.method private static final truckWeighting$lambda$0(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide p0

    :goto_0
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p0, v0

    const-wide v0, 0x4057c00000000000L    # 95.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final truckWeighting$lambda$1(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lid/l1;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    if-eqz p9, :cond_0

    invoke-interface {v8, v0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/graphhopper/routing/ev/Hgv;

    goto :goto_1

    :cond_0
    invoke-interface {v8, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p9, :cond_1

    invoke-interface {v8, v1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v1

    :goto_2
    check-cast v1, Lcom/graphhopper/routing/ev/RoadAccess;

    goto :goto_3

    :cond_1
    invoke-interface {v8, v1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_2

    :goto_3
    if-eqz p9, :cond_2

    invoke-interface {v8, v2}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v2

    goto :goto_4

    :cond_2
    invoke-interface {v8, v2}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v2

    :goto_4
    sget-object v9, Lcom/graphhopper/routing/ev/Hgv;->NO:Lcom/graphhopper/routing/ev/Hgv;

    const-wide/16 v10, 0x0

    if-ne v0, v9, :cond_3

    return-wide v10

    :cond_3
    if-nez v2, :cond_4

    sget-object v2, Lcom/graphhopper/routing/ev/RoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/RoadAccess;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/graphhopper/routing/ev/Hgv;->DELIVERY:Lcom/graphhopper/routing/ev/Hgv;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/graphhopper/routing/ev/Hgv;->DESTINATION:Lcom/graphhopper/routing/ev/Hgv;

    if-eq v0, v2, :cond_4

    return-wide v10

    :cond_4
    sget-object v2, Lcom/graphhopper/routing/ev/RoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/RoadAccess;

    const-wide v12, 0x3fb999999999999aL    # 0.1

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/graphhopper/routing/ev/Hgv;->DELIVERY:Lcom/graphhopper/routing/ev/Hgv;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/graphhopper/routing/ev/Hgv;->DESTINATION:Lcom/graphhopper/routing/ev/Hgv;

    if-ne v0, v1, :cond_5

    goto :goto_5

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_6
    :goto_5
    move-wide v0, v12

    :goto_6
    if-eqz v3, :cond_e

    if-eqz p9, :cond_7

    invoke-interface {v8, v4}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v14

    :goto_7
    move-wide/from16 p0, v10

    goto :goto_8

    :cond_7
    invoke-interface {v8, v4}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v14

    goto :goto_7

    :goto_8
    iget-wide v10, v3, Lid/l1;->c:D

    cmpg-double v2, v14, v10

    if-gez v2, :cond_8

    return-wide p0

    :cond_8
    if-eqz p9, :cond_9

    invoke-interface {v8, v5}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v4

    goto :goto_9

    :cond_9
    invoke-interface {v8, v5}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v4

    :goto_9
    iget-wide v9, v3, Lid/l1;->b:D

    cmpg-double v2, v4, v9

    if-gez v2, :cond_a

    return-wide p0

    :cond_a
    if-eqz p9, :cond_b

    invoke-interface {v8, v6}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v4

    goto :goto_a

    :cond_b
    invoke-interface {v8, v6}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v4

    :goto_a
    iget-wide v2, v3, Lid/l1;->a:D

    cmpg-double v2, v4, v2

    if-gez v2, :cond_e

    if-eqz p9, :cond_c

    invoke-interface {v8, v7}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v2

    :goto_b
    check-cast v2, Lcom/graphhopper/routing/ev/MaxWeightExcept;

    goto :goto_c

    :cond_c
    invoke-interface {v8, v7}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_b

    :goto_c
    sget-object v3, Lcom/graphhopper/routing/ev/MaxWeightExcept;->MISSING:Lcom/graphhopper/routing/ev/MaxWeightExcept;

    if-ne v2, v3, :cond_d

    return-wide p0

    :cond_d
    mul-double/2addr v0, v12

    :cond_e
    return-wide v0
.end method

.method private static final truckWeighting$lambda$2(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 4

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxOrMaxStorableDecimal()D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    const-wide v2, 0x4057c00000000000L    # 95.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final truckWeighting$lambda$3()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method private static final truckWeighting$lambda$4(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public createWeightingFactory()Lcom/graphhopper/routing/WeightingFactory;
    .locals 1

    new-instance v0, Lb/e0;

    invoke-direct {v0, p0}, Lb/e0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getProfileHash(Lcom/graphhopper/config/Profile;)I
    .locals 8

    const-string v0, "profile"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lua/nav/routing/PhoneGraphHopper;->graphDir:Ljava/lang/String;

    const-string v2, "properties.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v0}, Lf9/j;->y(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    const-string v5, "profiles="

    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v5, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-static {v6, v5, v6}, Lr9/k;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v4, 0x2c

    aput-char v4, v1, v3

    invoke-static {v0, v1}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v1

    :cond_4
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    const/16 v0, 0x7c

    invoke-static {v0, v2, v2}, Lr9/k;->s0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_5
    invoke-super {p0, p1}, Lcom/graphhopper/GraphHopper;->getProfileHash(Lcom/graphhopper/config/Profile;)I

    move-result p0

    return p0
.end method
