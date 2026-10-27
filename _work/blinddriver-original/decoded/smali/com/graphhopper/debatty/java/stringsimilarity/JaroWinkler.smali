.class public Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_THRESHOLD:D = 0.7

.field private static final JW_COEF:D = 0.1

.field private static final THREE:I = 0x3


# instance fields
.field private final threshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 2
    iput-wide v0, p0, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->threshold:D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->threshold:D

    return-void
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_0

    move-object p0, p1

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object p0, p2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-array v6, v6, [Z

    move v7, v3

    move v8, v7

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v10, v7, v1

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v11, v7, v1

    add-int/2addr v11, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2
    if-ge v10, v11, :cond_2

    aget-boolean v12, v6, v10

    if-nez v12, :cond_1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v9, v12, :cond_1

    aput v10, v4, v7

    aput-boolean v2, v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-array v1, v8, [C

    new-array v2, v8, [C

    move v7, v3

    move v9, v7

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_5

    aget v10, v4, v7

    if-eq v10, v5, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v1, v9

    add-int/lit8 v9, v9, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    move v4, v3

    move v5, v4

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    aget-boolean v7, v6, v4

    if-eqz v7, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move v4, v3

    move v5, v4

    :goto_6
    if-ge v4, v8, :cond_9

    aget-char v6, v1, v4

    aget-char v7, v2, v4

    if-eq v6, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    move v1, v3

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v2, v4, :cond_a

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    filled-new-array {v8, v5, v1, p0}, [I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final distance(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->similarity(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public final getThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->threshold:D

    return-wide v0
.end method

.method public final similarity(Ljava/lang/String;Ljava/lang/String;)D
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->matches(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v1, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-float p2, p2

    div-float p2, v1, p2

    add-float/2addr p2, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    div-float/2addr p1, v1

    add-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    float-to-double v3, p1

    invoke-virtual {p0}, Lcom/graphhopper/debatty/java/stringsimilarity/JaroWinkler;->getThreshold()D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_1

    const/4 p0, 0x3

    aget p0, v0, p0

    int-to-double p0, p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double p0, v1, p0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/4 p2, 0x2

    aget p2, v0, p2

    int-to-double v5, p2

    mul-double/2addr v5, p0

    move-wide v7, v3

    invoke-static/range {v1 .. v8}, Lm/a;->b(DDDD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v3
.end method
