.class public final synthetic Lp2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    const/16 p1, 0x18

    iput p1, p0, Lp2/x;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 2
    iput p1, p0, Lp2/x;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v0, v0, Lp2/x;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lt8/z;->a:Lt8/z;

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Ldd/k0;->f(IJ)V

    return-object v4

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Ldd/k0;->f(IJ)V

    return-object v4

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "tag"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v1, :cond_0

    move v3, v2

    :cond_0
    and-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lpd/a;->a(Lr0/q;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_0
    return-object v4

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    and-int/2addr v2, v5

    invoke-virtual {v0, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0, v3}, Lod/g3;->e(Lua/nav/c;Lr0/q;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_2
    return-object v4

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lpd/a;->a(Lr0/q;I)V

    return-object v4

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/r;

    iget v0, v0, La3/r;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, La3/s;

    iget v2, v1, La3/s;->a:I

    new-instance v3, La3/r;

    invoke-direct {v3, v2}, La3/r;-><init>(I)V

    sget-object v2, Lp2/d0;->e:Lg5/c;

    invoke-static {v3, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, v1, La3/s;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/e;

    iget v0, v0, La3/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lp2/j;

    iget v0, v0, Lp2/j;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/u;

    iget-boolean v2, v1, Lp2/u;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lp2/c0;->a:Lg5/c;

    iget v1, v1, Lp2/u;->b:I

    new-instance v3, Lp2/j;

    invoke-direct {v3, v1}, Lp2/j;-><init>(I)V

    sget-object v1, Lp2/d0;->b:Lg5/c;

    invoke-static {v3, v1, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/k0;

    iget-object v2, v1, Lp2/k0;->a:Lp2/e0;

    sget-object v3, Lp2/c0;->h:Lg5/c;

    invoke-static {v2, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v1, Lp2/k0;->b:Lp2/e0;

    invoke-static {v4, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lp2/k0;->c:Lp2/e0;

    invoke-static {v5, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v5

    iget-object v1, v1, Lp2/k0;->d:Lp2/e0;

    invoke-static {v1, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/e0;

    iget-object v2, v1, Lp2/e0;->a:La3/o;

    invoke-interface {v2}, La3/o;->a()J

    move-result-wide v2

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    sget-object v2, Lp2/c0;->p:Lp2/b0;

    invoke-static {v4, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v3, v1, Lp2/e0;->b:J

    new-instance v6, Lb3/o;

    invoke-direct {v6, v3, v4}, Lb3/o;-><init>(J)V

    sget-object v3, Lp2/c0;->v:Lp2/b0;

    invoke-static {v6, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v6

    iget-object v4, v1, Lp2/e0;->c:Lt2/k;

    sget-object v7, Lt2/k;->m:Lt2/k;

    sget-object v7, Lp2/c0;->m:Lg5/c;

    invoke-static {v4, v7, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v7

    iget-object v4, v1, Lp2/e0;->d:Lt2/i;

    sget-object v8, Lp2/c0;->t:Lg5/c;

    invoke-static {v4, v8, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v8

    iget-object v4, v1, Lp2/e0;->e:Lt2/j;

    sget-object v9, Lp2/c0;->u:Lg5/c;

    invoke-static {v4, v9, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v9

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v1, Lp2/e0;->g:Ljava/lang/String;

    iget-wide v12, v1, Lp2/e0;->h:J

    new-instance v4, Lb3/o;

    invoke-direct {v4, v12, v13}, Lb3/o;-><init>(J)V

    invoke-static {v4, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v12

    iget-object v3, v1, Lp2/e0;->i:La3/a;

    sget-object v4, Lp2/c0;->n:Lg5/c;

    invoke-static {v3, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v13

    iget-object v3, v1, Lp2/e0;->j:La3/p;

    sget-object v4, Lp2/c0;->k:Lg5/c;

    invoke-static {v3, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v14

    iget-object v3, v1, Lp2/e0;->k:Lw2/b;

    sget-object v4, Lw2/b;->n:Lw2/b;

    sget-object v4, Lp2/c0;->y:Lg5/c;

    invoke-static {v3, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v15

    iget-wide v3, v1, Lp2/e0;->l:J

    move-object/from16 p0, v5

    new-instance v5, Lm1/p;

    invoke-direct {v5, v3, v4}, Lm1/p;-><init>(J)V

    invoke-static {v5, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v16

    iget-object v2, v1, Lp2/e0;->m:La3/l;

    sget-object v3, Lp2/c0;->j:Lg5/c;

    invoke-static {v2, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v17

    iget-object v1, v1, Lp2/e0;->n:Lm1/g0;

    sget-object v2, Lm1/g0;->d:Lm1/g0;

    sget-object v2, Lp2/c0;->o:Lg5/c;

    invoke-static {v1, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, p0

    filled-new-array/range {v5 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lp2/n0;

    iget-object v0, v0, Lp2/n0;->a:Ljava/lang/String;

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/s;

    iget v2, v1, Lp2/s;->a:I

    new-instance v3, La3/k;

    invoke-direct {v3, v2}, La3/k;-><init>(I)V

    sget-object v2, Lp2/c0;->q:Lp2/b0;

    invoke-static {v3, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v4

    iget v2, v1, Lp2/s;->b:I

    new-instance v3, La3/m;

    invoke-direct {v3, v2}, La3/m;-><init>(I)V

    sget-object v2, Lp2/c0;->r:Lp2/b0;

    invoke-static {v3, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v2, v1, Lp2/s;->c:J

    new-instance v6, Lb3/o;

    invoke-direct {v6, v2, v3}, Lb3/o;-><init>(J)V

    sget-object v2, Lp2/c0;->v:Lp2/b0;

    invoke-static {v6, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v6

    iget-object v2, v1, Lp2/s;->d:La3/q;

    sget-object v3, La3/q;->c:La3/q;

    sget-object v3, Lp2/c0;->l:Lg5/c;

    invoke-static {v2, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v7

    iget-object v2, v1, Lp2/s;->e:Lp2/u;

    sget-object v3, Lp2/d0;->a:Lg5/c;

    invoke-static {v2, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v8

    iget-object v2, v1, Lp2/s;->f:La3/i;

    sget-object v3, La3/i;->d:La3/i;

    sget-object v3, Lp2/c0;->A:Lg5/c;

    invoke-static {v2, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v9

    iget v2, v1, Lp2/s;->g:I

    new-instance v3, La3/e;

    invoke-direct {v3, v2}, La3/e;-><init>(I)V

    sget-object v2, Lp2/d0;->c:Lg5/c;

    invoke-static {v3, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v10

    iget v2, v1, Lp2/s;->h:I

    new-instance v3, La3/d;

    invoke-direct {v3, v2}, La3/d;-><init>(I)V

    sget-object v2, Lp2/c0;->s:Lp2/b0;

    invoke-static {v3, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v11

    iget-object v1, v1, Lp2/s;->i:La3/s;

    sget-object v2, Lp2/d0;->d:Lg5/c;

    invoke-static {v1, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v12

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lp2/o0;

    iget-object v0, v0, Lp2/o0;->a:Ljava/lang/String;

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/g;

    iget v0, v0, La3/g;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/h;

    iget v0, v0, La3/h;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/f;

    iget v0, v0, La3/f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, La3/i;

    iget v2, v1, La3/i;->a:F

    new-instance v3, La3/f;

    invoke-direct {v3, v2}, La3/f;-><init>(F)V

    sget-object v2, Lp2/c0;->B:Lp2/b0;

    invoke-static {v3, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, La3/i;->b:I

    new-instance v4, La3/h;

    invoke-direct {v4, v3}, La3/h;-><init>(I)V

    sget-object v3, Lp2/c0;->C:Lp2/b0;

    invoke-static {v4, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v3

    iget v1, v1, La3/i;->c:I

    new-instance v4, La3/g;

    invoke-direct {v4, v1}, La3/g;-><init>(I)V

    sget-object v1, Lp2/c0;->D:Lp2/b0;

    invoke-static {v4, v1, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lw2/a;

    iget-object v0, v0, Lw2/a;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lw2/b;

    iget-object v1, v1, Lw2/b;->l:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw2/a;

    sget-object v6, Lp2/c0;->z:Lg5/c;

    invoke-static {v5, v6, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v2

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/e;

    iget-object v2, v1, Lp2/e;->a:Ljava/lang/Object;

    instance-of v3, v2, Lp2/s;

    if-eqz v3, :cond_5

    sget-object v3, Lp2/i;->l:Lp2/i;

    goto :goto_4

    :cond_5
    instance-of v3, v2, Lp2/e0;

    if-eqz v3, :cond_6

    sget-object v3, Lp2/i;->m:Lp2/i;

    goto :goto_4

    :cond_6
    instance-of v3, v2, Lp2/o0;

    if-eqz v3, :cond_7

    sget-object v3, Lp2/i;->n:Lp2/i;

    goto :goto_4

    :cond_7
    instance-of v3, v2, Lp2/n0;

    if-eqz v3, :cond_8

    sget-object v3, Lp2/i;->o:Lp2/i;

    goto :goto_4

    :cond_8
    instance-of v3, v2, Lp2/l;

    if-eqz v3, :cond_9

    sget-object v3, Lp2/i;->p:Lp2/i;

    goto :goto_4

    :cond_9
    instance-of v3, v2, Lp2/k;

    if-eqz v3, :cond_a

    sget-object v3, Lp2/i;->q:Lp2/i;

    goto :goto_4

    :cond_a
    instance-of v3, v2, Lp2/g0;

    if-eqz v3, :cond_b

    sget-object v3, Lp2/i;->r:Lp2/i;

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_16
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.text.StringAnnotation"

    invoke-static {v2, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/g0;

    iget-object v0, v2, Lp2/g0;->a:Ljava/lang/String;

    goto :goto_5

    :pswitch_17
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Clickable"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/k;

    sget-object v4, Lp2/c0;->f:Lg5/c;

    invoke-static {v2, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :pswitch_18
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/l;

    sget-object v4, Lp2/c0;->e:Lg5/c;

    invoke-static {v2, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :pswitch_19
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.text.UrlAnnotation"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/n0;

    sget-object v4, Lp2/c0;->d:Lg5/c;

    invoke-static {v2, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :pswitch_1a
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.text.VerbatimTtsAnnotation"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/o0;

    sget-object v4, Lp2/c0;->c:Lg5/c;

    invoke-static {v2, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :pswitch_1b
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.text.SpanStyle"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/e0;

    sget-object v4, Lp2/c0;->h:Lg5/c;

    invoke-static {v2, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :pswitch_1c
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.text.ParagraphStyle"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/s;

    sget-object v4, Lp2/c0;->g:Lg5/c;

    invoke-static {v2, v4, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    iget v2, v1, Lp2/e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v1, Lp2/e;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Lp2/e;->d:Ljava/lang/String;

    filled-new-array {v3, v0, v2, v4, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_1d
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Ll1/b;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-wide v1, v0, Ll1/b;->a:J

    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v1, v2, v3, v4}, Ll1/b;->b(JJ)Z

    move-result v3

    :goto_6
    if-eqz v3, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    iget-wide v1, v0, Ll1/b;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-wide v2, v0, Ll1/b;->a:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_1e
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lb3/p;

    iget-wide v0, v0, Lb3/p;->a:J

    const-wide v4, 0x200000000L

    invoke-static {v0, v1, v4, v5}, Lb3/p;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_e
    const-wide v3, 0x100000000L

    invoke-static {v0, v1, v3, v4}, Lb3/p;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :pswitch_1f
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/k;

    iget-object v2, v1, Lp2/k;->a:Ljava/lang/String;

    iget-object v1, v1, Lp2/k;->b:Lp2/k0;

    sget-object v3, Lp2/c0;->i:Lg5/c;

    invoke-static {v1, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_20
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lb3/o;

    sget-wide v4, Lb3/o;->c:J

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    iget-wide v2, v1, Lb3/o;->a:J

    invoke-static {v2, v3, v4, v5}, Lb3/o;->a(JJ)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_11

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_11
    iget-wide v2, v1, Lb3/o;->a:J

    invoke-static {v2, v3}, Lb3/o;->c(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-wide v3, v1, Lb3/o;->a:J

    invoke-static {v3, v4}, Lb3/o;->b(J)J

    move-result-wide v3

    new-instance v1, Lb3/p;

    invoke-direct {v1, v3, v4}, Lb3/p;-><init>(J)V

    sget-object v3, Lp2/c0;->w:Lp2/b0;

    invoke-static {v1, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_a
    return-object v0

    :pswitch_21
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lt2/j;

    iget v0, v0, Lt2/j;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_22
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lt2/i;

    iget v0, v0, Lt2/i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_23
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/d;

    iget v0, v0, La3/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method
