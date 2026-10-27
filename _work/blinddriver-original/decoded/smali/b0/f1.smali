.class public final synthetic Lb0/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Lp2/m0;


# direct methods
.method public synthetic constructor <init>(IILp2/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb0/f1;->l:I

    iput p2, p0, Lb0/f1;->m:I

    iput-object p3, p0, Lb0/f1;->n:Lp2/m0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lf1/r;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x1855405a

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    iget v2, v0, Lb0/f1;->l:I

    iget v3, v0, Lb0/f1;->m:I

    invoke-static {v2, v3}, Lb0/n1;->B(II)V

    sget-object v4, Lf1/o;->a:Lf1/o;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v6}, Lr0/q;->q(Z)V

    return-object v4

    :cond_0
    sget-object v8, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v1, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb3/c;

    sget-object v9, Lf2/l1;->k:Lr0/s2;

    invoke-virtual {v1, v9}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt2/d;

    sget-object v10, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v1, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb3/m;

    iget-object v0, v0, Lb0/f1;->n:Lp2/m0;

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v1, v12}, Lr0/q;->e(I)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lr0/m;->a:Lr0/e;

    if-nez v11, :cond_1

    if-ne v12, v13, :cond_2

    :cond_1
    invoke-static {v0, v10}, Lp2/d0;->h(Lp2/m0;Lb3/m;)Lp2/m0;

    move-result-object v12

    invoke-virtual {v1, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v12, Lp2/m0;

    invoke-virtual {v1, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v1, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_3

    if-ne v14, v13, :cond_7

    :cond_3
    iget-object v11, v12, Lp2/m0;->a:Lp2/e0;

    iget-object v14, v11, Lp2/e0;->f:Lt2/p;

    iget-object v15, v11, Lp2/e0;->c:Lt2/k;

    if-nez v15, :cond_4

    sget-object v15, Lt2/k;->n:Lt2/k;

    :cond_4
    iget-object v6, v11, Lp2/e0;->d:Lt2/i;

    if-eqz v6, :cond_5

    iget v6, v6, Lt2/i;->a:I

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    iget-object v11, v11, Lp2/e0;->e:Lt2/j;

    if-eqz v11, :cond_6

    iget v11, v11, Lt2/j;->a:I

    goto :goto_1

    :cond_6
    const v11, 0xffff

    :goto_1
    move-object v5, v9

    check-cast v5, Lt2/e;

    invoke-virtual {v5, v14, v15, v6, v11}, Lt2/e;->b(Lt2/p;Lt2/k;II)Lt2/r;

    move-result-object v14

    invoke-virtual {v1, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v14, Lr0/r2;

    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v1, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v1, v11}, Lr0/q;->e(I)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v1, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    const-wide v15, 0xffffffffL

    if-nez v5, :cond_8

    if-ne v6, v13, :cond_9

    :cond_8
    sget-object v5, Lb0/h2;->a:Ljava/lang/String;

    invoke-static {v12, v8, v9, v5, v7}, Lb0/h2;->a(Lp2/m0;Lb3/c;Lt2/d;Ljava/lang/String;I)J

    move-result-wide v5

    and-long/2addr v5, v15

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v1, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v11

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v1, v10}, Lr0/q;->e(I)Z

    move-result v10

    or-int/2addr v0, v10

    invoke-virtual {v1, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_a

    if-ne v6, v13, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lb0/h2;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v12, v8, v9, v0, v6}, Lb0/h2;->a(Lp2/m0;Lb3/c;Lt2/d;Ljava/lang/String;I)J

    move-result-wide v9

    and-long/2addr v9, v15

    long-to-int v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    const/4 v6, 0x0

    if-ne v2, v7, :cond_c

    move-object v2, v6

    :goto_2
    const v9, 0x7fffffff

    goto :goto_3

    :cond_c
    sub-int/2addr v2, v7

    mul-int/2addr v2, v0

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :goto_3
    if-ne v3, v9, :cond_d

    goto :goto_4

    :cond_d
    sub-int/2addr v3, v7

    mul-int/2addr v3, v0

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v8, v2}, Lb3/c;->M(I)F

    move-result v2

    goto :goto_5

    :cond_e
    move v2, v0

    :goto_5
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v8, v0}, Lb3/c;->M(I)F

    move-result v0

    :cond_f
    invoke-static {v4, v2, v0}, Lu/b1;->g(Lf1/r;FF)Lf1/r;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    return-object v0
.end method
