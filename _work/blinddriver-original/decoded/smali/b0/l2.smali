.class public final synthetic Lb0/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/l2;->l:I

    iput-object p2, p0, Lb0/l2;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/l2;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Li9/a;Li9/c;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lb0/l2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/l2;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/l2;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 55

    move-object/from16 v0, p0

    iget v1, v0, Lb0/l2;->l:I

    const/16 v2, 0xa

    const/16 v3, 0x12

    const-string v4, "$this$Card"

    const/4 v6, 0x4

    const/16 v7, 0xe

    const/4 v8, 0x2

    sget-object v9, Lf1/o;->a:Lf1/o;

    const/4 v10, 0x6

    const/16 v11, 0x10

    sget-object v12, Lr0/m;->a:Lr0/e;

    const/4 v13, 0x1

    sget-object v14, Lt8/z;->a:Lt8/z;

    iget-object v15, v0, Lb0/l2;->n:Ljava/lang/Object;

    iget-object v0, v0, Lb0/l2;->m:Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroid/text/Spannable;

    check-cast v15, Lld/b;

    move-object/from16 v1, p1

    check-cast v1, Lp2/e0;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ls2/b;

    iget-object v6, v1, Lp2/e0;->f:Lt2/p;

    iget-object v7, v1, Lp2/e0;->c:Lt2/k;

    if-nez v7, :cond_0

    sget-object v7, Lt2/k;->n:Lt2/k;

    :cond_0
    iget-object v8, v1, Lp2/e0;->d:Lt2/i;

    if-eqz v8, :cond_1

    iget v5, v8, Lt2/i;->a:I

    :cond_1
    iget-object v1, v1, Lp2/e0;->e:Lt2/j;

    if-eqz v1, :cond_2

    iget v1, v1, Lt2/j;->a:I

    goto :goto_0

    :cond_2
    const v1, 0xffff

    :goto_0
    iget-object v8, v15, Lld/b;->m:Ljava/lang/Object;

    check-cast v8, Lx2/c;

    iget-object v9, v8, Lx2/c;->p:Lt2/d;

    check-cast v9, Lt2/e;

    invoke-virtual {v9, v6, v7, v5, v1}, Lt2/e;->b(Lt2/p;Lt2/k;II)Lt2/r;

    move-result-object v1

    instance-of v5, v1, Lt2/r;

    const-string v6, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez v5, :cond_3

    new-instance v5, Lg5/m;

    iget-object v7, v8, Lx2/c;->u:Lg5/m;

    invoke-direct {v5, v1, v7}, Lg5/m;-><init>(Lt2/r;Lg5/m;)V

    iput-object v5, v8, Lx2/c;->u:Lg5/m;

    iget-object v1, v5, Lg5/m;->o:Ljava/lang/Object;

    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lt2/r;->l:Ljava/lang/Object;

    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Typeface;

    :goto_1
    invoke-direct {v4, v13, v1}, Ls2/b;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x21

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v14

    :pswitch_0
    check-cast v0, Li9/c;

    check-cast v15, Lq/c;

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x11

    if-eq v3, v11, :cond_4

    move v3, v13

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    and-int/2addr v2, v13

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_5

    new-instance v2, Lq/d;

    invoke-direct {v2}, Lq/d;-><init>()V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lq/d;

    iget-object v3, v2, Lq/d;->a:Ld1/v;

    invoke-virtual {v3}, Ld1/v;->clear()V

    invoke-interface {v0, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v15, v1, v5}, Lq/d;->a(Lq/c;Lr0/q;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_3
    return-object v14

    :pswitch_1
    check-cast v0, Lld/j;

    check-cast v15, Lua/nav/stats/CongestionCell;

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v2, p2

    check-cast v2, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v3, 0x11

    if-eq v1, v11, :cond_7

    move v5, v13

    :cond_7
    and-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1, v5}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    int-to-float v1, v7

    invoke-static {v9, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    int-to-float v3, v6

    invoke-static {v3}, Lu/h;->g(F)Lu/f;

    move-result-object v3

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v4, v2, v10}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v4, v2, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v1, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v7, v2, Lr0/q;->S:Z

    if-eqz v7, :cond_8

    invoke-virtual {v2, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_4
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v2, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v2, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v0, v0, Lld/j;->m:Ljava/lang/String;

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v2, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->s:J

    const/16 v37, 0x0

    const v38, 0xfffa

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v16, v0

    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-wide/from16 v18, v5

    invoke-static/range {v16 .. v38}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v15, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    iget-object v3, v15, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    iget-wide v5, v15, Lua/nav/stats/CongestionCell;->a:D

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_5

    :cond_9
    move-wide v7, v5

    :goto_5
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v7, "%.2f"

    invoke-static {v0, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u00d7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v0, 0x15

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v20

    sget-object v22, Lt2/k;->q:Lt2/k;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_a
    const-wide v7, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_b

    const-wide v5, 0xffe65100L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    :goto_6
    move-wide/from16 v18, v5

    goto :goto_7

    :cond_b
    const-wide v7, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_c

    const-wide v5, 0xfff9a825L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    goto :goto_6

    :cond_c
    const-wide v5, 0xff2e7d32L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    goto :goto_6

    :goto_7
    const/16 v37, 0x0

    const v38, 0x1ffd2

    const/16 v17, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v36, 0x30c00

    invoke-static/range {v16 .. v38}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v35

    if-eqz v3, :cond_d

    const-string v2, "\u0432\u0440\u0443\u0447\u043d\u0443"

    :goto_8
    move-object/from16 v16, v2

    goto :goto_9

    :cond_d
    iget v2, v15, Lua/nav/stats/CongestionCell;->b:I

    if-nez v2, :cond_e

    const-string v2, "\u0449\u0435 \u043d\u0435\u043c\u0430\u0454 \u0437\u0430\u043c\u0456\u0440\u0456\u0432"

    goto :goto_8

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u0437\u0430\u043c\u0456\u0440\u0456\u0432: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :goto_9
    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->o:Lp2/m0;

    invoke-virtual {v0, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v2, v2, Lo0/u0;->s:J

    const/16 v37, 0x0

    const v38, 0xfffa

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v35, v0

    move-object/from16 v34, v1

    move-wide/from16 v18, v2

    invoke-static/range {v16 .. v38}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_f
    move-object v0, v2

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_a
    return-object v14

    :pswitch_2
    check-cast v0, Lr0/u0;

    check-cast v15, Lr0/b1;

    move-object/from16 v1, p1

    check-cast v1, Lo0/s3;

    move-object/from16 v4, p2

    check-cast v4, Lr0/q;

    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "$this$SingleChoiceSegmentedButtonRow"

    invoke-static {v1, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v10, v9, 0x6

    if-nez v10, :cond_11

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_b

    :cond_10
    move v6, v8

    :goto_b
    or-int/2addr v9, v6

    :cond_11
    and-int/lit8 v6, v9, 0x13

    if-eq v6, v3, :cond_12

    move v3, v13

    goto :goto_c

    :cond_12
    move v3, v5

    :goto_c
    and-int/lit8 v6, v9, 0x1

    invoke-virtual {v4, v6, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lld/l;->l:Lld/l;

    new-instance v6, Lt8/j;

    const-string v8, "\u0414\u0435\u043d\u044c"

    invoke-direct {v6, v3, v8}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lld/l;->m:Lld/l;

    new-instance v8, Lt8/j;

    const-string v10, "\u0422\u0438\u0436\u0434\u0435\u043d\u044c"

    invoke-direct {v8, v3, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lld/l;->n:Lld/l;

    new-instance v10, Lt8/j;

    const-string v11, "\u041c\u0456\u0441\u044f\u0446\u044c"

    invoke-direct {v10, v3, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v8, v10}, [Lt8/j;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v5

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    if-ltz v8, :cond_19

    check-cast v10, Lt8/j;

    iget-object v5, v10, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Lld/l;

    iget-object v10, v10, Lt8/j;->m:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v17

    move/from16 v30, v7

    move-object/from16 v7, v17

    check-cast v7, Lld/l;

    if-ne v7, v5, :cond_13

    move/from16 v18, v13

    goto :goto_e

    :cond_13
    const/16 v18, 0x0

    :goto_e
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v4, v7}, Lr0/q;->e(I)Z

    move-result v7

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_14

    if-ne v13, v12, :cond_15

    :cond_14
    new-instance v13, Lb0/c3;

    invoke-direct {v13, v5, v0, v15, v2}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v19, v13

    check-cast v19, Li9/a;

    sget-object v5, Lo0/h3;->a:Lo0/h3;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sget-object v7, Lq0/t;->j:Lq0/y;

    invoke-static {v7, v4}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v7

    const-string v13, "null cannot be cast to non-null type androidx.compose.foundation.shape.CornerBasedShape"

    invoke-static {v7, v13}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v7

    check-cast v20, La0/d;

    const/4 v7, 0x1

    if-ne v5, v7, :cond_16

    goto :goto_10

    :cond_16
    if-nez v8, :cond_17

    sget-object v22, Lo0/p3;->i:La0/b;

    const/16 v24, 0x0

    const/16 v25, 0x9

    const/16 v21, 0x0

    move-object/from16 v23, v22

    invoke-static/range {v20 .. v25}, La0/d;->b(La0/d;La0/a;La0/a;La0/a;La0/a;I)La0/d;

    move-result-object v5

    :goto_f
    move-object/from16 v20, v5

    goto :goto_10

    :cond_17
    add-int/lit8 v5, v5, -0x1

    if-ne v8, v5, :cond_18

    sget-object v21, Lo0/p3;->i:La0/b;

    const/16 v23, 0x0

    const/16 v25, 0x6

    const/16 v22, 0x0

    move-object/from16 v24, v21

    invoke-static/range {v20 .. v25}, La0/d;->b(La0/d;La0/a;La0/a;La0/a;La0/a;I)La0/d;

    move-result-object v5

    goto :goto_f

    :cond_18
    sget-object v5, Lm1/v;->b:Lm1/e0;

    goto :goto_f

    :goto_10
    new-instance v5, Lnd/e;

    const/16 v7, 0xc

    invoke-direct {v5, v10, v7}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v7, -0x3ab51e3a

    invoke-static {v7, v5, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v27

    and-int/lit8 v29, v9, 0xe

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v1

    move-object/from16 v28, v4

    invoke-static/range {v17 .. v29}, Lo0/m3;->a(Lo0/s3;ZLi9/a;Lm1/h0;Lf1/r;ZLo0/c3;Lp/x;Lu/s0;Li9/e;Lz0/d;Lr0/q;I)V

    move v8, v11

    move/from16 v7, v30

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto/16 :goto_d

    :cond_19
    invoke-static {}, Lg5/f;->P()V

    throw v16

    :cond_1a
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lr0/q;->W()V

    :cond_1b
    return-object v14

    :pswitch_3
    move/from16 v30, v7

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    check-cast v15, Lz0/d;

    move-object/from16 v0, p1

    check-cast v0, Lu/s;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v3, 0x11

    if-eq v0, v11, :cond_1c

    const/4 v5, 0x1

    :goto_11
    const/16 v31, 0x1

    goto :goto_12

    :cond_1c
    const/4 v5, 0x0

    goto :goto_11

    :goto_12
    and-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0, v5}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v9, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    move/from16 v3, v30

    int-to-float v3, v3

    invoke-static {v0, v3}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    int-to-float v2, v2

    invoke-static {v2}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    sget-object v3, Lf1/c;->x:Lf1/h;

    invoke-static {v2, v3, v1, v10}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v3, v1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v0, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v6, v1, Lr0/q;->S:Z

    if-eqz v6, :cond_1d

    invoke-virtual {v1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_13

    :cond_1d
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_13
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v1, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v1, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v0, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->h:Lp2/m0;

    sget-object v38, Lt2/k;->q:Lt2/k;

    const/16 v53, 0x0

    const v54, 0xffde

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/high16 v52, 0x30000

    move-object/from16 v50, v0

    move-object/from16 v51, v1

    invoke-static/range {v32 .. v54}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v51

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lu/s;->a:Lu/s;

    invoke-virtual {v15, v2, v0, v1}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    goto :goto_14

    :cond_1e
    move-object v0, v1

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_14
    return-object v14

    :pswitch_4
    check-cast v0, Lua/nav/a;

    check-cast v15, Lr0/r2;

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v6, p2

    check-cast v6, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$Section"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    if-eq v1, v11, :cond_1f

    const/4 v5, 0x1

    :goto_15
    const/16 v31, 0x1

    goto :goto_16

    :cond_1f
    const/4 v5, 0x0

    goto :goto_15

    :goto_16
    and-int/lit8 v1, v2, 0x1

    invoke-virtual {v6, v1, v5}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v6, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_20

    if-ne v2, v12, :cond_21

    :cond_20
    new-instance v2, Lod/b6;

    const/4 v1, 0x7

    invoke-direct {v2, v0, v1}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v6, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_21
    move-object v5, v2

    check-cast v5, Li9/c;

    const/16 v7, 0x36

    const-string v2, "\u0422\u0438\u0445\u0456 \u0442\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v3, "\u0411\u0435\u0437 \u043f\u043b\u0430\u0448\u043a\u0438, \u0433\u043e\u043b\u043e\u0441\u0443 \u0439 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f: \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u043b\u0438\u0448\u0435 \u0437\u043d\u0430\u0447\u043e\u043a \u00ab!\u00bb (\u043a\u043e\u043b\u0456\u0440 \u2014 \u0440\u0456\u0432\u0435\u043d\u044c, \u0434\u043e\u0442\u0438\u043a \u0440\u043e\u0437\u043a\u0440\u0438\u0432\u0430\u0454 \u043f\u043e\u0434\u0440\u043e\u0431\u0438\u0446\u0456)."

    invoke-static/range {v2 .. v7}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    goto :goto_17

    :cond_22
    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_17
    return-object v14

    :pswitch_5
    check-cast v0, Lua/nav/c;

    check-cast v15, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Lu/y0;

    move-object/from16 v2, p2

    check-cast v2, Lr0/q;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "$this$ToolsRow"

    invoke-static {v1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_24

    invoke-virtual {v2, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_18

    :cond_23
    move v6, v8

    :goto_18
    or-int/2addr v4, v6

    :cond_24
    and-int/lit8 v5, v4, 0x13

    if-eq v5, v3, :cond_25

    const/4 v3, 0x1

    :goto_19
    const/16 v31, 0x1

    goto :goto_1a

    :cond_25
    const/4 v3, 0x0

    goto :goto_19

    :goto_1a
    and-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v4, v3, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v4, :cond_26

    iget-object v4, v3, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-eqz v4, :cond_26

    iget-boolean v3, v3, Lsc/q0;->m:Z

    if-nez v3, :cond_26

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v3, v3, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v3, :cond_26

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v3, v3, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-eqz v3, :cond_26

    move/from16 v18, v31

    goto :goto_1b

    :cond_26
    const/16 v18, 0x0

    :goto_1b
    const v3, 0x400ccccd    # 2.2f

    invoke-interface {v1, v9, v3}, Lu/y0;->a(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v3, 0x30

    int-to-float v3, v3

    invoke-static {v1, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v17

    invoke-virtual {v2, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_27

    if-ne v3, v12, :cond_28

    :cond_27
    new-instance v3, Lod/d1;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v2, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_28
    move-object/from16 v16, v3

    check-cast v16, Li9/a;

    new-instance v0, Lod/i;

    invoke-direct {v0, v15, v8}, Lod/i;-><init>(Lr0/u0;I)V

    const v1, -0x37e8ba19

    invoke-static {v1, v0, v2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v24

    const/high16 v26, 0x30000000

    const/16 v27, 0x1f8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v25, v2

    invoke-static/range {v16 .. v27}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_1c

    :cond_29
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lr0/q;->W()V

    :goto_1c
    return-object v14

    :pswitch_6
    check-cast v15, Li9/a;

    check-cast v0, Li9/c;

    move-object/from16 v1, p1

    check-cast v1, Lf1/r;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x2d4acc1b

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_2a

    invoke-static {v15}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2a
    check-cast v2, Lr0/r2;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    if-ne v3, v12, :cond_2b

    new-instance v3, Ln/c;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/b;

    iget-wide v5, v5, Ll1/b;->a:J

    new-instance v7, Ll1/b;

    invoke-direct {v7, v5, v6}, Ll1/b;-><init>(J)V

    sget-object v5, Lm0/x0;->b:Ln/o1;

    sget-wide v8, Lm0/x0;->c:J

    new-instance v6, Ll1/b;

    invoke-direct {v6, v8, v9}, Ll1/b;-><init>(J)V

    invoke-direct {v3, v7, v5, v6, v4}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2b
    check-cast v3, Ln/c;

    invoke-virtual {v1, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2c

    if-ne v6, v12, :cond_2d

    :cond_2c
    new-instance v6, Landroidx/lifecycle/m0;

    move-object/from16 v5, v16

    invoke-direct {v6, v2, v3, v5, v4}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v1, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2d
    check-cast v6, Li9/e;

    invoke-static {v6, v14, v1}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v2, v3, Ln/c;->c:Ln/k;

    invoke-virtual {v1, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2f

    if-ne v4, v12, :cond_2e

    goto :goto_1d

    :cond_2e
    const/4 v3, 0x0

    goto :goto_1e

    :cond_2f
    :goto_1d
    new-instance v4, Lm0/w0;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lm0/w0;-><init>(Lr0/r2;I)V

    invoke-virtual {v1, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_1e
    check-cast v4, Li9/a;

    invoke-interface {v0, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/r;

    invoke-virtual {v1, v3}, Lr0/q;->q(Z)V

    return-object v0

    :pswitch_7
    check-cast v0, Li9/c;

    check-cast v15, Ls/i;

    move-object/from16 v1, p1

    check-cast v1, Lf1/r;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x620472b

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_30

    invoke-static {v1}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_30
    check-cast v2, Lu9/t;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_31

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_31
    check-cast v3, Lr0/u0;

    invoke-static {v0, v1}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-virtual {v1, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_32

    if-ne v5, v12, :cond_33

    :cond_32
    new-instance v5, Lb0/r0;

    invoke-direct {v5, v8, v3, v15}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_33
    check-cast v5, Li9/c;

    invoke-static {v15, v5, v1}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v1, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_34

    if-ne v5, v12, :cond_35

    :cond_34
    new-instance v5, Lb0/p2;

    invoke-direct {v5, v2, v3, v15, v0}, Lb0/p2;-><init>(Lu9/t;Lr0/u0;Ls/i;Lr0/u0;)V

    invoke-virtual {v1, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_35
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v9, v15, v5}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lr0/q;->q(Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
