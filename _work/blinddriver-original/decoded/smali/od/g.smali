.class public abstract Lod/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v1, 0x4031666666666666L    # 17.4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lt8/j;

    invoke-direct {v2, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v3, 0x4031000000000000L    # 17.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v4, 0x403099999999999aL    # 16.6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v5, v4

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide v5, 0x403019999999999aL    # 16.1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v5, Lt8/j;

    invoke-direct {v5, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v6, 0x402f333333333333L    # 15.6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v6, Lt8/j;

    invoke-direct {v6, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide v0, 0x4040800000000000L    # 33.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v7, 0x402e333333333333L    # 15.1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v7, Lt8/j;

    invoke-direct {v7, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v7}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lod/g;->a:Ljava/util/List;

    return-void
.end method

.method public static a(DLjava/lang/Double;)D
    .locals 11

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    sget-object v2, Lod/g;->a:Ljava/util/List;

    invoke-static {v2}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt8/j;

    iget-object v3, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, p0, v3

    if-gtz v3, :cond_1

    invoke-static {v2}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt8/j;

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt8/j;

    iget-object v7, v6, Lt8/j;->l:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    iget-object v6, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    cmpg-double v6, p0, v7

    if-gtz v6, :cond_2

    sub-int/2addr v5, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt8/j;

    iget-object v3, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v9, v5

    sub-double/2addr p0, v3

    mul-double/2addr p0, v9

    sub-double/2addr v7, v3

    div-double/2addr p0, v7

    add-double/2addr p0, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt8/j;

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x4075e00000000000L    # 350.0

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_4

    goto :goto_2

    :cond_4
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double p2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-gtz p2, :cond_5

    goto :goto_2

    :cond_5
    sub-double/2addr v4, v2

    mul-double/2addr v4, v0

    const-wide v0, 0x406cc00000000000L    # 230.0

    div-double v0, v4, v0

    :cond_6
    :goto_2
    add-double v2, p0, v0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    const-wide/high16 v6, 0x4033000000000000L    # 19.0

    invoke-static/range {v2 .. v7}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    return-wide p0
.end method
