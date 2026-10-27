.class public final Lo0/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo0/b1;->l:I

    iput-object p2, p0, Lo0/b1;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    iget v1, v0, Lo0/b1;->l:I

    const/16 v2, 0xa

    sget-object v3, Lf1/o;->a:Lf1/o;

    sget-object v4, Lt8/z;->a:Lt8/z;

    iget-object v0, v0, Lo0/b1;->m:Ljava/lang/Object;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    and-int/2addr v8, v6

    invoke-virtual {v1, v8, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_8

    int-to-float v2, v2

    invoke-static {v3, v2}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    check-cast v0, Lua/nav/routing/Route;

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v5, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v5, v1, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v8, v1, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v10, v1, Lr0/q;->S:Z

    if-eqz v10, :cond_1

    invoke-virtual {v1, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_1
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v8, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v1, v3, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v1, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v2, v0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iget-wide v8, v0, Lua/nav/routing/Route;->c:D

    const-string v3, "Waze"

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, -0x3272706c

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lcd/d;->g0:Lcd/c;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->n:Lp2/m0;

    sget-object v10, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v1, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo0/u0;

    iget-wide v10, v10, Lo0/u0;->a:J

    const/16 v29, 0x0

    const v30, 0xfffa

    move-wide v12, v8

    const/4 v9, 0x0

    move-wide v14, v12

    const-wide/16 v12, 0x0

    move-wide v15, v14

    const/4 v14, 0x0

    move-wide/from16 v16, v15

    const/4 v15, 0x0

    move-wide/from16 v18, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v19, v18

    const/16 v18, 0x0

    move-wide/from16 v21, v19

    const-wide/16 v19, 0x0

    move-wide/from16 v22, v21

    const/16 v21, 0x0

    move-wide/from16 v23, v22

    const/16 v22, 0x0

    move-wide/from16 v24, v23

    const/16 v23, 0x0

    move-wide/from16 v25, v24

    const/16 v24, 0x0

    move-wide/from16 v26, v25

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object v8, v3

    move-wide/from16 v31, v26

    move-object/from16 v27, v1

    move-object/from16 v26, v5

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    :goto_2
    invoke-virtual {v1, v7}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_2
    move-wide/from16 v31, v8

    const v3, -0x3270d37e

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    goto :goto_2

    :goto_3
    sget-object v3, Lsc/i0;->a:Lsc/i0;

    sget-object v3, Lsc/i0;->n:Lad/o;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Lad/o;->b(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x3ff051eb851eb852L    # 1.02

    cmpl-double v3, v8, v10

    if-lez v3, :cond_3

    const v3, -0x326ead1f

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    invoke-static {v0}, Lod/m;->J(Lua/nav/routing/Route;)Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->g:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffe

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

    const/16 v28, 0x0

    move-object/from16 v27, v1

    move-object/from16 v26, v5

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-static/range {v31 .. v32}, Lod/m;->I(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcd/d;->h0:Lcd/c;

    invoke-virtual {v5, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->l:Lp2/m0;

    move-object/from16 v26, v2

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v1, v7}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_3
    const v2, -0x1a668a95

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-static/range {v31 .. v32}, Lod/m;->I(D)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->g:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffe

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

    const/16 v28, 0x0

    move-object/from16 v27, v1

    move-object/from16 v26, v2

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v1, v7}, Lr0/q;->q(Z)V

    :goto_4
    iget-wide v2, v0, Lua/nav/routing/Route;->b:D

    sget-object v5, Lcd/j;->a:Lcd/j;

    invoke-virtual {v5, v2, v3}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffe

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

    const/16 v28, 0x0

    move-object/from16 v27, v1

    move-object/from16 v26, v3

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    iget-object v3, v0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    if-nez v3, :cond_4

    const v3, -0x326759fd

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    :goto_5
    invoke-virtual {v1, v7}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_4
    const v5, -0x326759fc

    invoke-virtual {v1, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_5

    const v3, 0x14d9f0c7

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    invoke-static {v8, v9}, Lod/m;->I(D)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcd/d;->i0:Lcd/c;

    invoke-virtual {v5, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0xffc62828L

    invoke-static {v9, v10}, Lm1/v;->d(J)J

    move-result-wide v10

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffa

    const/4 v9, 0x0

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

    const/16 v28, 0x180

    move-object/from16 v27, v1

    move-object/from16 v26, v3

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    :goto_6
    invoke-virtual {v1, v7}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_5
    const v3, -0x799a4dbc

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    goto :goto_6

    :goto_7
    iget-object v3, v0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const v3, -0x32649b47    # -3.2588368E8f

    invoke-virtual {v1, v3}, Lr0/q;->b0(I)V

    iget-object v8, v0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    const/16 v29, 0xc00

    const v30, 0xdffe

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

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    :goto_8
    invoke-virtual {v1, v7}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_6
    const v0, -0x3263893e

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    goto :goto_8

    :goto_9
    invoke-virtual {v1, v6}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_7
    const-string v0, "etaProfile"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_8
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_a
    return-object v4

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v5, :cond_9

    move v3, v6

    goto :goto_b

    :cond_9
    move v3, v7

    :goto_b
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->j:Lp2/m0;

    sget-object v2, Lsc/c;->a:Lz0/d;

    invoke-static {v0, v2, v1, v7}, Lo0/d5;->a(Lp2/m0;Lz0/d;Lr0/q;I)V

    goto :goto_c

    :cond_a
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_c
    return-object v4

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v0, Lg5/i;

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v5, :cond_b

    move v5, v6

    goto :goto_d

    :cond_b
    move v5, v7

    :goto_d
    and-int/2addr v8, v6

    invoke-virtual {v1, v8, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Lf2/o0;->a:Lr0/a0;

    invoke-virtual {v1, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    sget-object v5, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v1, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b0048

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v8, Lf1/r;

    sget v9, Lo0/j;->a:F

    sget v10, Lo0/j;->b:F

    invoke-static {v8, v9, v10, v2}, Lu/b1;->o(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    invoke-virtual {v1, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_c

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v9, v8, :cond_d

    :cond_c
    new-instance v9, Lo0/a1;

    invoke-direct {v9, v5, v7}, Lo0/a1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Li9/c;

    invoke-static {v3, v7, v9}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v3

    invoke-interface {v2, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->l:Lf1/j;

    invoke-static {v3, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v8, v1, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v10, v1, Lr0/q;->S:Z

    if-eqz v10, :cond_e

    invoke-virtual {v1, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_e
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v8, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->g:Le2/e;

    iget-boolean v8, v1, Lr0/q;->S:Z

    if-nez v8, :cond_f

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    :cond_f
    invoke-static {v5, v1, v5, v3}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_10
    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v0, v0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lr0/q;->q(Z)V

    goto :goto_f

    :cond_11
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_f
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
