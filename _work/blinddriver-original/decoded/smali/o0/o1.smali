.class public abstract Lo0/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    new-instance v0, Ln/k1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lo0/o1;->a:Lr0/s2;

    return-void
.end method

.method public static final a(Lo0/u0;Lo0/z1;Lo0/q3;Lo0/h5;Lr0/q;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v5, p5

    sget-object v6, Lsc/c;->a:Lz0/d;

    const v7, 0x35e9c094

    invoke-virtual {v0, v7}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v7, v5, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    and-int/lit8 v8, v5, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v7, v8

    :cond_3
    and-int/lit16 v8, v5, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v7, v8

    :cond_5
    and-int/lit16 v8, v5, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v7, v8

    :cond_7
    and-int/lit16 v8, v5, 0x6000

    if-nez v8, :cond_9

    invoke-virtual {v0, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_5

    :cond_8
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v7, v6

    :cond_9
    and-int/lit16 v6, v7, 0x2493

    const/16 v8, 0x2492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v8, :cond_a

    move v6, v10

    goto :goto_6

    :cond_a
    move v6, v9

    :goto_6
    and-int/2addr v7, v10

    invoke-virtual {v0, v7, v6}, Lr0/q;->T(IZ)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lr0/q;->W()V

    :cond_c
    :goto_7
    invoke-virtual {v0}, Lr0/q;->r()V

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-static {v7, v6, v9}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v6

    iget-wide v7, v1, Lo0/u0;->a:J

    invoke-virtual {v0, v7, v8}, Lr0/q;->f(J)Z

    move-result v9

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_d

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-ne v10, v9, :cond_e

    :cond_d
    new-instance v10, Lm0/a2;

    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v9, v7, v8}, Lm1/p;->b(FJ)J

    move-result-wide v11

    invoke-direct {v10, v7, v8, v11, v12}, Lm0/a2;-><init>(JJ)V

    invoke-virtual {v0, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v10, Lm0/a2;

    sget-object v7, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v7, v1}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v11

    sget-object v7, Lo0/o1;->a:Lr0/s2;

    invoke-virtual {v7, v2}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v12

    sget-object v7, Lp/b1;->a:Lr0/a0;

    invoke-virtual {v7, v6}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v13

    sget-object v6, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v6, v3}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v14

    sget-object v6, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v6, v10}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v15

    sget-object v6, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v6, v4}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Lj6/g0;

    move-result-object v6

    new-instance v7, Lo0/b1;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4}, Lo0/b1;-><init>(ILjava/lang/Object;)V

    const v8, -0x68571c2c

    invoke-static {v8, v7, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    const/16 v8, 0x38

    invoke-static {v6, v7, v0, v8}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_8
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v0, Lb4/c;

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lb4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final b(Lo0/u0;Lo0/q3;Lo0/h5;Lr0/q;I)V
    .locals 7

    sget-object v0, Lsc/c;->a:Lz0/d;

    const v1, -0x1ace2e0b

    invoke-virtual {p3, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_1

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v2, p4, 0x30

    if-nez v2, :cond_2

    or-int/lit8 v1, v1, 0x10

    :cond_2
    and-int/lit16 v2, p4, 0x180

    if-nez v2, :cond_3

    or-int/lit16 v1, v1, 0x80

    :cond_3
    and-int/lit16 v2, p4, 0xc00

    if-nez v2, :cond_5

    invoke-virtual {p3, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x800

    goto :goto_2

    :cond_4
    const/16 v0, 0x400

    :goto_2
    or-int/2addr v1, v0

    :cond_5
    and-int/lit16 v0, v1, 0x493

    const/16 v2, 0x492

    if-eq v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lr0/q;->Y()V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lr0/q;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Lr0/q;->W()V

    and-int/lit16 v0, v1, -0x3f1

    move-object v2, p1

    move-object v3, p2

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {p3, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {p3, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    and-int/lit16 v1, v1, -0x3f1

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    :goto_5
    invoke-virtual {p3}, Lr0/q;->r()V

    sget-object v1, Lo0/o1;->a:Lr0/s2;

    invoke-virtual {p3, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/z1;

    and-int/lit8 v5, v0, 0xe

    shl-int/lit8 v0, v0, 0x3

    const v6, 0xe000

    and-int/2addr v0, v6

    or-int/2addr v5, v0

    move-object v0, p0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lo0/o1;->a(Lo0/u0;Lo0/z1;Lo0/q3;Lo0/h5;Lr0/q;I)V

    move-object v4, v2

    move-object v5, v3

    goto :goto_6

    :cond_9
    invoke-virtual {p3}, Lr0/q;->W()V

    move-object v4, p1

    move-object v5, p2

    :goto_6
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v0, Lb0/a3;

    const/16 v2, 0x8

    move-object v3, p0

    move v1, p4

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method
