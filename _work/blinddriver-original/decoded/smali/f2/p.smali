.class public final synthetic Lf2/p;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput p8, p0, Lf2/p;->s:I

    invoke-direct/range {p0 .. p7}, Lj9/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lf2/p;->s:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lp/p0;

    iget-object v0, v0, Lp/p0;->G:Lk1/b0;

    invoke-static {v0}, Lk1/b0;->U0(Lk1/b0;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lk1/i;

    iget-object v1, v0, Lk1/i;->c:Lk/n0;

    iget-object v2, v0, Lk1/i;->d:Lk/n0;

    iget-object v3, v0, Lk1/i;->a:Lk1/o;

    invoke-virtual {v3}, Lk1/o;->f()Lk1/b0;

    move-result-object v4

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-nez v4, :cond_3

    iget-object v4, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v14, v2, Lk/n0;->a:[J

    array-length v15, v14

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_10

    move v5, v13

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :goto_0
    aget-wide v7, v14, v5

    const/16 p0, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v9, v7

    shl-long v9, v9, p0

    and-long/2addr v9, v7

    and-long v9, v9, v20

    cmp-long v6, v9, v20

    if-eqz v6, :cond_2

    sub-int v6, v5, v15

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    move v9, v13

    :goto_1
    if-ge v9, v6, :cond_1

    and-long v10, v7, v18

    cmp-long v10, v10, v16

    if-gez v10, :cond_0

    shl-int/lit8 v10, v5, 0x3

    add-int/2addr v10, v9

    aget-object v10, v4, v10

    check-cast v10, Lk1/g;

    sget-object v11, Lk1/z;->n:Lk1/z;

    invoke-interface {v10, v11}, Lk1/g;->s0(Lk1/z;)V

    :cond_0
    shr-long/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v12, :cond_10

    :cond_2
    if-eq v5, v15, :cond_10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    iget-boolean v5, v4, Lf1/q;->y:Z

    if-eqz v5, :cond_10

    invoke-virtual {v1, v4}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lk1/b0;->S0()V

    :cond_4
    invoke-virtual {v4}, Lk1/b0;->R0()Lk1/z;

    move-result-object v5

    iget-object v6, v4, Lf1/q;->l:Lf1/q;

    iget-boolean v6, v6, Lf1/q;->y:Z

    if-nez v6, :cond_5

    const-string v6, "visitAncestors called on an unattached node"

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v6, v4, Lf1/q;->l:Lf1/q;

    invoke-static {v4}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v4

    move v7, v13

    :goto_2
    if-eqz v4, :cond_c

    iget-object v8, v4, Le2/g0;->R:Le2/c1;

    iget-object v8, v8, Le2/c1;->f:Lf1/q;

    iget v8, v8, Lf1/q;->o:I

    and-int/lit16 v8, v8, 0x1400

    if-eqz v8, :cond_a

    :goto_3
    if-eqz v6, :cond_a

    iget v8, v6, Lf1/q;->n:I

    and-int/lit16 v9, v8, 0x1400

    if-eqz v9, :cond_9

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    instance-of v8, v6, Lk1/g;

    if-eqz v8, :cond_9

    invoke-virtual {v2, v6}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x1

    if-gt v7, v8, :cond_8

    move-object v8, v6

    check-cast v8, Lk1/g;

    invoke-interface {v8, v5}, Lk1/g;->s0(Lk1/z;)V

    goto :goto_4

    :cond_8
    move-object v8, v6

    check-cast v8, Lk1/g;

    sget-object v9, Lk1/z;->m:Lk1/z;

    invoke-interface {v8, v9}, Lk1/g;->s0(Lk1/z;)V

    :goto_4
    invoke-virtual {v2, v6}, Lk/n0;->l(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Le2/g0;->v()Le2/g0;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v6, v4, Le2/g0;->R:Le2/c1;

    if-eqz v6, :cond_b

    iget-object v6, v6, Le2/c1;->e:Le2/b2;

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    iget-object v4, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v5, v2, Lk/n0;->a:[J

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_10

    move v7, v13

    :goto_6
    aget-wide v8, v5, v7

    not-long v10, v8

    shl-long v10, v10, p0

    and-long/2addr v10, v8

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_f

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    move v11, v13

    :goto_7
    if-ge v11, v10, :cond_e

    and-long v14, v8, v18

    cmp-long v14, v14, v16

    if-gez v14, :cond_d

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v11

    aget-object v14, v4, v14

    check-cast v14, Lk1/g;

    sget-object v15, Lk1/z;->n:Lk1/z;

    invoke-interface {v14, v15}, Lk1/g;->s0(Lk1/z;)V

    :cond_d
    shr-long/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    if-ne v10, v12, :cond_10

    :cond_f
    if-eq v7, v6, :cond_10

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v3}, Lk1/o;->f()Lk1/b0;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v4, v3, Lk1/o;->c:Lk1/b0;

    invoke-virtual {v4}, Lk1/b0;->R0()Lk1/z;

    move-result-object v4

    sget-object v5, Lk1/z;->n:Lk1/z;

    if-ne v4, v5, :cond_12

    :cond_11
    invoke-virtual {v3}, Lk1/o;->c()V

    :cond_12
    invoke-virtual {v1}, Lk/n0;->b()V

    invoke-virtual {v2}, Lk/n0;->b()V

    iput-boolean v13, v0, Lk1/i;->e:Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Li0/e;

    invoke-interface {v0}, Li0/e;->N()Le0/c;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_13

    invoke-static {v0}, Li2/a;->g(Landroid/view/View;)V

    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    goto :goto_8

    :cond_14
    new-instance v2, Lk0/l;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lk0/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    move-object v0, v2

    :goto_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
