.class public final Lod/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:I

.field public final synthetic n:Li9/c;


# direct methods
.method public constructor <init>(Ljava/util/List;ILi9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/m4;->l:Ljava/util/List;

    iput p2, p0, Lod/m4;->m:I

    iput-object p3, p0, Lod/m4;->n:Li9/c;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v13, p3

    check-cast v13, Lr0/q;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v13, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v13, v2}, Lr0/q;->e(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v3, v6, :cond_4

    move v3, v7

    goto :goto_3

    :cond_4
    move v3, v8

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-virtual {v13, v6, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lod/m4;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/Route;

    const v6, -0x145b0a64

    invoke-virtual {v13, v6}, Lr0/q;->b0(I)V

    iget v6, v0, Lod/m4;->m:I

    if-ne v2, v6, :cond_5

    move v6, v7

    goto :goto_4

    :cond_5
    move v6, v8

    :goto_4
    if-eqz v6, :cond_6

    const v9, -0x3a768595

    invoke-virtual {v13, v9}, Lr0/q;->b0(I)V

    sget-object v9, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v9}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo0/u0;

    iget-wide v9, v9, Lo0/u0;->c:J

    :goto_5
    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_6
    const v9, -0x3a767f97    # -4400.0513f

    invoke-virtual {v13, v9}, Lr0/q;->b0(I)V

    sget-object v9, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v9}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo0/u0;

    iget-wide v9, v9, Lo0/u0;->r:J

    goto :goto_5

    :goto_6
    sget-object v11, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v13, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo0/q3;

    iget-object v12, v12, Lo0/q3;->c:La0/d;

    const/16 v14, 0x8

    int-to-float v14, v14

    const/16 v19, 0x0

    const/16 v20, 0xb

    sget-object v15, Lf1/o;->a:Lf1/o;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v14

    const/16 v15, 0x96

    int-to-float v15, v15

    invoke-static {v14, v15}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v14

    if-eqz v6, :cond_7

    int-to-float v5, v5

    goto :goto_7

    :cond_7
    int-to-float v5, v8

    :goto_7
    if-eqz v6, :cond_8

    const v6, -0x3a7658fe

    invoke-virtual {v13, v6}, Lr0/q;->b0(I)V

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    move v15, v5

    iget-wide v4, v6, Lo0/u0;->a:J

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_8
    move v15, v5

    const v4, -0x3a76569a

    invoke-virtual {v13, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    sget-wide v4, Lm1/p;->f:J

    :goto_8
    invoke-virtual {v13, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/q3;

    iget-object v6, v6, Lo0/q3;->c:La0/d;

    invoke-static {v14, v15, v4, v5, v6}, Lp/o;->h(Lf1/r;FJLm1/h0;)Lf1/r;

    move-result-object v4

    iget-object v0, v0, Lod/m4;->n:Li9/c;

    invoke-virtual {v13, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v11, 0x20

    if-le v6, v11, :cond_9

    invoke-virtual {v13, v2}, Lr0/q;->e(I)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_9
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v11, :cond_a

    goto :goto_9

    :cond_a
    move v7, v8

    :cond_b
    :goto_9
    or-int v1, v5, v7

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_c

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v5, v1, :cond_d

    :cond_c
    new-instance v5, Lod/l4;

    invoke-direct {v5, v0, v2}, Lod/l4;-><init>(Li9/c;I)V

    invoke-virtual {v13, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v5, Li9/a;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v4, v8, v1, v5, v0}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    new-instance v1, Lo0/b1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lo0/b1;-><init>(ILjava/lang/Object;)V

    const v2, 0x2cb19c36

    invoke-static {v2, v1, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const/high16 v14, 0xc00000

    const/16 v15, 0x78

    move v2, v8

    const-wide/16 v7, 0x0

    move-wide v5, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    move-object v4, v12

    move-object v12, v1

    invoke-static/range {v3 .. v15}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_e
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_a
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
