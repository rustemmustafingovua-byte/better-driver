.class public final Le6/j;
.super Le6/f;
.source "SourceFile"


# instance fields
.field public final J:Lj6/i;

.field public final K:Lb6/l;


# direct methods
.method public constructor <init>(Le6/g;Lj6/t;Lb6/l;Lf6/c;Ljava/util/HashMap;Ljava/util/HashSet;ZLjava/util/HashSet;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 1
    invoke-direct/range {v0 .. v8}, Le6/f;-><init>(Le6/g;Lj6/t;Lf6/c;Ljava/util/Map;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 2
    iput-object p3, p0, Le6/j;->K:Lb6/l;

    .line 3
    iget-object p1, p1, Le6/g;->n:Ljava/lang/Object;

    check-cast p1, Lj6/i;

    .line 4
    iput-object p1, p0, Le6/j;->J:Lj6/i;

    .line 5
    iget-object p0, p0, Le6/f;->H:Lf6/r;

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot use Object Id with Builder-based deserialization (type "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object p2, p2, Lj6/t;->a:Lb6/l;

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Le6/j;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Le6/f;-><init>(Le6/f;Z)V

    .line 10
    iget-object v0, p1, Le6/j;->J:Lj6/i;

    iput-object v0, p0, Le6/j;->J:Lj6/i;

    .line 11
    iget-object p1, p1, Le6/j;->K:Lb6/l;

    iput-object p1, p0, Le6/j;->K:Lb6/l;

    return-void
.end method

.method public constructor <init>(Le6/j;Lf6/c;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Le6/f;-><init>(Le6/f;Lf6/c;)V

    .line 22
    iget-object p2, p1, Le6/j;->J:Lj6/i;

    iput-object p2, p0, Le6/j;->J:Lj6/i;

    .line 23
    iget-object p1, p1, Le6/j;->K:Lb6/l;

    iput-object p1, p0, Le6/j;->K:Lb6/l;

    return-void
.end method

.method public constructor <init>(Le6/j;Lf6/r;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Le6/f;-><init>(Le6/f;Lf6/r;)V

    .line 16
    iget-object p2, p1, Le6/j;->J:Lj6/i;

    iput-object p2, p0, Le6/j;->J:Lj6/i;

    .line 17
    iget-object p1, p1, Le6/j;->K:Lb6/l;

    iput-object p1, p0, Le6/j;->K:Lb6/l;

    return-void
.end method

.method public constructor <init>(Le6/j;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Le6/f;-><init>(Le6/f;Ljava/util/Set;Ljava/util/Set;)V

    .line 19
    iget-object p2, p1, Le6/j;->J:Lj6/i;

    iput-object p2, p0, Le6/j;->J:Lj6/i;

    .line 20
    iget-object p1, p1, Le6/j;->K:Lb6/l;

    iput-object p1, p0, Le6/j;->K:Lb6/l;

    return-void
.end method

.method public constructor <init>(Le6/j;Lu6/r;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Le6/f;-><init>(Le6/f;Lu6/r;)V

    .line 13
    iget-object p2, p1, Le6/j;->J:Lj6/i;

    iput-object p2, p0, Le6/j;->J:Lj6/i;

    .line 14
    iget-object p1, p1, Le6/j;->K:Lb6/l;

    iput-object p1, p0, Le6/j;->K:Lb6/l;

    return-void
.end method


# virtual methods
.method public final A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le6/j;->J:Lj6/i;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p1, p2}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Le6/f;->t:Lf6/v;

    iget-object v4, v1, Le6/f;->H:Lf6/r;

    invoke-virtual {v0, v2, v3, v4}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v4

    iget-boolean v5, v1, Le6/f;->C:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2}, Ls5/k;->t()Ls5/n;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    :goto_0
    sget-object v9, Ls5/n;->y:Ls5/n;

    iget-object v10, v1, Le6/f;->o:Lb6/l;

    if-ne v6, v9, :cond_12

    invoke-virtual {v2}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v0, v15}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v6

    invoke-virtual {v4, v15}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    :cond_1
    move v6, v5

    goto/16 :goto_3

    :cond_2
    iget-object v9, v1, Le6/f;->w:Lf6/c;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v2, v3}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    move v6, v5

    :try_start_0
    invoke-virtual {v0, v3, v4}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, v10, Lb6/l;->o:Ljava/lang/Class;

    if-eq v0, v4, :cond_3

    invoke-virtual {v2}, Ls5/k;->D0()Ls5/c;

    move-result-object v4

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Le6/f;->m0(Ls5/k;Lb6/i;Ls5/c;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v1, v3, v5, v8}, Le6/f;->n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V

    :cond_4
    iget-object v0, v1, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_5

    invoke-virtual {v1, v3, v5}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, v1, Le6/f;->F:Lg5/e;

    if-eqz v0, :cond_7

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {v2, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    :cond_6
    invoke-virtual {v3, v2}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v0

    invoke-virtual {v0}, Lu6/z;->n0()V

    invoke-virtual {v1, v2, v3, v5, v0}, Le6/j;->z0(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, v1, Le6/f;->G:Landroidx/lifecycle/a1;

    if-eqz v0, :cond_8

    invoke-virtual {v1, v2, v3, v5}, Le6/j;->y0(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    invoke-virtual {v2}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v4, Ls5/n;->u:Ls5/n;

    if-ne v0, v4, :cond_a

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    :cond_a
    :goto_1
    sget-object v4, Ls5/n;->y:Ls5/n;

    if-ne v0, v4, :cond_c

    invoke-virtual {v2}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v9, v4}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_1
    invoke-virtual {v0, v2, v3, v5}, Le6/y;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0, v5, v4, v3}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v7

    :cond_b
    invoke-virtual {v1, v2, v3, v5, v4}, Le6/f;->p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_c
    return-object v5

    :catch_1
    move-exception v0

    iget-object v2, v10, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v15, v3}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v7

    :cond_d
    move v6, v5

    invoke-virtual {v9, v15}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5, v2, v3}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lf6/z;->c(Le6/y;Ljava/lang/Object;)V

    goto :goto_3

    :cond_e
    iget-object v5, v1, Le6/f;->z:Ljava/util/Set;

    iget-object v9, v1, Le6/f;->A:Ljava/util/Set;

    invoke-static {v15, v5, v9}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v10, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v5, v15}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v14, v1, Le6/f;->y:Le6/w;

    if-eqz v14, :cond_10

    invoke-virtual {v14, v2, v3}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v13

    new-instance v11, Lf6/x;

    iget-object v12, v4, Lf6/z;->h:Lf2/b;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lf6/x;-><init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V

    iput-object v11, v4, Lf6/z;->h:Lf2/b;

    goto :goto_3

    :cond_10
    if-nez v8, :cond_11

    invoke-virtual {v3, v2}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v8

    :cond_11
    invoke-virtual {v8, v15}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lu6/z;->J0(Ls5/k;)V

    :goto_3
    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    move/from16 v17, v6

    move-object v6, v5

    move/from16 v5, v17

    goto/16 :goto_0

    :cond_12
    :try_start_2
    invoke-virtual {v0, v3, v4}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_14

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, v10, Lb6/l;->o:Ljava/lang/Class;

    if-eq v0, v4, :cond_13

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ls5/k;->D0()Ls5/c;

    move-result-object v4

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Le6/f;->m0(Ls5/k;Lb6/i;Ls5/c;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    move-object v6, v8

    invoke-virtual {v1, v3, v5, v6}, Le6/f;->n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V

    :cond_14
    return-object v5

    :catch_2
    move-exception v0

    invoke-virtual {v1, v3, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v7
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 3
    iget-boolean v0, p0, Le6/f;->v:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {v0, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v2

    sget-object v3, Ls5/n;->y:Ls5/n;

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 8
    iget-object v3, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {v3, v2}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {v3, p1, p2, v0}, Le6/y;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p0, p1, v0, v2, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v2}, Le6/f;->p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p2, v0}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-virtual {p0, p1, p2}, Le6/j;->x0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 16
    :pswitch_0
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1

    .line 17
    :pswitch_1
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Le6/f;->f0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Le6/f;->g0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Le6/f;->h0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Le6/f;->k0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Le6/j;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Le6/j;->x0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 24
    iget-object p1, p0, Le6/f;->o:Lb6/l;

    .line 25
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object p0, p0, Le6/j;->K:Lb6/l;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 29
    const-string p1, "Deserialization of %s by passing existing Builder (%s) instance not supported"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    .line 30
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 31
    const-string p1, "Deserialization of %s by passing existing instance (of %s) not supported"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final e0()Le6/f;
    .locals 4

    iget-object v0, p0, Le6/f;->w:Lf6/c;

    iget-object v0, v0, Lf6/c;->q:[Le6/y;

    new-instance v1, Lf6/a;

    iget-object v2, p0, Le6/j;->K:Lb6/l;

    iget-object v3, p0, Le6/j;->J:Lj6/i;

    invoke-direct {v1, p0, v2, v0, v3}, Lf6/a;-><init>(Le6/f;Lb6/l;[Le6/y;Lj6/i;)V

    return-object v1
.end method

.method public final q(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Le6/f;->s:Lb6/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Le6/f;->r:Lb6/n;

    if-eqz v0, :cond_1

    :cond_0
    move-object v7, p1

    move-object v4, p2

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Le6/f;->handledType()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x8

    sget-object v2, Lt6/f;->o:Lt6/f;

    invoke-virtual {p2, v2, v0, v1}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    sget-object v1, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, p1

    move-object v4, p2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->x:Ls5/n;

    if-ne v4, v5, :cond_6

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p2}, Le6/f;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v5

    sget-object v6, Ls5/n;->w:Ls5/n;

    const/4 p0, 0x0

    new-array v9, p0, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v7, p1

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_5
    move-object v4, p2

    invoke-virtual {p0, v4}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    move-object v7, p1

    move-object v4, p2

    if-eqz v1, :cond_8

    invoke-virtual {p0, v7, v4}, Le6/j;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v7}, Ls5/k;->z0()Ls5/n;

    move-result-object p2

    if-ne p2, v5, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0, v4}, Lg6/f1;->X(Lb6/i;)V

    throw v3

    :cond_8
    :goto_1
    invoke-virtual {p0, v4}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {v4, p0, v7}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v3

    :goto_2
    iget-object p1, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {v0, v7, v4}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Le6/c0;->v(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Le6/f;->x:[Lf6/f0;

    if-eqz p2, :cond_9

    invoke-virtual {p0, v4, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0, v4, p1}, Le6/j;->A0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final r0(Lf6/c;)Le6/f;
    .locals 1

    new-instance v0, Le6/j;

    invoke-direct {v0, p0, p1}, Le6/j;-><init>(Le6/j;Lf6/c;)V

    return-object v0
.end method

.method public final s0(Ljava/util/Set;Ljava/util/Set;)Le6/f;
    .locals 1

    new-instance v0, Le6/j;

    invoke-direct {v0, p0, p1, p2}, Le6/j;-><init>(Le6/j;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final t0()Le6/f;
    .locals 1

    new-instance v0, Le6/j;

    invoke-direct {v0, p0}, Le6/j;-><init>(Le6/j;)V

    return-object v0
.end method

.method public final u0(Lf6/r;)Le6/f;
    .locals 1

    new-instance v0, Le6/j;

    invoke-direct {v0, p0, p1}, Le6/j;-><init>(Le6/j;Lf6/r;)V

    return-object v0
.end method

.method public final unwrappingDeserializer(Lu6/r;)Lb6/n;
    .locals 1

    new-instance v0, Le6/j;

    invoke-direct {v0, p0, p1}, Le6/j;-><init>(Le6/j;Lu6/r;)V

    return-object v0
.end method

.method public final x0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-boolean v0, v1, Le6/f;->u:Z

    const/4 v4, 0x0

    iget-object v5, v1, Le6/f;->x:[Lf6/f0;

    iget-object v6, v1, Le6/f;->w:Lf6/c;

    iget-object v7, v1, Le6/f;->q:Le6/c0;

    if-eqz v0, :cond_11

    iget-object v0, v1, Le6/f;->F:Lg5/e;

    if-eqz v0, :cond_e

    iget-object v0, v1, Le6/f;->r:Lb6/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v1, Le6/f;->t:Lf6/v;

    iget-object v8, v1, Le6/f;->A:Ljava/util/Set;

    iget-object v9, v1, Le6/f;->z:Ljava/util/Set;

    if-eqz v0, :cond_8

    iget-object v5, v1, Le6/f;->H:Lf6/r;

    invoke-virtual {v0, v2, v3, v5}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v5

    move-object v10, v6

    invoke-virtual {v3, v2}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v6

    invoke-virtual {v6}, Lu6/z;->n0()V

    invoke-virtual {v2}, Ls5/k;->t()Ls5/n;

    move-result-object v7

    :goto_0
    sget-object v11, Ls5/n;->y:Ls5/n;

    if-ne v7, v11, :cond_7

    invoke-virtual {v2}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v0, v7}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v11

    invoke-virtual {v5, v7}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    iget-object v12, v1, Le6/f;->o:Lb6/l;

    if-eqz v11, :cond_3

    invoke-virtual {v11, v2, v3}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    :try_start_0
    invoke-virtual {v0, v3, v5}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, v12, Lb6/l;->o:Ljava/lang/Class;

    if-eq v0, v4, :cond_2

    invoke-virtual {v2}, Ls5/k;->D0()Ls5/c;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Le6/f;->m0(Ls5/k;Lb6/i;Ls5/c;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1, v2, v3, v5, v6}, Le6/j;->z0(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, v12, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v7, v3}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v4

    :cond_3
    invoke-virtual {v10, v7}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11, v2, v3}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Lf6/z;->c(Le6/y;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v7, v9, v8}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v12, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v11, v7}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v7}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lu6/z;->J0(Ls5/k;)V

    iget-object v15, v1, Le6/f;->y:Le6/w;

    if-eqz v15, :cond_6

    invoke-virtual {v15, v2, v3}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v14

    new-instance v12, Lf6/x;

    iget-object v13, v5, Lf6/z;->h:Lf2/b;

    const/16 v17, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lf6/x;-><init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V

    iput-object v12, v5, Lf6/z;->h:Lf2/b;

    :cond_6
    :goto_1
    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    move-result-object v7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Lu6/z;->R()V

    :try_start_1
    invoke-virtual {v0, v3, v5}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, v1, Le6/f;->F:Lg5/e;

    invoke-virtual {v1, v2, v3, v0, v6}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v3, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v4

    :cond_8
    move-object v10, v6

    invoke-virtual {v3, v2}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v0

    invoke-virtual {v0}, Lu6/z;->n0()V

    invoke-virtual {v7, v3}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_9

    invoke-virtual {v1, v3, v6}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_9
    :goto_2
    invoke-virtual {v2}, Ls5/k;->t()Ls5/n;

    move-result-object v5

    sget-object v7, Ls5/n;->y:Ls5/n;

    if-ne v5, v7, :cond_d

    invoke-virtual {v2}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v10, v5}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v7

    if-eqz v7, :cond_a

    :try_start_2
    invoke-virtual {v7, v2, v3, v6}, Le6/y;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v5

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v1, v0, v6, v5, v3}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v4

    :cond_a
    invoke-static {v5, v9, v8}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v1, v2, v3, v6, v5}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0, v5}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lu6/z;->J0(Ls5/k;)V

    iget-object v7, v1, Le6/f;->y:Le6/w;

    if-eqz v7, :cond_c

    :try_start_3
    invoke-virtual {v7, v2, v3, v6, v5}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v1, v0, v6, v5, v3}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v4

    :cond_c
    :goto_3
    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Lu6/z;->R()V

    iget-object v1, v1, Le6/f;->F:Lg5/e;

    invoke-virtual {v1, v2, v3, v6, v0}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object v6

    :cond_e
    iget-object v0, v1, Le6/f;->G:Landroidx/lifecycle/a1;

    if-eqz v0, :cond_10

    iget-object v0, v1, Le6/f;->t:Lf6/v;

    if-nez v0, :cond_f

    invoke-virtual {v7, v3}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Le6/j;->y0(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, "Deserialization (of %s) with Builder, External type id, @JsonCreator not yet implemented"

    iget-object v1, v1, Le6/j;->K:Lb6/l;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    :cond_10
    invoke-virtual/range {p0 .. p2}, Le6/f;->j0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v10, v6

    invoke-virtual {v7, v3}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v5, :cond_12

    invoke-virtual {v1, v3, v0}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_12
    iget-boolean v5, v1, Le6/f;->C:Z

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_13
    move-object v5, v0

    :goto_4
    invoke-virtual {v2}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v6, Ls5/n;->y:Ls5/n;

    if-ne v0, v6, :cond_15

    invoke-virtual {v2}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v10, v6}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_4
    invoke-virtual {v0, v2, v3, v5}, Le6/y;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v5, v0

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v1, v0, v5, v6, v3}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v4

    :cond_14
    invoke-virtual {v1, v2, v3, v5, v6}, Le6/f;->p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v2}, Ls5/k;->z0()Ls5/n;

    goto :goto_4

    :cond_15
    return-object v5
.end method

.method public final y0(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-boolean v0, p0, Le6/f;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/lifecycle/a1;

    invoke-direct {v1, v0}, Landroidx/lifecycle/a1;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    :goto_0
    sget-object v2, Ls5/n;->y:Ls5/n;

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v2

    iget-object v3, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {v3, v0}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Ls5/n;->s:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/lifecycle/a1;->v(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Le6/y;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v4

    :cond_2
    iget-object v2, p0, Le6/f;->z:Ljava/util/Set;

    iget-object v3, p0, Le6/f;->A:Ljava/util/Set;

    invoke-static {v0, v2, v3}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/lifecycle/a1;->u(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Le6/f;->y:Le6/w;

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2, p1, p2, p3, v0}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v4

    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {v1, p1, p2, p3}, Landroidx/lifecycle/a1;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final z0(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Le6/f;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    :goto_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {v1, v0}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Le6/y;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object v1, p0, Le6/f;->z:Ljava/util/Set;

    iget-object v2, p0, Le6/f;->A:Ljava/util/Set;

    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4, v0}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lu6/z;->J0(Ls5/k;)V

    iget-object v1, p0, Le6/f;->y:Le6/w;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2, p3, v0}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Lu6/z;->R()V

    iget-object p0, p0, Le6/f;->F:Lg5/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object p3
.end method
