.class public final Lp0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lp2/m0;

.field public final synthetic m:Lp2/m0;

.field public final synthetic n:Lr0/r2;

.field public final synthetic o:Lr0/r2;

.field public final synthetic p:Z

.field public final synthetic q:Lr0/r2;

.field public final synthetic r:Li9/f;

.field public final synthetic s:Lp0/v;


# direct methods
.method public constructor <init>(Lp2/m0;Lp2/m0;Ln/d1;Ln/d1;ZLn/d1;Li9/f;Lp0/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/s;->l:Lp2/m0;

    iput-object p2, p0, Lp0/s;->m:Lp2/m0;

    iput-object p3, p0, Lp0/s;->n:Lr0/r2;

    iput-object p4, p0, Lp0/s;->o:Lr0/r2;

    iput-boolean p5, p0, Lp0/s;->p:Z

    iput-object p6, p0, Lp0/s;->q:Lr0/r2;

    iput-object p7, p0, Lp0/s;->r:Li9/f;

    iput-object p8, p0, Lp0/s;->s:Lp0/v;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lp0/s;->n:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v6, Lp2/m0;

    iget-object v2, v0, Lp0/s;->l:Lp2/m0;

    iget-object v3, v2, Lp2/m0;->a:Lp2/e0;

    iget-object v7, v0, Lp0/s;->m:Lp2/m0;

    iget-object v8, v7, Lp2/m0;->a:Lp2/e0;

    sget-object v9, Lp2/f0;->d:La3/o;

    iget-object v9, v3, Lp2/e0;->a:La3/o;

    iget-object v10, v8, Lp2/e0;->a:La3/o;

    instance-of v11, v9, La3/b;

    sget-object v12, La3/n;->a:La3/n;

    if-nez v11, :cond_2

    instance-of v15, v10, La3/b;

    if-nez v15, :cond_2

    const-wide/16 p1, 0x10

    invoke-interface {v9}, La3/o;->a()J

    move-result-wide v13

    invoke-interface {v10}, La3/o;->a()J

    move-result-wide v9

    invoke-static {v13, v14, v9, v10, v1}, Lm1/v;->s(JJF)J

    move-result-wide v9

    cmp-long v11, v9, p1

    if-eqz v11, :cond_1

    new-instance v12, La3/c;

    invoke-direct {v12, v9, v10}, La3/c;-><init>(J)V

    :cond_1
    :goto_1
    move-object v14, v12

    goto :goto_2

    :cond_2
    const-wide/16 p1, 0x10

    if-eqz v11, :cond_6

    instance-of v11, v10, La3/b;

    if-eqz v11, :cond_6

    check-cast v9, La3/b;

    iget-object v11, v9, La3/b;->a:Lm1/n;

    check-cast v10, La3/b;

    iget-object v13, v10, La3/b;->a:Lm1/n;

    invoke-static {v1, v11, v13}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm1/m;

    iget v9, v9, La3/b;->b:F

    iget v10, v10, La3/b;->b:F

    invoke-static {v9, v10, v1}, Lg5/f;->C(FFF)F

    move-result v9

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    instance-of v10, v11, Lm1/j0;

    if-eqz v10, :cond_4

    check-cast v11, Lm1/j0;

    iget-wide v10, v11, Lm1/j0;->a:J

    invoke-static {v9, v10, v11}, La/a;->r(FJ)J

    move-result-wide v9

    cmp-long v11, v9, p1

    if-eqz v11, :cond_1

    new-instance v12, La3/c;

    invoke-direct {v12, v9, v10}, La3/c;-><init>(J)V

    goto :goto_1

    :cond_4
    instance-of v10, v11, Lm1/n;

    if-eqz v10, :cond_5

    new-instance v12, La3/b;

    check-cast v11, Lm1/n;

    invoke-direct {v12, v11, v9}, La3/b;-><init>(Lm1/n;F)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    invoke-static {v1, v9, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, La3/o;

    goto :goto_1

    :goto_2
    iget-object v9, v3, Lp2/e0;->f:Lt2/p;

    iget-object v10, v8, Lp2/e0;->f:Lt2/p;

    invoke-static {v1, v9, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Lt2/p;

    iget-wide v9, v3, Lp2/e0;->b:J

    iget-wide v11, v8, Lp2/e0;->b:J

    invoke-static {v9, v10, v11, v12, v1}, Lp2/f0;->c(JJF)J

    move-result-wide v15

    iget-object v9, v3, Lp2/e0;->c:Lt2/k;

    if-nez v9, :cond_7

    sget-object v9, Lt2/k;->n:Lt2/k;

    :cond_7
    iget-object v10, v8, Lp2/e0;->c:Lt2/k;

    if-nez v10, :cond_8

    sget-object v10, Lt2/k;->n:Lt2/k;

    :cond_8
    iget v9, v9, Lt2/k;->l:I

    iget v10, v10, Lt2/k;->l:I

    invoke-static {v1, v9, v10}, Lg5/f;->D(FII)I

    move-result v9

    const/16 v10, 0x3e8

    invoke-static {v9, v5, v10}, Lg6/c1;->f(III)I

    move-result v5

    new-instance v9, Lt2/k;

    invoke-direct {v9, v5}, Lt2/k;-><init>(I)V

    iget-object v5, v3, Lp2/e0;->d:Lt2/i;

    iget-object v10, v8, Lp2/e0;->d:Lt2/i;

    invoke-static {v1, v5, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lt2/i;

    iget-object v5, v3, Lp2/e0;->e:Lt2/j;

    iget-object v10, v8, Lp2/e0;->e:Lt2/j;

    invoke-static {v1, v5, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lt2/j;

    iget-object v5, v3, Lp2/e0;->g:Ljava/lang/String;

    iget-object v10, v8, Lp2/e0;->g:Ljava/lang/String;

    invoke-static {v1, v5, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Ljava/lang/String;

    iget-wide v10, v3, Lp2/e0;->h:J

    iget-wide v12, v8, Lp2/e0;->h:J

    invoke-static {v10, v11, v12, v13, v1}, Lp2/f0;->c(JJF)J

    move-result-wide v22

    iget-object v5, v3, Lp2/e0;->i:La3/a;

    const/4 v10, 0x0

    if-eqz v5, :cond_9

    iget v5, v5, La3/a;->a:F

    goto :goto_3

    :cond_9
    move v5, v10

    :goto_3
    iget-object v11, v8, Lp2/e0;->i:La3/a;

    if-eqz v11, :cond_a

    iget v10, v11, La3/a;->a:F

    :cond_a
    invoke-static {v5, v10, v1}, Lg5/f;->C(FFF)F

    move-result v5

    iget-object v10, v3, Lp2/e0;->j:La3/p;

    sget-object v11, La3/p;->c:La3/p;

    if-nez v10, :cond_b

    move-object v10, v11

    :cond_b
    iget-object v12, v8, Lp2/e0;->j:La3/p;

    if-nez v12, :cond_c

    goto :goto_4

    :cond_c
    move-object v11, v12

    :goto_4
    new-instance v12, La3/p;

    iget v13, v10, La3/p;->a:F

    move-object/from16 v17, v9

    iget v9, v11, La3/p;->a:F

    invoke-static {v13, v9, v1}, Lg5/f;->C(FFF)F

    move-result v9

    iget v10, v10, La3/p;->b:F

    iget v11, v11, La3/p;->b:F

    invoke-static {v10, v11, v1}, Lg5/f;->C(FFF)F

    move-result v10

    invoke-direct {v12, v9, v10}, La3/p;-><init>(FF)V

    iget-object v9, v3, Lp2/e0;->k:Lw2/b;

    iget-object v10, v8, Lp2/e0;->k:Lw2/b;

    invoke-static {v1, v9, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v9

    check-cast v26, Lw2/b;

    iget-wide v9, v3, Lp2/e0;->l:J

    move-object/from16 v25, v12

    iget-wide v11, v8, Lp2/e0;->l:J

    invoke-static {v9, v10, v11, v12, v1}, Lm1/v;->s(JJF)J

    move-result-wide v27

    iget-object v9, v3, Lp2/e0;->m:La3/l;

    iget-object v10, v8, Lp2/e0;->m:La3/l;

    invoke-static {v1, v9, v10}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v29, v9

    check-cast v29, La3/l;

    iget-object v9, v3, Lp2/e0;->n:Lm1/g0;

    if-nez v9, :cond_d

    new-instance v9, Lm1/g0;

    invoke-direct {v9}, Lm1/g0;-><init>()V

    :cond_d
    iget-object v10, v8, Lp2/e0;->n:Lm1/g0;

    if-nez v10, :cond_e

    new-instance v10, Lm1/g0;

    invoke-direct {v10}, Lm1/g0;-><init>()V

    :cond_e
    new-instance v30, Lm1/g0;

    iget-wide v11, v9, Lm1/g0;->a:J

    move-object/from16 p1, v14

    iget-wide v13, v10, Lm1/g0;->a:J

    invoke-static {v11, v12, v13, v14, v1}, Lm1/v;->s(JJF)J

    move-result-wide v31

    iget-wide v11, v9, Lm1/g0;->b:J

    iget-wide v13, v10, Lm1/g0;->b:J

    const/16 v24, 0x20

    move-wide/from16 v33, v11

    shr-long v11, v33, v24

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    move-wide/from16 v36, v13

    shr-long v12, v36, v24

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v11, v12, v1}, Lg5/f;->C(FFF)F

    move-result v11

    const-wide v38, 0xffffffffL

    and-long v12, v33, v38

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    and-long v13, v36, v38

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-static {v12, v13, v1}, Lg5/f;->C(FFF)F

    move-result v12

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v13, v11

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    shl-long v13, v13, v24

    and-long v11, v11, v38

    or-long v33, v13, v11

    iget v9, v9, Lm1/g0;->c:F

    iget v10, v10, Lm1/g0;->c:F

    invoke-static {v9, v10, v1}, Lg5/f;->C(FFF)F

    move-result v35

    invoke-direct/range {v30 .. v35}, Lm1/g0;-><init>(JJF)V

    iget-object v9, v3, Lp2/e0;->o:Lp2/v;

    iget-object v10, v8, Lp2/e0;->o:Lp2/v;

    if-nez v9, :cond_f

    if-nez v10, :cond_f

    const/16 v31, 0x0

    goto :goto_5

    :cond_f
    if-nez v9, :cond_10

    sget-object v9, Lp2/v;->a:Lp2/v;

    :cond_10
    move-object/from16 v31, v9

    :goto_5
    iget-object v3, v3, Lp2/e0;->p:Lo1/e;

    iget-object v8, v8, Lp2/e0;->p:Lo1/e;

    invoke-static {v1, v3, v8}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Lo1/e;

    new-instance v13, Lp2/e0;

    new-instance v3, La3/a;

    invoke-direct {v3, v5}, La3/a;-><init>(F)V

    move-object/from16 v14, p1

    move-object/from16 v24, v3

    invoke-direct/range {v13 .. v32}, Lp2/e0;-><init>(La3/o;JLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)V

    iget-object v2, v2, Lp2/m0;->b:Lp2/s;

    iget-object v3, v7, Lp2/m0;->b:Lp2/s;

    sget v5, Lp2/t;->b:I

    new-instance v14, Lp2/s;

    iget v5, v2, Lp2/s;->a:I

    new-instance v7, La3/k;

    invoke-direct {v7, v5}, La3/k;-><init>(I)V

    iget v5, v3, Lp2/s;->a:I

    new-instance v8, La3/k;

    invoke-direct {v8, v5}, La3/k;-><init>(I)V

    invoke-static {v1, v7, v8}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/k;

    iget v15, v5, La3/k;->a:I

    iget v5, v2, Lp2/s;->b:I

    new-instance v7, La3/m;

    invoke-direct {v7, v5}, La3/m;-><init>(I)V

    iget v5, v3, Lp2/s;->b:I

    new-instance v8, La3/m;

    invoke-direct {v8, v5}, La3/m;-><init>(I)V

    invoke-static {v1, v7, v8}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/m;

    iget v5, v5, La3/m;->a:I

    iget-wide v7, v2, Lp2/s;->c:J

    iget-wide v9, v3, Lp2/s;->c:J

    invoke-static {v7, v8, v9, v10, v1}, Lp2/f0;->c(JJF)J

    move-result-wide v17

    iget-object v7, v2, Lp2/s;->d:La3/q;

    if-nez v7, :cond_11

    sget-object v7, La3/q;->c:La3/q;

    :cond_11
    iget-object v8, v3, Lp2/s;->d:La3/q;

    if-nez v8, :cond_12

    sget-object v8, La3/q;->c:La3/q;

    :cond_12
    new-instance v9, La3/q;

    iget-wide v11, v7, La3/q;->a:J

    move-object/from16 p2, v14

    move v10, v15

    iget-wide v14, v8, La3/q;->a:J

    invoke-static {v11, v12, v14, v15, v1}, Lp2/f0;->c(JJF)J

    move-result-wide v11

    iget-wide v14, v7, La3/q;->b:J

    iget-wide v7, v8, La3/q;->b:J

    invoke-static {v14, v15, v7, v8, v1}, Lp2/f0;->c(JJF)J

    move-result-wide v7

    invoke-direct {v9, v11, v12, v7, v8}, La3/q;-><init>(JJ)V

    iget-object v7, v2, Lp2/s;->e:Lp2/u;

    iget-object v8, v3, Lp2/s;->e:Lp2/u;

    if-nez v7, :cond_13

    if-nez v8, :cond_13

    const/16 v20, 0x0

    goto :goto_6

    :cond_13
    sget-object v11, Lp2/u;->c:Lp2/u;

    if-nez v7, :cond_14

    move-object v7, v11

    :cond_14
    iget-boolean v12, v7, Lp2/u;->a:Z

    if-nez v8, :cond_15

    move-object v8, v11

    :cond_15
    iget-boolean v11, v8, Lp2/u;->a:Z

    if-ne v12, v11, :cond_16

    move-object/from16 v20, v7

    goto :goto_6

    :cond_16
    new-instance v14, Lp2/u;

    iget v7, v7, Lp2/u;->b:I

    new-instance v15, Lp2/j;

    invoke-direct {v15, v7}, Lp2/j;-><init>(I)V

    iget v7, v8, Lp2/u;->b:I

    new-instance v8, Lp2/j;

    invoke-direct {v8, v7}, Lp2/j;-><init>(I)V

    invoke-static {v1, v15, v8}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp2/j;

    iget v7, v7, Lp2/j;->a:I

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v1, v8, v11}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {v14, v7, v8}, Lp2/u;-><init>(IZ)V

    move-object/from16 v20, v14

    :goto_6
    iget-object v7, v2, Lp2/s;->f:La3/i;

    iget-object v8, v3, Lp2/s;->f:La3/i;

    invoke-static {v1, v7, v8}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, La3/i;

    iget v7, v2, Lp2/s;->g:I

    new-instance v8, La3/e;

    invoke-direct {v8, v7}, La3/e;-><init>(I)V

    iget v7, v3, Lp2/s;->g:I

    new-instance v11, La3/e;

    invoke-direct {v11, v7}, La3/e;-><init>(I)V

    invoke-static {v1, v8, v11}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La3/e;

    iget v7, v7, La3/e;->a:I

    iget v8, v2, Lp2/s;->h:I

    new-instance v11, La3/d;

    invoke-direct {v11, v8}, La3/d;-><init>(I)V

    iget v8, v3, Lp2/s;->h:I

    new-instance v12, La3/d;

    invoke-direct {v12, v8}, La3/d;-><init>(I)V

    invoke-static {v1, v11, v12}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La3/d;

    iget v8, v8, La3/d;->a:I

    iget-object v2, v2, Lp2/s;->i:La3/s;

    iget-object v3, v3, Lp2/s;->i:La3/s;

    invoke-static {v1, v2, v3}, Lp2/f0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, La3/s;

    move-object/from16 v14, p2

    move/from16 v16, v5

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v19, v9

    move v15, v10

    invoke-direct/range {v14 .. v24}, Lp2/s;-><init>(IIJLa3/q;Lp2/u;La3/i;IILa3/s;)V

    invoke-direct {v6, v13, v14}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;)V

    iget-boolean v1, v0, Lp0/s;->p:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lp0/s;->q:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/p;

    iget-wide v7, v1, Lm1/p;->a:J

    const/16 v17, 0x0

    const v18, 0xfffffe

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-static/range {v6 .. v18}, Lp2/m0;->a(Lp2/m0;JJLt2/k;Lt2/p;JJLa3/i;I)Lp2/m0;

    move-result-object v6

    :cond_17
    move-object v2, v6

    iget-object v1, v0, Lp0/s;->o:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/p;

    iget-wide v5, v1, Lm1/p;->a:J

    new-instance v1, Lo0/y;

    iget-object v3, v0, Lp0/s;->r:Li9/f;

    iget-object v0, v0, Lp0/s;->s:Lp0/v;

    invoke-direct {v1, v3, v0}, Lo0/y;-><init>(Li9/f;Lp0/v;)V

    const v0, 0x44fdd1bf

    invoke-static {v0, v1, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    move-wide v0, v5

    const/16 v5, 0x180

    invoke-static/range {v0 .. v5}, Lp0/y;->b(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_7

    :cond_18
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
