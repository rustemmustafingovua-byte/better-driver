.class public final synthetic Lod/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lod/v;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v0, v0, Lod/v;->l:I

    sget-object v1, Lu8/s;->l:Lu8/s;

    const-string v2, "$this$OutlinedButton"

    const-string v3, "$this$TextButton"

    const/16 v4, 0x10

    sget-object v5, Lt8/z;->a:Lt8/z;

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lua/nav/routing/GeoPoint;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Double;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "p"

    invoke-static {v0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v4

    iget-object v7, v4, Lad/x;->d:Lad/r;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v12, v0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v14, v7, Lad/r;->a:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7, v8, v9}, Lad/r;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v10, v7, Lad/r;->a:D

    iput-wide v12, v7, Lad/r;->b:D

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    iput-wide v10, v7, Lad/r;->j:D

    sub-double v8, v2, v8

    const-wide v10, 0x3fb47ae147ae147bL    # 0.08

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_1

    move-wide v8, v10

    :cond_1
    iput-wide v8, v7, Lad/r;->k:D

    iget-object v0, v7, Lad/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_2

    iget-wide v8, v7, Lad/r;->f:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, v7, Lad/r;->d:D

    iput-boolean v6, v7, Lad/r;->e:Z

    iget-object v0, v7, Lad/r;->t:Lad/i;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lad/i;->e(D)D

    move-result-wide v8

    iput-wide v8, v0, Lad/i;->a:D

    iget-wide v8, v0, Lad/i;->e:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v8, v0, Lad/i;->e:D

    invoke-static {v8, v9, v6, v7}, Lad/i;->a(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v0, v6, v7, v8, v9}, Lad/i;->d(DD)V

    :cond_2
    :goto_0
    iget-object v0, v4, Lad/x;->a:Ldd/k0;

    double-to-int v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "free_anchor r="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lq/c;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_4

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v2, v3

    :cond_4
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-eq v3, v4, :cond_5

    move v3, v6

    goto :goto_2

    :cond_5
    move v3, v7

    :goto_2
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lf1/o;->a:Lf1/o;

    sget v3, Lq/e;->l:F

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget v3, Lq/e;->k:F

    invoke-static {v2, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    iget-wide v3, v0, Lq/c;->c:J

    sget-object v0, Lm1/v;->b:Lm1/e0;

    invoke-static {v2, v3, v4, v0}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v0

    invoke-static {v0, v1, v7}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_3
    return-object v5

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lc2/t0;

    move-object/from16 v2, p2

    check-cast v2, Lc2/q0;

    move-object/from16 v3, p3

    check-cast v3, Lb3/a;

    sget v4, Lp0/b;->b:F

    invoke-interface {v0, v4}, Lb3/c;->h0(F)I

    move-result v4

    iget-wide v5, v3, Lb3/a;->a:J

    mul-int/lit8 v3, v4, 0x2

    invoke-static {v7, v3, v5, v6}, Lb3/b;->i(IIJ)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v2

    iget v5, v2, Lc2/f1;->m:I

    sub-int/2addr v5, v3

    iget v3, v2, Lc2/f1;->l:I

    new-instance v6, Lp0/a;

    invoke-direct {v6, v4, v7, v2}, Lp0/a;-><init>(IILc2/f1;)V

    invoke-interface {v0, v3, v5, v1, v6}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lc2/t0;

    move-object/from16 v2, p2

    check-cast v2, Lc2/q0;

    move-object/from16 v3, p3

    check-cast v3, Lb3/a;

    sget v4, Lp0/b;->a:F

    invoke-interface {v0, v4}, Lb3/c;->h0(F)I

    move-result v4

    iget-wide v8, v3, Lb3/a;->a:J

    mul-int/lit8 v3, v4, 0x2

    invoke-static {v3, v7, v8, v9}, Lb3/b;->i(IIJ)J

    move-result-wide v7

    invoke-interface {v2, v7, v8}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v2

    iget v5, v2, Lc2/f1;->m:I

    iget v7, v2, Lc2/f1;->l:I

    sub-int/2addr v7, v3

    new-instance v3, Lp0/a;

    invoke-direct {v3, v4, v6, v2}, Lp0/a;-><init>(IILc2/f1;)V

    invoke-interface {v0, v7, v5, v1, v3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x11

    if-eq v0, v4, :cond_7

    move v7, v6

    :cond_7
    and-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_4

    :cond_8
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_4
    return-object v5

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v3, 0x11

    if-eq v0, v4, :cond_9

    move v7, v6

    :cond_9
    and-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_5

    :cond_a
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_5
    return-object v5

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v3, 0x11

    if-eq v0, v4, :cond_b

    move v7, v6

    :cond_b
    and-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_6

    :cond_c
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_6
    return-object v5

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v3, 0x11

    if-eq v0, v4, :cond_d

    move v7, v6

    :cond_d
    and-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_7

    :cond_e
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_7
    return-object v5

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x11

    if-eq v0, v4, :cond_f

    move v7, v6

    :cond_f
    and-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u041f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_8

    :cond_10
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_8
    return-object v5

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x11

    if-eq v0, v4, :cond_11

    move v7, v6

    :cond_11
    and-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_9

    :cond_12
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_9
    return-object v5

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x11

    if-eq v0, v4, :cond_13

    move v7, v6

    :cond_13
    and-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_a

    :cond_14
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_a
    return-object v5

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x11

    if-eq v0, v4, :cond_15

    move v7, v6

    :cond_15
    and-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_b

    :cond_16
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_b
    return-object v5

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lu/y0;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x11

    if-eq v0, v4, :cond_17

    move v7, v6

    :cond_17
    and-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v7}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v29, 0x0

    const v30, 0x1fffe

    const-string v8, "\u041a\u043e\u043f\u0456\u044e\u0432\u0430\u0442\u0438"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x6

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_c

    :cond_18
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_c
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
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
