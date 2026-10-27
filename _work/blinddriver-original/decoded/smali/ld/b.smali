.class public final synthetic Lld/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lld/b;->l:I

    iput-object p2, p0, Lld/b;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lld/b;->l:I

    iget-object p0, p0, Lld/b;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lx2/c;

    check-cast p1, Lt2/p;

    check-cast p2, Lt2/k;

    check-cast p3, Lt2/i;

    check-cast p4, Lt2/j;

    iget-object v0, p0, Lx2/c;->p:Lt2/d;

    iget p3, p3, Lt2/i;->a:I

    iget p4, p4, Lt2/j;->a:I

    check-cast v0, Lt2/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt2/e;->b(Lt2/p;Lt2/k;II)Lt2/r;

    move-result-object p1

    instance-of p2, p1, Lt2/r;

    const-string p3, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez p2, :cond_0

    new-instance p2, Lg5/m;

    iget-object p4, p0, Lx2/c;->u:Lg5/m;

    invoke-direct {p2, p1, p4}, Lg5/m;-><init>(Lt2/r;Lg5/m;)V

    iput-object p2, p0, Lx2/c;->u:Lg5/m;

    iget-object p0, p2, Lg5/m;->o:Ljava/lang/Object;

    invoke-static {p0, p3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lt2/r;->l:Ljava/lang/Object;

    invoke-static {p0, p3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p0, Li9/f;

    check-cast p1, Lw/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    check-cast p3, Lr0/q;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 p4, p2, 0x6

    if-nez p4, :cond_2

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x4

    goto :goto_1

    :cond_1
    const/4 p4, 0x2

    :goto_1
    or-int/2addr p2, p4

    :cond_2
    and-int/lit16 p4, p2, 0x83

    const/16 v0, 0x82

    if-eq p4, v0, :cond_3

    const/4 p4, 0x1

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    :goto_2
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p3, v0, p4}, Lr0/q;->T(IZ)Z

    move-result p4

    if-eqz p4, :cond_4

    and-int/lit8 p2, p2, 0xe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p3, p2}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    move-object v0, p0

    check-cast v0, Lm0/b1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Lc2/u;

    check-cast p3, Ll1/b;

    move-object v6, p4

    check-cast v6, Lm0/b0;

    invoke-interface {p2}, Lc2/u;->o()J

    move-result-wide v1

    const/16 p1, 0x20

    shr-long v3, v1, p1

    long-to-int p4, v3

    int-to-float p4, p4

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-float v1, v1

    iget-wide v7, p3, Ll1/b;->a:J

    shr-long v9, v7, p1

    long-to-int p3, v9

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v9, v5, v2

    if-gtz v9, :cond_5

    cmpg-float v2, v2, p4

    if-gtz v2, :cond_5

    and-long v9, v7, v3

    long-to-int v2, v9

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v9, v5, v2

    if-gtz v9, :cond_5

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    move p4, v5

    goto :goto_4

    :cond_6
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpl-float v2, v2, p4

    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    :goto_4
    and-long/2addr v7, v3

    long-to-int p3, v7

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_8

    move v1, v5

    goto :goto_5

    :cond_8
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    :goto_5
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long p3, p3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr p3, p1

    and-long/2addr v1, v3

    or-long v7, p3, v1

    :goto_6
    invoke-virtual {v0, p2, v7, v8}, Lm0/b1;->a(Lc2/u;J)J

    move-result-wide v1

    const-wide p1, 0x7fffffff7fffffffL

    and-long/2addr p1, v1

    const-wide p3, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, p1, p3

    if-eqz p1, :cond_a

    invoke-virtual {v0, p0}, Lm0/b1;->k(Z)V

    const/4 p0, 0x0

    iput-object p0, v0, Lm0/b1;->t:Lm0/t0;

    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lm0/b1;->n(JJZLm0/b0;)Z

    iget-object p0, v0, Lm0/b1;->h:Lk1/u;

    invoke-static {p0}, Lk1/u;->a(Lk1/u;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lm0/b1;->x:Z

    invoke-virtual {v0}, Lm0/b1;->o()V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lm0/b1;->u:Z

    :cond_a
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lld/j;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object v4, p3

    check-cast v4, Ljava/time/LocalDate;

    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-string p1, "cell"

    invoke-static {v1, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "date"

    invoke-static {v4, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lld/e;

    invoke-direct/range {v0 .. v6}, Lld/e;-><init>(Lld/j;DLjava/time/LocalDate;D)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
