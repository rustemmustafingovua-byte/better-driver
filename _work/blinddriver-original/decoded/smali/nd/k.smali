.class public abstract Lnd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J

.field public static final g:J

.field public static final h:Ljava/util/List;

.field public static final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide v0, 0xffe3e6dcL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lnd/k;->a:J

    const-wide v0, 0xffcfe3c6L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lnd/k;->b:J

    sget v0, Lm1/p;->h:I

    sget-wide v0, Lm1/p;->c:J

    sput-wide v0, Lnd/k;->c:J

    const-wide v0, 0xffc4c7bdL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lnd/k;->d:J

    const-wide v0, 0xff1e63d6L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lnd/k;->e:J

    const-wide v0, 0xff0b2f73L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lnd/k;->f:J

    const-wide v0, 0xff9fb4d9L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lnd/k;->g:J

    const/high16 v0, -0x3bfe0000    # -520.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v1, 0x44020000    # 520.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x44480000    # 800.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v4, 0x44a28000    # 1300.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v3, v1, v2, v4}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnd/k;->h:Ljava/util/List;

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v0, -0x3c510000    # -350.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v0, -0x3bd10000    # -700.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v0, -0x3b7cc000    # -1050.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/high16 v0, -0x3b510000    # -1400.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnd/k;->i:Ljava/util/List;

    return-void
.end method

.method public static final a(Lnd/h;ZZLf1/r;Lr0/q;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p4

    const v4, -0x3e9b3818

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p5, v4

    invoke-virtual {v0, v2}, Lr0/q;->h(Z)Z

    move-result v5

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    invoke-virtual {v0, v3}, Lr0/q;->h(Z)Z

    move-result v5

    const/16 v7, 0x100

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0xc00

    and-int/lit16 v5, v4, 0x493

    const/16 v8, 0x492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v8, :cond_3

    move v5, v10

    goto :goto_3

    :cond_3
    move v5, v9

    :goto_3
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lu/b1;->c:Lu/v;

    sget-object v8, Lf1/c;->l:Lf1/j;

    invoke-static {v8, v9}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v8

    iget-wide v11, v0, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v5, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v13

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v15, v0, Lr0/q;->S:Z

    if-eqz v15, :cond_4

    invoke-virtual {v0, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_4
    sget-object v14, Le2/g;->f:Le2/e;

    invoke-static {v14, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v8, Le2/g;->e:Le2/e;

    invoke-static {v8, v12, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v0, v8, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v8, Le2/g;->h:Le2/d;

    invoke-static {v0, v8}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v8, Le2/g;->d:Le2/e;

    invoke-static {v8, v13, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    and-int/lit16 v8, v4, 0x380

    if-ne v8, v7, :cond_5

    move v7, v10

    goto :goto_5

    :cond_5
    move v7, v9

    :goto_5
    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v6, :cond_6

    move v9, v10

    :cond_6
    or-int v4, v7, v9

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_7

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v6, v4, :cond_8

    :cond_7
    new-instance v6, Lm0/a;

    invoke-direct {v6, v3, v1, v2}, Lm0/a;-><init>(ZLnd/h;Z)V

    invoke-virtual {v0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Li9/c;

    const/4 v4, 0x6

    invoke-static {v4, v5, v6, v0}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    invoke-virtual {v0, v10}, Lr0/q;->q(Z)V

    sget-object v4, Lf1/o;->a:Lf1/o;

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v4, p3

    :goto_6
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v0, Lnd/j;

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lnd/j;-><init>(Lnd/h;ZZLf1/r;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final b(Lo1/d;JJ)V
    .locals 10

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v1

    const/16 v0, 0x20

    shr-long v2, p1, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const/high16 v3, 0x42080000    # 34.0f

    sub-float/2addr p2, v3

    invoke-virtual {v1, v2, p2}, Lm1/g;->e(FF)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const/high16 v2, 0x41d00000    # 26.0f

    add-float/2addr p2, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v1, p2, v3}, Lm1/g;->d(FF)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    add-float/2addr v3, v4

    invoke-virtual {v1, p2, v3}, Lm1/g;->d(FF)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    sub-float/2addr p2, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {v1, p2, p1}, Lm1/g;->d(FF)V

    iget-object p1, v1, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    sget-wide v2, Lm1/p;->c:J

    new-instance v4, Lo1/h;

    const/4 v6, 0x1

    const/16 v7, 0x16

    const/4 v5, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lo1/h;-><init>(IIIFF)V

    const/16 v5, 0x34

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    const/4 v4, 0x0

    const/16 v5, 0x3c

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    return-void
.end method

.method public static final c(Lo1/d;JJ)V
    .locals 20

    const/4 v8, 0x0

    const/16 v9, 0x1f0

    sget-wide v1, Lnd/k;->d:J

    const/high16 v7, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v0 .. v9}, Lo1/d;->u0(Lo1/d;JJJFII)V

    const/16 v18, 0x0

    const/16 v19, 0x1f0

    sget-wide v11, Lnd/k;->c:J

    const/high16 v17, 0x42000000    # 32.0f

    move-object/from16 v10, p0

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    invoke-static/range {v10 .. v19}, Lo1/d;->u0(Lo1/d;JJJFII)V

    return-void
.end method

.method public static final d(Lo1/d;Ljava/util/List;JJ)V
    .locals 16

    move-object/from16 v0, p1

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/b;

    iget-wide v3, v3, Ll1/b;->a:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/b;

    iget-wide v6, v2, Ll1/b;->a:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lm1/g;->e(FF)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll1/b;

    iget-wide v6, v4, Ll1/b;->a:J

    shr-long/2addr v6, v5

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll1/b;

    iget-wide v6, v6, Ll1/b;->a:J

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-virtual {v1, v4, v6}, Lm1/g;->d(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lo1/h;

    const/4 v12, 0x1

    const/16 v13, 0x12

    const/4 v11, 0x1

    const/high16 v14, 0x41d00000    # 26.0f

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lo1/h;-><init>(IIIFF)V

    const/16 v5, 0x34

    move-object/from16 v0, p0

    move-wide/from16 v2, p4

    move-object v4, v10

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    new-instance v2, Lo1/h;

    const/4 v4, 0x1

    const/16 v5, 0x12

    const/4 v3, 0x1

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lo1/h;-><init>(IIIFF)V

    const/16 v5, 0x34

    move-object v4, v2

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    return-void
.end method
