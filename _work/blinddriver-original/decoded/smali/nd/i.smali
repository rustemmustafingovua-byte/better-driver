.class public abstract Lnd/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;

.field public static final c:Lcd/c;

.field public static final d:Lcd/c;

.field public static final e:Lcd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    new-instance v3, Ll1/b;

    invoke-direct {v3, v1, v2}, Ll1/b;-><init>(J)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    const/high16 v4, -0x3bd10000    # -700.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v1, v5

    and-long/2addr v8, v6

    or-long/2addr v1, v8

    new-instance v8, Ll1/b;

    invoke-direct {v8, v1, v2}, Ll1/b;-><init>(J)V

    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v9, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v11, v2

    shl-long/2addr v9, v5

    and-long/2addr v11, v6

    or-long/2addr v9, v11

    new-instance v2, Ll1/b;

    invoke-direct {v2, v9, v10}, Ll1/b;-><init>(J)V

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v9, v1

    const/high16 v1, -0x3b6a0000    # -1200.0f

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v11, v1

    shl-long/2addr v9, v5

    and-long/2addr v11, v6

    or-long/2addr v9, v11

    new-instance v1, Ll1/b;

    invoke-direct {v1, v9, v10}, Ll1/b;-><init>(J)V

    filled-new-array {v3, v8, v2, v1}, [Ll1/b;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lnd/i;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v8, v3

    shl-long/2addr v1, v5

    and-long/2addr v8, v6

    or-long/2addr v1, v8

    new-instance v3, Ll1/b;

    invoke-direct {v3, v1, v2}, Ll1/b;-><init>(J)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v8, v2

    shl-long/2addr v0, v5

    and-long/2addr v8, v6

    or-long/2addr v0, v8

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    const/high16 v0, 0x44020000    # 520.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v8, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v10, v1

    shl-long/2addr v8, v5

    and-long/2addr v10, v6

    or-long/2addr v8, v10

    new-instance v1, Ll1/b;

    invoke-direct {v1, v8, v9}, Ll1/b;-><init>(J)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    const v0, -0x3b5d8000    # -1300.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v10, v0

    shl-long v4, v8, v5

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    new-instance v0, Ll1/b;

    invoke-direct {v0, v4, v5}, Ll1/b;-><init>(J)V

    filled-new-array {v3, v2, v1, v0}, [Ll1/b;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnd/i;->b:Ljava/util/List;

    new-instance v0, Lcd/c;

    const-string v1, "\u0432\u0443\u043b\u0438\u0446\u044f \u0421\u043e\u0431\u043e\u0440\u043d\u0430"

    const-string v2, "Soborna Street"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnd/i;->c:Lcd/c;

    new-instance v0, Lcd/c;

    const-string v1, "\u0432\u0443\u043b\u0438\u0446\u044f \u041b\u0435\u0441\u0456 \u0423\u043a\u0440\u0430\u0457\u043d\u043a\u0438"

    const-string v2, "Lesi Ukrainky Street"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnd/i;->d:Lcd/c;

    new-instance v0, Lcd/c;

    const-string v1, "\u0432\u0443\u043b\u0438\u0446\u044f \u0425\u0440\u0435\u0449\u0430\u0442\u0438\u043a"

    const-string v2, "Khreshchatyk Street"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnd/i;->e:Lcd/c;

    return-void
.end method

.method public static final a(ILjava/util/List;)F
    .locals 7

    add-int/lit8 v0, p0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/b;

    iget-wide v1, v1, Ll1/b;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/b;

    iget-wide v4, v2, Ll1/b;->a:J

    shr-long v2, v4, v3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    iget-wide v3, v0, Ll1/b;->a:J

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide p0, p0, Ll1/b;->a:J

    and-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sub-float/2addr v0, p0

    neg-float p0, v0

    float-to-double p0, p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static b(Ljava/util/List;)[F
    .locals 12

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget v4, v0, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/b;

    iget-wide v5, v5, Ll1/b;->a:J

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll1/b;

    iget-wide v8, v6, Ll1/b;->a:J

    shr-long v6, v8, v7

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll1/b;

    iget-wide v6, v6, Ll1/b;->a:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/b;

    iget-wide v10, v3, Ll1/b;->a:J

    and-long v7, v10, v8

    long-to-int v3, v7

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sub-float/2addr v6, v3

    float-to-double v7, v5

    float-to-double v5, v6

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v3, v5

    add-float/2addr v4, v3

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/util/List;F)J
    .locals 9

    const-string v0, "path"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lnd/i;->b(Ljava/util/List;)[F

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Lg6/c1;->e(FFF)F

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget v0, v0, v1

    sub-float/2addr p1, v0

    const v4, 0x3a83126f    # 0.001f

    sub-float/2addr v3, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    iget-wide v3, v0, Ll1/b;->a:J

    const/16 v0, 0x20

    shr-long/2addr v3, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll1/b;

    iget-wide v4, v4, Ll1/b;->a:J

    shr-long/2addr v4, v0

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/b;

    iget-wide v5, v5, Ll1/b;->a:J

    shr-long/2addr v5, v0

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/b;

    iget-wide v5, v3, Ll1/b;->a:J

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/b;

    iget-wide v5, v2, Ll1/b;->a:J

    and-long/2addr v5, v7

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide v5, p0, Ll1/b;->a:J

    and-long/2addr v5, v7

    long-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sub-float/2addr v2, p0

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr p0, v0

    and-long v0, v1, v7

    or-long/2addr p0, v0

    return-wide p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide p0, p0, Ll1/b;->a:J

    return-wide p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Array is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;
    .locals 12

    new-instance v0, Lua/nav/routing/Step;

    new-instance v4, Lua/nav/routing/GeoPoint;

    const-wide v1, 0x404939999999999aL    # 50.45

    const-wide v5, 0x403e851eb851eb85L    # 30.52

    invoke-direct {v4, v1, v2, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lua/nav/routing/Step;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V

    return-object v0
.end method
