.class public Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# static fields
.field private static final DEFAULT_REWRITE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JARO_WINKLER_ACCEPT_FACTOR:D = 0.9

.field private static final WORD_CHAR:Ljava/util/regex/Pattern;

.field private static final jaroWinkler:Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;


# instance fields
.field private final edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

.field private final pointCircle:Lcom/graphhopper/util/shapes/Circle;

.field private final pointHint:Ljava/lang/String;

.field private final rewriteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter$1;

    invoke-direct {v0}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter$1;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->DEFAULT_REWRITE_MAP:Ljava/util/Map;

    const-string v0, "\\p{LD}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->WORD_CHAR:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;

    invoke-direct {v0}, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->jaroWinkler:Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;Lcom/graphhopper/util/shapes/GHPoint;D)V
    .locals 7

    .line 1
    sget-object v6, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->DEFAULT_REWRITE_MAP:Ljava/util/Map;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;-><init>(Lcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;Lcom/graphhopper/util/shapes/GHPoint;DLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;Lcom/graphhopper/util/shapes/GHPoint;DLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    .line 4
    iput-object p6, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->rewriteMap:Ljava/util/Map;

    if-nez p2, :cond_0

    .line 5
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p2}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->removeRelation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->prepareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->pointHint:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/graphhopper/util/shapes/Circle;

    iget-wide v1, p3, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v3, p3, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/util/shapes/Circle;-><init>(DDD)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->pointCircle:Lcom/graphhopper/util/shapes/Circle;

    return-void
.end method

.method private static createBBox(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/shapes/BBox;
    .locals 9

    sget-object v0, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, v0}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/util/shapes/BBox;

    const-wide v5, 0x4056800000000000L    # 90.0

    const-wide v7, -0x3fa9800000000000L    # -90.0

    const-wide v1, 0x4066800000000000L    # 180.0

    const-wide v3, -0x3f99800000000000L    # -180.0

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/graphhopper/util/shapes/BBox;->update(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isJaroWinklerSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->jaroWinkler:Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->similarity(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLevenshteinSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-static {p1, p2}, Lcom/graphhopper/apache/commons/lang3/StringUtils;->getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    if-gt p1, p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private prepareName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->WORD_CHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->rewriteMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeRelation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->pointHint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->createBBox(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    iget-object v1, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->pointCircle:Lcom/graphhopper/util/shapes/Circle;

    invoke-virtual {v1, p1}, Lcom/graphhopper/util/shapes/Circle;->intersects(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->removeRelation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->prepareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->pointHint:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->isJaroWinklerSimilar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNormalizedPointHint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;->pointHint:Ljava/lang/String;

    return-object p0
.end method
