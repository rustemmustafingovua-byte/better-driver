.class public Lcom/graphhopper/routing/weighting/custom/CustomModelParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BACKWARD_PREFIX:Ljava/lang/String; = "backward_"

.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final CACHE_SIZE:I

.field static final CHANGE_ANGLE:Ljava/lang/String; = "change_angle"

.field private static final INTERNAL_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final IN_AREA_PREFIX:Ljava/lang/String; = "in_"

.field private static final JANINO_DEBUG:Z

.field static final PREV_PREFIX:Ljava/lang/String; = "prev_"

.field private static final SCRIPT_FILE_DIR:Ljava/lang/String;

.field private static final longVal:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->longVal:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "org.codehaus.janino.source_debugging.enable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->JANINO_DEBUG:Z

    const-string v0, "org.codehaus.janino.source_debugging.dir"

    const-string v1, "./src/main/java/com/graphhopper/routing/weighting/custom"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->SCRIPT_FILE_DIR:Ljava/lang/String;

    const-string v0, "graphhopper.custom_weighting.cache_size"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE_SIZE:I

    new-instance v1, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$1;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$1;-><init>(IFZ)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->INTERNAL_CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->lambda$verifyExpressions$2(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lmb/u3;Lmb/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->lambda$injectStatements$4(Lmb/u3;Lmb/f1;)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->lambda$verifyExpressions$1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static createClassTemplate(JLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/Map;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/JsonFeature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "import com.graphhopper.routing.ev.*;\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "import java.util.Map;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/graphhopper/util/CustomModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "import "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "this.lookup = lookup;\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "this.customModel = customModel;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x9

    const-string v10, "backward_"

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "prev_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-class v9, Lcom/graphhopper/util/JsonFeature;

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0, v8}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "this."

    if-eqz v10, :cond_6

    const-class v9, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-interface {v0, v8, v9}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object v9

    invoke-static {v9}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v10

    const-string v12, " "

    const-string v13, "_enc;\n"

    const-string v14, "protected "

    invoke-static {v14, v10, v12, v8, v13}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_enc = ("

    const-string v12, ") lookup.getEncodedValue(\""

    invoke-static {v11, v8, v10, v9, v12}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\", EncodedValue.class);\n"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p6

    goto :goto_3

    :cond_6
    const-string v10, "in_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-nez v7, :cond_7

    const-class v7, Lcom/graphhopper/util/shapes/BBox;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/graphhopper/util/GHUtility;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lrb/d;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lpb/y;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/graphhopper/util/shapes/Polygon;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    :cond_7
    invoke-static {v8}, Lcom/graphhopper/util/JsonFeature;->isValidId(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, p6

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/graphhopper/util/JsonFeature;

    const-string v13, "Area \'"

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v10}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v13

    instance-of v13, v13, Lpb/y;

    if-eqz v13, :cond_9

    invoke-virtual {v10}, Lcom/graphhopper/util/JsonFeature;->getBBox()Lpb/h;

    move-result-object v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "protected Polygon "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "JsonFeature feature_"

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " = (JsonFeature) areas.get(\""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\");\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = new Polygon(new PreparedPolygon((Polygonal) feature_"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".getGeometry()));\n"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bounding box of area "

    const-string v2, " must be empty"

    invoke-static {v1, v9, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v1

    invoke-virtual {v1}, Lpb/i;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Currently only type=Polygon is supported for areas but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\' does not contain a geometry"

    invoke-static {v13, v9, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\' wasn\'t found"

    invoke-static {v13, v9, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Area has invalid name: "

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v12, p6

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto/16 :goto_3

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable not supported: "

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-class v0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "package com.graphhopper.routing.weighting.custom;\nimport "

    const-string v9, ";\nimport "

    invoke-static {v8, v0, v9, v4, v9}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\npublic class JaninoCustomWeightingHelperSubclass"

    invoke-static {v0, v6, v2, v1, v4}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " extends CustomWeightingHelper {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   @Override\n   public void init(CustomModel customModel, EncodedValueLookup lookup, Map<String, "

    const-string v2, "> areas) {\n"

    invoke-static {v0, v1, v7, v2, v5}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "   }\n\n   @Override\n   public double getPriority(EdgeIteratorState edge, boolean reverse) {\n      return 1; //will be overwritten by code injected in DeepCopier\n   }\n   @Override\n   public double getSpeed(EdgeIteratorState edge, boolean reverse) {\n      return 1; //will be overwritten by code injected in DeepCopier\n   }\n   @Override\n   public double getTurnPenalty(BaseGraph graph, EdgeIntAccess edgeIntAccess, int inEdge, int viaNode, int outEdge) {\n      return 1; //will be overwritten by code injected in DeepCopier\n   }\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createClazz(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/CustomModel;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "com.graphhopper.routing.weighting.custom.JaninoCustomWeightingHelperSubclass"

    :try_start_0
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariables(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createGetPriorityStatements(Ljava/util/Set;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v3

    sget-object v5, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The first group needs to end with an \'else\' (or contain a single unconditional \'if\' statement)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    const-string v3, "true"

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v3

    sget-object v5, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    if-ne v3, v5, :cond_2

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    if-ne v2, v3, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariables(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createGetSpeedStatements(Ljava/util/Set;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariables(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v6, p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createGetTurnPenaltyStatements(Ljava/util/Set;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object v10

    sget-object v2, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->longVal:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getAreas()Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/CustomModel;->getAreasAsMap(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/Map;

    move-result-object v8

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createClassTemplate(JLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lmb/d6;

    new-instance v4, Lmb/j6;

    const-string v5, "source"

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {p1, v4}, Lmb/d6;-><init>(Lmb/j6;)V

    invoke-virtual {p1}, Lmb/d6;->i()Lmb/k0;

    move-result-object p0

    check-cast p0, Lmb/q1;

    invoke-static {v1, v9, v10, p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->injectStatements(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lmb/q1;)Lmb/q1;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createCompiler(JLmb/k0;)Lmb/o6;

    move-result-object p0

    invoke-virtual {p0}, Lmb/o6;->G()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The first group needs to contain a single unconditional \'if\' statement (or end with an \'else\')."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one initial statement under \'speed\' is required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot compile expression: "

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createCompiler(JLmb/k0;)Lmb/o6;
    .locals 4

    const-string v0, "JaninoCustomWeightingHelperSubclass"

    sget-boolean v1, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->JANINO_DEBUG:Z

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lmb/c7;

    invoke-direct {v2, v1}, Lmb/c7;-><init>(Ljava/io/StringWriter;)V

    iget-object v3, v2, Lmb/c7;->a:Lmb/b7;

    invoke-virtual {p2, v3}, Lmb/k0;->f(Lmb/d7;)Ljava/lang/Object;

    iget-object p2, v2, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance p2, Ljava/io/File;

    sget-object v2, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->SCRIPT_FILE_DIR:Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".java"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    sget p2, Lib/b;->a:I

    new-instance p2, Lib/a;

    invoke-direct {p2, p0, p1}, Lib/a;-><init>(Ljava/io/Reader;Ljava/io/FileWriter;)V

    new-instance p0, Lmb/o6;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmb/o6;-><init>(Ljava/lang/String;Lib/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lmb/o6;

    invoke-direct {p0}, Lmb/o6;-><init>()V

    invoke-virtual {p0, p2}, Lmb/o6;->F(Lmb/k0;)V

    return-object p0
.end method

.method private static createGetPriorityStatements(Ljava/util/Set;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/util/CustomModel;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/json/Statement;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/json/Statement$Op;->ADD:Lcom/graphhopper/json/Statement$Op;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'priority\' statement must not have the operation \'add\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority entry"

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->verifyExpressions(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-wide v1, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->GLOBAL_PRIORITY:D

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "double value = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ";\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getVariableDeclaration(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p0, Lmb/d6;

    new-instance p2, Lmb/j6;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string p1, "getPriority"

    invoke-direct {p2, p1, v1}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {p0, p2}, Lmb/d6;-><init>(Lmb/j6;)V

    invoke-virtual {p0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object v0
.end method

.method private static createGetSpeedStatements(Ljava/util/Set;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/util/CustomModel;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed entry"

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->verifyExpressions(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-wide v1, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->GLOBAL_MAX_SPEED:D

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "double value = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ";\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getVariableDeclaration(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lmb/d6;

    new-instance p2, Lmb/j6;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string p1, "getSpeed"

    invoke-direct {p2, p1, v1}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {p0, p2}, Lmb/d6;-><init>(Lmb/j6;)V

    invoke-virtual {p0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object v0
.end method

.method private static createGetTurnPenaltyStatements(Ljava/util/Set;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/util/CustomModel;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/json/Statement;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/json/Statement$Op;->ADD:Lcom/graphhopper/json/Statement$Op;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The value for the \'add\' operation must be positive, but was: "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v2

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'turn_penalty\' statement must have the operation \'add\' but was: "

    const-string v0, " (not yet implemented)"

    invoke-static {p2, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'turn_penalty\' statement cannot be a block (not yet implemented)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn_penalty entry"

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->verifyExpressions(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createSimplifiedLookup(Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "change_angle"

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    move p1, v3

    :goto_2
    if-eqz p1, :cond_9

    const-string v1, "double value = 0;\nboolean inEdgeReverse = !graph.isAdjNode(inEdge, viaNode);\nboolean outEdgeReverse = !graph.isAdjNode(outEdge, viaNode);\n"

    goto :goto_3

    :cond_9
    const-string v1, "double value = 0;\n"

    :goto_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p2, v5, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getTurnPenaltyVariableDeclaration(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string p1, "orientation"

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance p0, Lmb/d6;

    new-instance p1, Lmb/j6;

    new-instance p2, Ljava/io/StringReader;

    invoke-direct {p2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v1, "getTurnPenalty"

    invoke-direct {p1, v1, p2}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {p0, p1}, Lmb/d6;-><init>(Lmb/j6;)V

    invoke-virtual {p0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object v0
.end method

.method private static createSimplifiedLookup(Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/graphhopper/i;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static createWeighting(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/routing/weighting/custom/CustomWeighting;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createWeightingParameters(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;

    move-result-object p0

    new-instance p2, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;

    invoke-direct {p2, p1, p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;-><init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CustomModel cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWeightingParameters(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;
    .locals 12

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->isInternal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->INTERNAL_CACHE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget v3, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE_SIZE:I

    if-lez v3, :cond_1

    if-nez v1, :cond_1

    sget-object v1, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    :cond_1
    if-nez v1, :cond_3

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createClazz(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->isInternal()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->INTERNAL_CACHE:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v4, 0x64

    if-le v0, v4, :cond_3

    sget-object v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const-class v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Internal cache must stay small but was "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Cleared it. Misuse of CustomModel::internal?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lnc/b;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    sget-object v3, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getAreas()Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/util/CustomModel;->getAreasAsMap(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->init(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/Map;)V

    new-instance v2, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;

    new-instance v3, Lcom/graphhopper/routing/weighting/custom/a;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p1}, Lcom/graphhopper/routing/weighting/custom/a;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;I)V

    new-instance v4, Lcom/graphhopper/routing/weighting/custom/a;

    const/4 p1, 0x1

    invoke-direct {v4, v0, p1}, Lcom/graphhopper/routing/weighting/custom/a;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;I)V

    new-instance v5, Lcom/graphhopper/routing/weighting/custom/a;

    const/4 p1, 0x2

    invoke-direct {v5, v0, p1}, Lcom/graphhopper/routing/weighting/custom/a;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;I)V

    new-instance v6, Lcom/graphhopper/routing/weighting/custom/a;

    const/4 p1, 0x3

    invoke-direct {v6, v0, p1}, Lcom/graphhopper/routing/weighting/custom/a;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;I)V

    new-instance v7, Lcom/graphhopper/routing/weighting/custom/a;

    const/4 p1, 0x4

    invoke-direct {v7, v0, p1}, Lcom/graphhopper/routing/weighting/custom/a;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;I)V

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_4

    const-wide/16 v0, 0x0

    :goto_2
    move-wide v8, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getHeadingPenalty()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_5

    const-wide p0, 0x4072c00000000000L    # 300.0

    :goto_4
    move-wide v10, p0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getHeadingPenalty()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    goto :goto_4

    :goto_5
    invoke-direct/range {v2 .. v11}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;-><init>(Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;DD)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot compile expression "

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic d(Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/util/LinkedHashSet;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->lambda$findVariablesForEncodedValuesString$0(Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/util/Set;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->lambda$createSimplifiedLookup$3(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f()I
    .locals 1

    sget v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->CACHE_SIZE:I

    return v0
.end method

.method public static findVariablesForEncodedValuesString(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/CustomModel;",
            "Lcom/graphhopper/routing/weighting/custom/NameValidator;",
            "Lcom/graphhopper/routing/weighting/custom/ClassHelper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    new-instance v1, Lb0/b3;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1, v0}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->findVariablesForEncodedValuesString(Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)V

    .line 4
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->findVariablesForEncodedValuesString(Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static findVariablesForEncodedValuesString(Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/weighting/custom/NameValidator;",
            "Lcom/graphhopper/routing/weighting/custom/ClassHelper;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/json/Statement;

    .line 9
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->findVariablesForEncodedValuesString(Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)Lcom/graphhopper/routing/weighting/custom/ParseResult;

    .line 12
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;)Lcom/graphhopper/routing/weighting/custom/ParseResult;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static bridge synthetic g(Lmb/u3;Lorg/codehaus/janino/util/v0;Ljava/util/List;)Lmb/u3;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->injectStatements(Lmb/u3;Lorg/codehaus/janino/util/v0;Ljava/util/List;)Lmb/u3;

    move-result-object p0

    return-object p0
.end method

.method private static getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;

    if-eqz v0, :cond_0

    const-string p0, "IntEncodedValue"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnumType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    const-class v1, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/graphhopper/routing/ev/StringEncodedValue;

    const-string v1, "int"

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v0, :cond_3

    const-string p0, "double"

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    if-eqz v0, :cond_4

    const-string p0, "boolean"

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    if-eqz v0, :cond_5

    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unsupported EncodedValue: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTurnPenaltyVariableDeclaration(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "change_angle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "double change_angle = CustomWeightingHelper.calcChangeAngle(edgeIntAccess, this.orientation_enc, inEdge, inEdgeReverse, outEdge, outEdgeReverse);\n"

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "_enc.getEnum("

    const-string v2, ") this."

    const-string v3, " = ("

    const-string v4, " "

    const-string v5, "false"

    const-string v6, "Currently only EnumEncodedValues are supported: "

    const-class v7, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz v0, :cond_3

    invoke-interface {p0, p1, v7}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    instance-of v0, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string v5, "outEdgeReverse"

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v2, p1, v1, v5}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ", outEdge, edgeIntAccess);\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v0, "prev_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p0, v0, v7}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    instance-of v7, p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_4

    const-string v5, "inEdgeReverse"

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v2, v0, v1, v5}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ", inEdge, edgeIntAccess);\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported for prev: "

    invoke-static {p1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not supported for turn_penalty: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getVariableDeclaration(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "_enc));\n"

    const-string v2, " = ("

    const-string v3, " "

    const-class v4, Lcom/graphhopper/routing/ev/EncodedValue;

    const-string v5, ") this."

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, v4}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") (reverse ? edge.getReverse(("

    invoke-static {v7, v0, v6, v5, p1}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_enc) : edge.get(("

    invoke-static {v7, v0, p0, v5, p1}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "backward_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0, v0, v4}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getInterface(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") (reverse ? edge.get(("

    invoke-static {v8, p1, v7, v5, v0}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_enc) : edge.getReverse(("

    invoke-static {v8, p1, p0, v5, v0}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported for backward: "

    invoke-static {p1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "in_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not supported "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static injectStatements(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lmb/q1;)Lmb/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;",
            "Lmb/q1;",
            ")",
            "Lmb/q1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2
    invoke-virtual {v0, p3}, Lorg/codehaus/janino/util/v0;->copyCompilationUnit(Lmb/q1;)Lmb/q1;

    move-result-object p0

    return-object p0
.end method

.method private static injectStatements(Lmb/u3;Lorg/codehaus/janino/util/v0;Ljava/util/List;)Lmb/u3;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb/u3;",
            "Lorg/codehaus/janino/util/v0;",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;)",
            "Lmb/u3;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v1, Lmb/u3;

    new-instance v2, Lhb/c;

    const-string v0, "m1"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lhb/c;-><init>(Ljava/lang/String;II)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lmb/l0;->d:[Lmb/x3;

    .line 7
    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v3

    iget-object v0, p0, Lmb/u3;->k:[Lmb/w5;

    .line 8
    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object v4

    iget-object v0, p0, Lmb/r2;->e:Lmb/s5;

    .line 9
    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v5

    iget-object v6, p0, Lmb/r2;->f:Ljava/lang/String;

    iget-object v0, p0, Lmb/r2;->g:Lmb/q2;

    .line 10
    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/v0;->copyFormalParameters(Lmb/q2;)Lmb/q2;

    move-result-object v7

    iget-object v0, p0, Lmb/r2;->h:[Lmb/s5;

    .line 11
    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v8

    iget-object p0, p0, Lmb/u3;->l:Lmb/z1;

    .line 12
    invoke-virtual {p1, p0}, Lorg/codehaus/janino/util/v0;->copyOptionalElementValue(Lmb/z1;)Lmb/z1;

    move-result-object v9

    .line 13
    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/v0;->copyOptionalStatements(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    .line 14
    new-instance p0, Lcom/graphhopper/c;

    const/4 p1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/graphhopper/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v1

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Statements cannot be empty when copying method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static synthetic lambda$createSimplifiedLookup$3(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 2

    const-string v0, "backward_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-class v1, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "prev_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$findVariablesForEncodedValuesString$0(Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "in_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/graphhopper/routing/weighting/custom/NameValidator;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private static synthetic lambda$injectStatements$4(Lmb/u3;Lmb/f1;)V
    .locals 0

    invoke-interface {p1, p0}, Lmb/f1;->a(Lmb/a5;)V

    return-void
.end method

.method private static synthetic lambda$verifyExpressions$1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "in_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "change_angle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "backward_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "prev_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$verifyExpressions$2(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->getReturnType(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t find class for "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseExpressions(Ljava/lang/StringBuilder;Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/ClassHelper;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/graphhopper/routing/weighting/custom/NameValidator;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/weighting/custom/ClassHelper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/json/Statement;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    const-string v9, "}\n"

    const-string v4, "  "

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v2

    const-string v3, "else {"

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v4}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object v4, v1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->parseExpressions(Ljava/lang/StringBuilder;Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/ClassHelper;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/graphhopper/json/Statement$Op;->build(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; }\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "condition must be empty but was "

    invoke-static {v2, v1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    sget-object v5, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The statement must be either \'if\', \'else_if\' or \'else\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, p5

    invoke-static {v2, p1, v6}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)Lcom/graphhopper/routing/weighting/custom/ParseResult;

    move-result-object v2

    iget-boolean v10, v2, Lcom/graphhopper/routing/weighting/custom/ParseResult;->ok:Z

    if-nez v10, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/graphhopper/routing/weighting/custom/ParseResult;->invalidMessage:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    const-string v3, ": "

    invoke-static {v3, v2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " invalid condition \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v11, v2, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    move-object/from16 v12, p3

    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v11

    if-ne v11, v3, :cond_7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "else "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v3

    const-string v11, "if ("

    if-eqz v3, :cond_8

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/graphhopper/routing/weighting/custom/ParseResult;->converted:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ") {\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v4}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v1

    move-object v5, v6

    move-object v3, v12

    move-object v1, p1

    move-object v6, v2

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->parseExpressions(Ljava/lang/StringBuilder;Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/ClassHelper;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/graphhopper/routing/weighting/custom/ParseResult;->converted:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ") {"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/graphhopper/json/Statement$Op;->build(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";}\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static splitIntoGroup(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    sget-object v3, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Every group must start with an if-statement"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method private static verifyExpressions(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/graphhopper/routing/weighting/custom/b;

    const/4 v0, 0x0

    invoke-direct {v1, p4, v0}, Lcom/graphhopper/routing/weighting/custom/b;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;I)V

    invoke-static {p4}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createSimplifiedLookup(Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/function/Function;

    move-result-object p4

    new-instance v5, Lb/e0;

    invoke-direct {v5, p4}, Lb/e0;-><init>(Ljava/lang/Object;)V

    const-string v6, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->parseExpressions(Ljava/lang/StringBuilder;Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/weighting/custom/ClassHelper;Ljava/lang/String;)V

    const-string p0, "return value;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lmb/d6;

    new-instance p1, Lmb/j6;

    new-instance p2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, p2}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {p0, p1}, Lmb/d6;-><init>(Lmb/j6;)V

    invoke-virtual {p0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
