.class public final synthetic Lb0/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/j3;->l:I

    iput-object p3, p0, Lb0/j3;->n:Ljava/lang/Object;

    iput p1, p0, Lb0/j3;->m:I

    iput-object p4, p0, Lb0/j3;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb0/k3;Lc2/f1;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lb0/j3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/j3;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/j3;->o:Ljava/lang/Object;

    iput p3, p0, Lb0/j3;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lb0/j3;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lb0/j3;->n:Ljava/lang/Object;

    check-cast v1, Lr0/n1;

    iget-object v2, v0, Lb0/j3;->o:Ljava/lang/Object;

    check-cast v2, Lk/d0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/t;

    iget v4, v1, Lr0/n1;->e:I

    iget v0, v0, Lb0/j3;->m:I

    if-ne v4, v0, :cond_8

    iget-object v4, v1, Lr0/n1;->f:Lk/d0;

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, v3, Lr0/x;

    if-eqz v4, :cond_8

    iget-object v4, v2, Lk/d0;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_8

    const/4 v7, 0x0

    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_6

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_4

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    iget-object v14, v2, Lk/d0;->b:[Ljava/lang/Object;

    aget-object v14, v14, v13

    iget-object v15, v2, Lk/d0;->c:[I

    aget v15, v15, v13

    if-eq v15, v0, :cond_0

    const/4 v15, 0x1

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_2

    move-object v6, v3

    check-cast v6, Lr0/x;

    move/from16 p1, v11

    iget-object v11, v6, Lr0/x;->r:Lk/m0;

    invoke-static {v11, v14, v1}, Lr5/u0;->r(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move/from16 v16, v0

    instance-of v0, v14, Lr0/d0;

    if-eqz v0, :cond_3

    move-object v0, v14

    check-cast v0, Lr0/d0;

    invoke-virtual {v11, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v6, v6, Lr0/x;->u:Lk/m0;

    invoke-static {v6, v0}, Lr5/u0;->s(Lk/m0;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Lr0/n1;->g:Lk/m0;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v14}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move/from16 v16, v0

    move/from16 p1, v11

    :cond_3
    :goto_3
    if-eqz v15, :cond_5

    invoke-virtual {v2, v13}, Lk/d0;->f(I)V

    goto :goto_4

    :cond_4
    move/from16 v16, v0

    move/from16 p1, v11

    :cond_5
    :goto_4
    shr-long v8, v8, p1

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, p1

    move/from16 v0, v16

    goto :goto_1

    :cond_6
    move/from16 v16, v0

    move v0, v11

    if-ne v10, v0, :cond_8

    goto :goto_5

    :cond_7
    move/from16 v16, v0

    :goto_5
    if-eq v7, v5, :cond_8

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lb0/j3;->n:Ljava/lang/Object;

    check-cast v1, Lp/y1;

    iget-object v2, v0, Lb0/j3;->o:Ljava/lang/Object;

    check-cast v2, Lc2/f1;

    move-object/from16 v3, p1

    check-cast v3, Lc2/e1;

    iget-object v4, v1, Lp/y1;->z:Lp/a2;

    iget-object v4, v4, Lp/a2;->a:Lr0/b1;

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v4

    const/4 v5, 0x0

    if-gez v4, :cond_9

    move v4, v5

    :cond_9
    iget v0, v0, Lb0/j3;->m:I

    if-le v4, v0, :cond_a

    move v4, v0

    :cond_a
    neg-int v0, v4

    iget-boolean v1, v1, Lp/y1;->A:Z

    if-eqz v1, :cond_b

    move v4, v5

    goto :goto_6

    :cond_b
    move v4, v0

    :goto_6
    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move v0, v5

    :goto_7
    const/4 v1, 0x1

    iput-boolean v1, v3, Lc2/e1;->l:Z

    invoke-static {v3, v2, v4, v0}, Lc2/e1;->o(Lc2/e1;Lc2/f1;II)V

    iput-boolean v5, v3, Lc2/e1;->l:Z

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lb0/j3;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lb0/j3;->o:Ljava/lang/Object;

    check-cast v2, Li9/c;

    move-object/from16 v3, p1

    check-cast v3, Lw/e;

    const-string v4, "$this$LazyRow"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Lod/p;

    const/4 v6, 0x4

    invoke-direct {v5, v1, v6}, Lod/p;-><init>(Ljava/util/List;I)V

    new-instance v6, Lod/m4;

    iget v0, v0, Lb0/j3;->m:I

    invoke-direct {v6, v1, v0, v2}, Lod/m4;-><init>(Ljava/util/List;ILi9/c;)V

    new-instance v0, Lz0/d;

    const v1, 0x799532c4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v6}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v5, v0}, Lw/e;->b(ILi9/c;Li9/c;Lz0/d;)V

    goto :goto_8

    :pswitch_2
    iget-object v1, v0, Lb0/j3;->n:Ljava/lang/Object;

    check-cast v1, Lb0/k3;

    iget-object v2, v0, Lb0/j3;->o:Ljava/lang/Object;

    check-cast v2, Lc2/f1;

    move-object/from16 v3, p1

    check-cast v3, Lc2/e1;

    iget v4, v1, Lb0/k3;->b:I

    iget-object v9, v1, Lb0/k3;->a:Lb0/v2;

    iget-object v5, v1, Lb0/k3;->c:Lu2/b0;

    iget-object v1, v1, Lb0/k3;->d:Li9/a;

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/z2;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lb0/z2;->a:Lp2/j0;

    :goto_9
    move-object v6, v1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    goto :goto_9

    :goto_a
    const/4 v7, 0x0

    iget v8, v2, Lc2/f1;->l:I

    invoke-static/range {v3 .. v8}, Lb0/n1;->l(Lc2/e1;ILu2/b0;Lp2/j0;ZI)Ll1/c;

    move-result-object v1

    sget-object v4, Lr/m1;->l:Lr/m1;

    iget v5, v2, Lc2/f1;->m:I

    iget v0, v0, Lb0/j3;->m:I

    invoke-virtual {v9, v4, v1, v0, v5}, Lb0/v2;->a(Lr/m1;Ll1/c;II)V

    iget-object v0, v9, Lb0/v2;->a:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3, v2, v1, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
