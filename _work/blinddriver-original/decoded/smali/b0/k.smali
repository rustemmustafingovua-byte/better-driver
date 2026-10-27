.class public abstract Lb0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt8/j;

    sget-object v1, Lu8/r;->l:Lu8/r;

    invoke-direct {v0, v1, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lb0/k;->a:Lt8/j;

    return-void
.end method

.method public static final a(Lp2/g;Ljava/util/List;Lr0/q;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const v4, -0x6af76057

    invoke-virtual {v2, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v2, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v5, v3, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    move v5, v8

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/e;

    iget-object v9, v6, Lp2/e;->a:Ljava/lang/Object;

    check-cast v9, Li9/f;

    iget v10, v6, Lp2/e;->b:I

    iget v6, v6, Lp2/e;->c:I

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-ne v11, v12, :cond_5

    sget-object v11, Lb0/j;->b:Lb0/j;

    invoke-virtual {v2, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v11, Lc2/r0;

    iget-wide v12, v2, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    sget-object v14, Lf1/o;->a:Lf1/o;

    invoke-static {v14, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v14

    sget-object v15, Le2/h;->b:Le2/g;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    const/16 v16, 0x0

    iget-boolean v7, v2, Lr0/q;->S:Z

    if-eqz v7, :cond_6

    invoke-virtual {v2, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_5
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v11, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v13, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v2, v7, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v2, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v7, Le2/g;->d:Le2/e;

    invoke-static {v7, v14, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v0, v10, v6}, Lp2/g;->c(II)Lp2/g;

    move-result-object v6

    iget-object v6, v6, Lp2/g;->m:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v6, v2, v7}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lr0/q;->q(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lr0/q;->W()V

    :cond_8
    invoke-virtual {v2}, Lr0/q;->u()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v4, Lb0/h;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v0, v1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v2, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method
