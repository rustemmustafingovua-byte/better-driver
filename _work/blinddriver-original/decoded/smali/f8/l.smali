.class public final Lf8/l;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lf8/t;

    invoke-direct {p0}, Lf8/t;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {v0, v3, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1

    new-instance v4, Lf8/j4;

    invoke-direct {v4}, Lf8/j4;-><init>()V

    iput-object v4, p0, Lf8/t;->x:Lf8/k4;

    or-int/lit16 v2, v2, 0x200

    :cond_1
    iget-object v4, p0, Lf8/t;->x:Lf8/k4;

    invoke-interface {v4, v3}, Lf8/k4;->h(Lf8/j;)V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->w:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    :cond_2
    iget-object v3, p0, Lf8/t;->w:Ljava/util/List;

    sget-object v4, Lf8/s;->s:Lf8/q;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->u:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    :cond_3
    iget-object v3, p0, Lf8/t;->u:Ljava/util/List;

    sget-object v4, Lf8/p1;->s:Lf8/n1;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    iget v3, p0, Lf8/t;->n:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    iget-object v3, p0, Lf8/t;->v:Lf8/f1;

    invoke-virtual {v3}, Lf8/f1;->B()Lf8/e1;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lf8/f1;->w:Lf8/d1;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lf8/f1;

    iput-object v4, p0, Lf8/t;->v:Lf8/f1;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lf8/e1;->X(Lf8/f1;)V

    invoke-virtual {v3}, Lf8/e1;->W()Lf8/f1;

    move-result-object v3

    iput-object v3, p0, Lf8/t;->v:Lf8/f1;

    :cond_5
    iget v3, p0, Lf8/t;->n:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lf8/t;->n:I

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->q:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_6
    iget-object v3, p0, Lf8/t;->q:Ljava/util/List;

    sget-object v4, Lf8/q0;->B:Lf8/m0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->t:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    :cond_7
    iget-object v3, p0, Lf8/t;->t:Ljava/util/List;

    sget-object v4, Lf8/p;->t:Lf8/n;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->s:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_8
    iget-object v3, p0, Lf8/t;->s:Ljava/util/List;

    sget-object v4, Lf8/z;->v:Lf8/u;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->r:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_9
    iget-object v3, p0, Lf8/t;->r:Ljava/util/List;

    sget-object v4, Lf8/t;->A:Lf8/l;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/t;->p:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_a
    iget-object v3, p0, Lf8/t;->p:Ljava/util/List;

    sget-object v4, Lf8/q0;->B:Lf8/m0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iget v5, p0, Lf8/t;->n:I

    or-int/2addr v4, v5

    iput v4, p0, Lf8/t;->n:I

    iput-object v3, p0, Lf8/t;->o:Ljava/io/Serializable;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_3
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lf8/t;->p:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->p:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_c

    iget-object p2, p0, Lf8/t;->r:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->r:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_d

    iget-object p2, p0, Lf8/t;->s:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->s:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_e

    iget-object p2, p0, Lf8/t;->t:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->t:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_f

    iget-object p2, p0, Lf8/t;->q:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->q:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_10

    iget-object p2, p0, Lf8/t;->u:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->u:Ljava/util/List;

    :cond_10
    and-int/lit16 p2, v2, 0x100

    if-eqz p2, :cond_11

    iget-object p2, p0, Lf8/t;->w:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->w:Ljava/util/List;

    :cond_11
    and-int/lit16 p2, v2, 0x200

    if-eqz p2, :cond_12

    iget-object p2, p0, Lf8/t;->x:Lf8/k4;

    invoke-interface {p2}, Lf8/k4;->i()Lf8/k4;

    move-result-object p2

    iput-object p2, p0, Lf8/t;->x:Lf8/k4;

    :cond_12
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_14

    iget-object p1, p0, Lf8/t;->p:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->p:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_15

    iget-object p1, p0, Lf8/t;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->r:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_16

    iget-object p1, p0, Lf8/t;->s:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->s:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_17

    iget-object p1, p0, Lf8/t;->t:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->t:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    iget-object p1, p0, Lf8/t;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->q:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_19

    iget-object p1, p0, Lf8/t;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->u:Ljava/util/List;

    :cond_19
    and-int/lit16 p1, v2, 0x100

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lf8/t;->w:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->w:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v2, 0x200

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lf8/t;->x:Lf8/k4;

    invoke-interface {p1}, Lf8/k4;->i()Lf8/k4;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->x:Lf8/k4;

    :cond_1b
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method
