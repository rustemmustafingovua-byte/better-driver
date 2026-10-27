.class public final synthetic Ln/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln/p1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget p0, p0, Ln/p1;->l:I

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "it"

    const/4 v7, 0x1

    sget-object v8, Lt8/z;->a:Lt8/z;

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lm2/x;

    sget p0, Lp0/b;->a:F

    return-object v8

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Lp/a2;

    invoke-direct {p1, p0}, Lp/a2;-><init>(I)V

    return-object p1

    :pswitch_1
    check-cast p1, Lm2/x;

    sget-object p0, Lm2/g;->d:Lm2/g;

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->c:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    aget-object v1, v1, v7

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v8

    :pswitch_2
    check-cast p1, Lr0/j1;

    sget p0, Lp/l;->a:I

    sget-object p0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    sget-object p0, Lf2/l1;->h:Lr0/s2;

    invoke-static {p1, p0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lb3/c;

    sget-object p0, Lp/t1;->a:Lr0/a0;

    invoke-static {p1, p0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp/s1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lp/k;

    iget-wide v8, p0, Lp/s1;->a:J

    iget-object v10, p0, Lp/s1;->b:Lu/s0;

    invoke-direct/range {v5 .. v10}, Lp/k;-><init>(Landroid/content/Context;Lb3/c;JLu/s0;)V

    move-object v4, v5

    :goto_0
    return-object v4

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v8

    :pswitch_4
    check-cast p1, Lc2/e1;

    return-object v8

    :pswitch_5
    check-cast p1, Lm2/x;

    sget-object p0, Lm2/v;->a:[Lp9/d;

    sget-object p0, Lm2/t;->a:Lm2/w;

    const-string v0, "QR-\u043a\u043e\u0434 \u043e\u043f\u043b\u0430\u0442\u0438"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    invoke-static {p1, v3}, Lm2/v;->c(Lm2/x;I)V

    return-object v8

    :pswitch_6
    check-cast p1, Le2/j0;

    invoke-virtual {p1}, Le2/j0;->b()V

    return-object v8

    :pswitch_7
    check-cast p1, Lo1/d;

    const-string p0, "$this$Canvas"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo1/d;->d()J

    move-result-wide v3

    shr-long v2, v3, v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-interface {p1}, Lo1/d;->d()J

    move-result-wide v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p0, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lm1/g;->e(FF)V

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v2, p0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lm1/g;->d(FF)V

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr p0, v2

    invoke-virtual {v1, p0, v0}, Lm1/g;->d(FF)V

    iget-object p0, v1, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    sget-wide v2, Lm1/p;->c:J

    const/4 v4, 0x0

    const/16 v5, 0x3c

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    return-object v8

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {p0}, Lsc/i0;->y(Z)V

    return-object v8

    :pswitch_9
    check-cast p1, Led/g;

    invoke-static {p1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Led/g;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return-object p1

    :pswitch_b
    check-cast p1, Lp2/j0;

    invoke-static {p1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    :pswitch_c
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v7}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lw/e;

    const-string p0, "$this$LazyColumn"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Led/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lod/p;

    invoke-direct {v1, p0, v5}, Lod/p;-><init>(Ljava/util/List;I)V

    new-instance v2, Lod/q;

    invoke-direct {v2, p0}, Lod/q;-><init>(Ljava/util/List;)V

    new-instance p0, Lz0/d;

    const v3, 0x2fd4df92

    invoke-direct {p0, v3, v7, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {p1, v0, v4, v1, p0}, Lw/e;->b(ILi9/c;Li9/c;Lz0/d;)V

    return-object v8

    :pswitch_e
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lm2/x;

    sget-object p0, Lm2/v;->a:[Lp9/d;

    sget-object p0, Lm2/t;->l:Lm2/w;

    sget-object v0, Lm2/v;->a:[Lp9/d;

    aget-object v0, v0, v3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v8

    :pswitch_11
    check-cast p1, Lm2/x;

    const/4 p0, 0x3

    invoke-static {p1, p0}, Lm2/v;->c(Lm2/x;I)V

    return-object v8

    :pswitch_12
    check-cast p1, Ln/g0;

    const/16 p0, 0x1770

    iput p0, p1, Ln/g0;->a:I

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    move-result-object v1

    sget-object v2, Lq0/r;->b:Ln/r;

    iput-object v2, v1, Ln/f0;->b:Ln/v;

    const/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x708

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    const/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xce4

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    const/16 v1, 0x1194

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x12c0

    invoke-virtual {p1, v0, v1}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    invoke-virtual {p1, v0, p0}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    return-object v8

    :pswitch_13
    check-cast p1, Lm2/x;

    return-object v8

    :pswitch_14
    check-cast p1, Lm2/x;

    invoke-static {p1, v7}, Lm2/v;->c(Lm2/x;I)V

    return-object v8

    :pswitch_15
    check-cast p1, Lm2/x;

    invoke-static {p1, v5}, Lm2/v;->c(Lm2/x;I)V

    return-object v8

    :pswitch_16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lnd/h0;->a:F

    return-object v8

    :pswitch_17
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lnd/h0;->a:F

    return-object v8

    :pswitch_18
    check-cast p1, Ll1/b;

    return-object v8

    :pswitch_19
    check-cast p1, Ln/l;

    iget p0, p1, Ln/l;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Ln/o;

    new-instance p0, Ll1/c;

    iget v0, p1, Ln/o;->a:F

    iget v1, p1, Ln/o;->b:F

    iget v2, p1, Ln/o;->c:F

    iget p1, p1, Ln/o;->d:F

    invoke-direct {p0, v0, v1, v2, p1}, Ll1/c;-><init>(FFFF)V

    return-object p0

    :pswitch_1b
    check-cast p1, Ll1/c;

    new-instance p0, Ln/o;

    iget v0, p1, Ll1/c;->a:F

    iget v1, p1, Ll1/c;->b:F

    iget v2, p1, Ll1/c;->c:F

    iget p1, p1, Ll1/c;->d:F

    invoke-direct {p0, v0, v1, v2, p1}, Ln/o;-><init>(FFFF)V

    return-object p0

    :pswitch_1c
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gez p0, :cond_1

    move p0, v5

    :cond_1
    iget p1, p1, Ln/m;->b:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, p1

    :goto_1
    int-to-long p0, p0

    shl-long/2addr p0, v2

    int-to-long v2, v5

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    new-instance v0, Lb3/l;

    invoke-direct {v0, p0, p1}, Lb3/l;-><init>(J)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
