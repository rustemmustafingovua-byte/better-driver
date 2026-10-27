.class public final Landroidx/lifecycle/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/g;
.implements Lmb/y6;
.implements Lp2/r;


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object p1, Lu8/s;->l:Lu8/s;

    iput-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    .line 117
    const-string p1, "GET"

    iput-object p1, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    .line 118
    new-instance p1, Lc5/o;

    invoke-direct {p1}, Lc5/o;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    return-void

    .line 119
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    .line 122
    new-instance p1, Lz0/a;

    const/4 v0, 0x0

    .line 123
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 124
    iput-object p1, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    .line 125
    new-instance p1, Lk/h0;

    invoke-direct {p1}, Lk/h0;-><init>()V

    .line 126
    iput-object p1, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    .line 127
    new-instance p1, Lk/h0;

    invoke-direct {p1}, Lk/h0;-><init>()V

    .line 128
    iput-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-void

    .line 129
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    .line 131
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    .line 132
    const-string p1, "PublicSuffixDatabase.list"

    iput-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/lifecycle/a1;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-object v0, p1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Lb6/l;

    iput-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    .line 110
    iget-object v0, p1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v0, [Lf6/f;

    iput-object v0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    .line 111
    iget-object p1, p1, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    .line 112
    array-length p1, v0

    .line 113
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    .line 114
    new-array p1, p1, [Lu6/z;

    iput-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu8/v;->O(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    .line 6
    new-instance p1, Lb/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lb/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp2/g;Lp2/m0;Ljava/util/List;Lb3/c;Lt2/d;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    move-object/from16 v3, p3

    .line 9
    iput-object v3, v0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    .line 10
    sget-object v3, Lt8/h;->m:Lt8/h;

    new-instance v4, Lp2/o;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lp2/o;-><init>(Landroidx/lifecycle/a1;I)V

    invoke-static {v3, v4}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v4

    iput-object v4, v0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    .line 11
    new-instance v4, Lp2/o;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6}, Lp2/o;-><init>(Landroidx/lifecycle/a1;I)V

    invoke-static {v3, v4}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v3

    iput-object v3, v0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    .line 12
    iget-object v3, v2, Lp2/m0;->b:Lp2/s;

    .line 13
    sget-object v4, Lp2/h;->a:Lp2/g;

    .line 14
    iget-object v4, v1, Lp2/g;->o:Ljava/util/ArrayList;

    iget-object v7, v1, Lp2/g;->m:Ljava/lang/String;

    .line 15
    sget-object v8, Lu8/r;->l:Lu8/r;

    if-eqz v4, :cond_0

    .line 16
    new-instance v9, Lp2/f;

    .line 17
    invoke-direct {v9, v6}, Lp2/f;-><init>(I)V

    .line 18
    invoke-static {v4, v9}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v8

    .line 19
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v9, Lu8/k;

    invoke-direct {v9}, Lu8/k;-><init>()V

    .line 21
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v5

    move v12, v11

    :goto_1
    if-ge v11, v10, :cond_9

    .line 22
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 23
    check-cast v13, Lp2/e;

    .line 24
    iget-object v14, v13, Lp2/e;->a:Ljava/lang/Object;

    .line 25
    check-cast v14, Lp2/s;

    invoke-virtual {v3, v14}, Lp2/s;->a(Lp2/s;)Lp2/s;

    move-result-object v14

    const/16 v15, 0xe

    invoke-static {v13, v14, v5, v15}, Lp2/e;->a(Lp2/e;Lp2/b;II)Lp2/e;

    move-result-object v13

    iget-object v14, v13, Lp2/e;->a:Ljava/lang/Object;

    iget v15, v13, Lp2/e;->c:I

    iget v13, v13, Lp2/e;->b:I

    :goto_2
    if-ge v12, v13, :cond_3

    .line 26
    invoke-virtual {v9}, Lu8/k;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    .line 27
    invoke-virtual {v9}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lp2/e;

    move-object/from16 v16, v4

    .line 28
    iget v4, v5, Lp2/e;->c:I

    move-object/from16 v17, v8

    iget-object v8, v5, Lp2/e;->a:Ljava/lang/Object;

    if-ge v13, v4, :cond_1

    .line 29
    new-instance v4, Lp2/e;

    invoke-direct {v4, v12, v13, v8}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v13

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move/from16 v18, v10

    .line 30
    new-instance v10, Lp2/e;

    invoke-direct {v10, v12, v4, v8}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget v12, v5, Lp2/e;->c:I

    .line 32
    :goto_4
    invoke-virtual {v9}, Lu8/k;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v9}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/e;

    .line 33
    iget v4, v4, Lp2/e;->c:I

    if-ne v12, v4, :cond_2

    .line 34
    invoke-virtual {v9}, Lu8/k;->removeLast()Ljava/lang/Object;

    goto :goto_4

    :cond_2
    move-object/from16 v4, v16

    move-object/from16 v8, v17

    move/from16 v10, v18

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move/from16 v18, v10

    if-ge v12, v13, :cond_4

    .line 35
    new-instance v4, Lp2/e;

    invoke-direct {v4, v12, v13, v3}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v13

    .line 36
    :cond_4
    invoke-virtual {v9}, Lu8/k;->k()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/e;

    if-eqz v4, :cond_8

    .line 37
    iget v5, v4, Lp2/e;->c:I

    iget-object v8, v4, Lp2/e;->a:Ljava/lang/Object;

    .line 38
    iget v4, v4, Lp2/e;->b:I

    if-ne v4, v13, :cond_5

    if-ne v5, v15, :cond_5

    .line 39
    invoke-virtual {v9}, Lu8/k;->removeLast()Ljava/lang/Object;

    .line 40
    new-instance v4, Lp2/e;

    check-cast v8, Lp2/s;

    check-cast v14, Lp2/s;

    invoke-virtual {v8, v14}, Lp2/s;->a(Lp2/s;)Lp2/s;

    move-result-object v5

    invoke-direct {v4, v13, v15, v5}, Lp2/e;-><init>(IILjava/lang/Object;)V

    .line 41
    invoke-virtual {v9, v4}, Lu8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-ne v4, v5, :cond_6

    .line 42
    new-instance v10, Lp2/e;

    invoke-direct {v10, v4, v5, v8}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v9}, Lu8/k;->removeLast()Ljava/lang/Object;

    .line 44
    new-instance v4, Lp2/e;

    invoke-direct {v4, v13, v15, v14}, Lp2/e;-><init>(IILjava/lang/Object;)V

    .line 45
    invoke-virtual {v9, v4}, Lu8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    if-lt v5, v15, :cond_7

    .line 46
    new-instance v4, Lp2/e;

    check-cast v8, Lp2/s;

    check-cast v14, Lp2/s;

    invoke-virtual {v8, v14}, Lp2/s;->a(Lp2/s;)Lp2/s;

    move-result-object v5

    invoke-direct {v4, v13, v15, v5}, Lp2/e;-><init>(IILjava/lang/Object;)V

    .line 47
    invoke-virtual {v9, v4}, Lu8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    .line 48
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_8
    new-instance v4, Lp2/e;

    invoke-direct {v4, v13, v15, v14}, Lp2/e;-><init>(IILjava/lang/Object;)V

    .line 50
    invoke-virtual {v9, v4}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    move/from16 v10, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v17, v8

    .line 51
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v12, v4, :cond_b

    invoke-virtual {v9}, Lu8/k;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 52
    invoke-virtual {v9}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/e;

    .line 53
    new-instance v5, Lp2/e;

    .line 54
    iget-object v8, v4, Lp2/e;->a:Ljava/lang/Object;

    iget v4, v4, Lp2/e;->c:I

    .line 55
    invoke-direct {v5, v12, v4, v8}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_7
    invoke-virtual {v9}, Lu8/k;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v9}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/e;

    .line 57
    iget v5, v5, Lp2/e;->c:I

    if-ne v4, v5, :cond_a

    .line 58
    invoke-virtual {v9}, Lu8/k;->removeLast()Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move v12, v4

    goto :goto_6

    .line 59
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v12, v4, :cond_c

    .line 60
    new-instance v4, Lp2/e;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v12, v5, v3}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 62
    new-instance v4, Lp2/e;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .line 63
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v5

    :goto_9
    if-ge v9, v8, :cond_15

    .line 65
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 66
    check-cast v10, Lp2/e;

    .line 67
    iget v11, v10, Lp2/e;->b:I

    iget v12, v10, Lp2/e;->c:I

    .line 68
    new-instance v13, Lp2/g;

    if-eq v11, v12, :cond_e

    .line 69
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "substring(...)"

    invoke-static {v14, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const-string v14, ""

    .line 70
    :goto_a
    new-instance v15, Lp0/e;

    const/4 v5, 0x2

    invoke-direct {v15, v5}, Lp0/e;-><init>(I)V

    invoke-static {v1, v11, v12, v15}, Lp2/h;->a(Lp2/g;IILp0/e;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_f

    move-object/from16 v5, v17

    .line 71
    :cond_f
    invoke-direct {v13, v14, v5}, Lp2/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 72
    iget-object v5, v10, Lp2/e;->a:Ljava/lang/Object;

    .line 73
    check-cast v5, Lp2/s;

    .line 74
    iget v10, v5, Lp2/s;->b:I

    if-nez v10, :cond_10

    .line 75
    iget v10, v3, Lp2/s;->b:I

    .line 76
    iget v15, v5, Lp2/s;->a:I

    move-object/from16 v29, v6

    move-object/from16 v16, v7

    .line 77
    iget-wide v6, v5, Lp2/s;->c:J

    .line 78
    iget-object v1, v5, Lp2/s;->d:La3/q;

    move-object/from16 v23, v1

    .line 79
    iget-object v1, v5, Lp2/s;->e:Lp2/u;

    move-object/from16 v24, v1

    .line 80
    iget-object v1, v5, Lp2/s;->f:La3/i;

    move-object/from16 v25, v1

    .line 81
    iget v1, v5, Lp2/s;->g:I

    move/from16 v26, v1

    .line 82
    iget v1, v5, Lp2/s;->h:I

    .line 83
    iget-object v5, v5, Lp2/s;->i:La3/s;

    .line 84
    new-instance v18, Lp2/s;

    move/from16 v27, v1

    move-object/from16 v28, v5

    move-wide/from16 v21, v6

    move/from16 v20, v10

    move/from16 v19, v15

    invoke-direct/range {v18 .. v28}, Lp2/s;-><init>(IIJLa3/q;Lp2/u;La3/i;IILa3/s;)V

    move-object/from16 v5, v18

    goto :goto_b

    :cond_10
    move-object/from16 v29, v6

    move-object/from16 v16, v7

    .line 85
    :goto_b
    new-instance v1, Lp2/q;

    .line 86
    new-instance v6, Lp2/m0;

    .line 87
    iget-object v7, v2, Lp2/m0;->a:Lp2/e0;

    .line 88
    invoke-virtual {v3, v5}, Lp2/s;->a(Lp2/s;)Lp2/s;

    move-result-object v5

    .line 89
    invoke-direct {v6, v7, v5}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;)V

    .line 90
    iget-object v5, v13, Lp2/g;->l:Ljava/util/List;

    if-nez v5, :cond_11

    move-object/from16 v21, v17

    goto :goto_c

    :cond_11
    move-object/from16 v21, v5

    .line 91
    :goto_c
    iget-object v5, v0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 92
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v10, :cond_14

    .line 94
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 95
    check-cast v15, Lp2/e;

    .line 96
    iget v2, v15, Lp2/e;->b:I

    move-object/from16 v25, v3

    iget v3, v15, Lp2/e;->c:I

    .line 97
    invoke-static {v11, v12, v2, v3}, Lp2/h;->b(IIII)Z

    move-result v18

    if-eqz v18, :cond_13

    if-gt v11, v2, :cond_12

    if-gt v3, v12, :cond_12

    :goto_e
    move/from16 v18, v2

    goto :goto_f

    .line 98
    :cond_12
    const-string v18, "placeholder can not overlap with paragraph."

    .line 99
    invoke-static/range {v18 .. v18}, Lv2/a;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 100
    :goto_f
    new-instance v2, Lp2/e;

    .line 101
    iget-object v15, v15, Lp2/e;->a:Ljava/lang/Object;

    move/from16 v19, v3

    sub-int v3, v18, v11

    move-object/from16 v18, v5

    sub-int v5, v19, v11

    .line 102
    invoke-direct {v2, v3, v5, v15}, Lp2/e;-><init>(IILjava/lang/Object;)V

    .line 103
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    move-object/from16 v18, v5

    :goto_10
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v5, v18

    move-object/from16 v3, v25

    goto :goto_d

    :cond_14
    move-object/from16 v25, v3

    .line 104
    new-instance v18, Lx2/c;

    move-object/from16 v24, p4

    move-object/from16 v23, p5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v19, v14

    invoke-direct/range {v18 .. v24}, Lx2/c;-><init>(Ljava/lang/String;Lp2/m0;Ljava/util/List;Ljava/util/List;Lt2/d;Lb3/c;)V

    move-object/from16 v2, v18

    .line 105
    invoke-direct {v1, v2, v11, v12}, Lp2/q;-><init>(Lx2/c;II)V

    .line 106
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, v16

    move-object/from16 v6, v29

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 107
    :cond_15
    iput-object v4, v0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-void
.end method

.method public static p(Lpb/i;Lnb/a;)I
    .locals 3

    invoke-virtual {p0}, Lpb/i;->L()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpb/i;->getDimension()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lg5/i;

    invoke-direct {v0, p0, p1}, Lg5/i;-><init>(Lpb/i;Lnb/a;)V

    invoke-virtual {v0}, Lg5/i;->n()Lpb/i;

    move-result-object p1

    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result p1

    xor-int/2addr p1, v2

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lpb/i;->getDimension()I

    move-result p1

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lpb/i;->u()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public A()Lbb/d;
    .locals 3

    sget-object v0, Lva/c;->a:Lva/a;

    sget-object v0, Lva/c;->a:Lva/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lva/a;->c:Landroid/content/Context;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "open(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbb/d;

    new-instance v1, Lbb/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lbb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Platform applicationContext not initialized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public B(Ljava/lang/String;Lla/a0;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "method "

    if-nez p2, :cond_1

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PROPPATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "REPORT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, " must have a request body."

    invoke-static {v0, p1, p0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Ll9/a;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    return-void

    :cond_2
    const-string p0, " must not have a request body."

    invoke-static {v0, p1, p0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method.isEmpty() == true"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroidx/lifecycle/a1;->A()Lbb/d;

    move-result-object v0

    new-instance v1, Lbb/p;

    invoke-direct {v1, v0}, Lbb/p;-><init>(Lbb/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lbb/p;->readInt()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lbb/p;->f(J)Lbb/j;

    move-result-object v0

    invoke-virtual {v1}, Lbb/p;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lbb/p;->f(J)Lbb/j;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Lbb/p;->close()V

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-static {v1, v0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    iget-object p0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public D(JLa9/c;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v1, Lhd/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lhd/o;-><init>(Landroidx/lifecycle/a1;JLy8/c;)V

    invoke-static {v0, v1, p3}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public E(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx9/x;

    if-eqz v0, :cond_0

    check-cast v0, Lx9/l0;

    invoke-virtual {v0, p1}, Lx9/l0;->j(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx9/x;

    if-eqz p0, :cond_1

    check-cast p0, Lx9/l0;

    invoke-virtual {p0, p1}, Lx9/l0;->j(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 3

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.reflect.KClass<*>, kotlin.Any>"

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    invoke-static {p0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lj9/b0;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    invoke-static {p0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lj9/b0;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1}, Lj9/f;->d(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Value cannot be cast to "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lj9/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public G(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "substring(...)"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    invoke-static {p1, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lla/q;

    invoke-direct {v0}, Lla/q;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lla/q;->c(Lla/r;Ljava/lang/String;)V

    invoke-virtual {v0}, Lla/q;->a()Lla/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    return-void
.end method

.method public H(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v1, Lad/t0;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, p1, v2, v3}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v1, p2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public a()Z
    .locals 4

    iget-object p0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/q;

    iget-object v3, v3, Lp2/q;->a:Lx2/c;

    invoke-virtual {v3}, Lx2/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object v1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v1, Lmb/r5;

    iget-object v2, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v3, Lg5/l;

    iget-object p0, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast p0, Lmb/e1;

    invoke-virtual {v0, v1, v2, v3, p0}, Lmb/a7;->c0(Lmb/r5;Ljava/util/List;Lg5/l;Lmb/e1;)Z

    move-result p0

    return p0
.end method

.method public c()F
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public d()F
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public e(Ls5/k;Lb6/i;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v0, [Lf6/f;

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast p0, [Lu6/z;

    aget-object p0, p0, p4

    invoke-virtual {p0, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p0

    invoke-virtual {p0}, Lu6/x;->z0()Ls5/n;

    move-result-object v2

    sget-object v3, Ls5/n;->F:Ls5/n;

    if-ne v2, v3, :cond_0

    aget-object p0, v0, p4

    iget-object p0, p0, Lf6/f;->a:Le6/y;

    invoke-virtual {p0, p3, v1}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v1

    invoke-virtual {v1}, Lu6/z;->k0()V

    invoke-virtual {v1, p5}, Lu6/z;->q0(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {v1}, Lu6/z;->P()V

    invoke-virtual {v1, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p0

    invoke-virtual {p0}, Lu6/x;->z0()Ls5/n;

    aget-object p1, v0, p4

    iget-object p1, p1, Lf6/f;->a:Le6/y;

    invoke-virtual {p1, p0, p2, p3}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Internal error in external Type Id handling: `null` type id passed"

    invoke-virtual {p2, p1, p0}, Lb6/i;->x0(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public f(Ls5/k;Lb6/i;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v0, [Lu6/z;

    iget-object v1, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v1, [Lf6/f;

    aget-object v1, v1, p6

    iget-object v1, v1, Lf6/f;->c:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    aget-object p3, v0, p6

    if-eqz p3, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p5

    move v5, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/lifecycle/a1;->e(Ls5/k;Lb6/i;Ljava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x0

    aput-object p0, v0, v5

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v6, p5

    move v5, p6

    iget-object p0, v1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aput-object v6, p0, v5

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public g(Lz0/b;Li9/a;)Lr0/f;
    .locals 7

    new-instance v0, La6/k;

    invoke-direct {v0}, La6/k;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, La6/k;->m:I

    iget-object v1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lz0/b;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lr0/e;->m:Lc2/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v2, Lz0/a;

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7ffffff

    and-int/2addr v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    ushr-int/lit8 v4, v4, 0x1b

    and-int/lit8 v4, v4, 0xf

    iput v4, v0, La6/k;->m:I

    iget-object v4, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v4, Lk/h0;

    invoke-virtual {v4, p1}, Lk/h0;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_6

    if-eqz p2, :cond_6

    :try_start_2
    invoke-interface {p2}, Li9/a;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    iget-object v1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    :goto_1
    monitor-exit v1

    goto :goto_4

    :cond_3
    :try_start_4
    iput-object p2, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v2, Lk/h0;

    iget-object v4, v2, Lk/h0;->a:[Ljava/lang/Object;

    iget v2, v2, Lk/h0;->b:I

    :goto_2
    if-ge v5, v2, :cond_4

    aget-object v6, v4, v5

    check-cast v6, Lz0/b;

    invoke-virtual {v6, p2}, Lz0/b;->b(Ljava/lang/Throwable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_4
    iget-object p2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast p2, Lk/h0;

    invoke-virtual {p2}, Lk/h0;->d()V

    iget-object p2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p2, Lz0/a;

    :cond_5
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    ushr-int/lit8 v4, v2, 0x1b

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v4, v3

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x1b

    invoke-virtual {p2, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_5

    goto :goto_1

    :goto_3
    monitor-exit v1

    throw p0

    :cond_6
    :goto_4
    new-instance p2, Lg5/e;

    new-instance v1, Lb0/c3;

    const/16 v2, 0x13

    invoke-direct {v1, p1, p0, v0, v2}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p2, v1}, Lg5/e;-><init>(Lb0/c3;)V

    return-object p2

    :goto_5
    monitor-exit v1

    throw p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/z0;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v0, Lsc/h;

    iget-object v0, v0, Lsc/h;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/MainActivity;

    invoke-virtual {v0}, Lb/o;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v1, Lsc/h;

    iget-object v1, v1, Lsc/h;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/MainActivity;

    invoke-virtual {v1}, Lb/o;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c1;

    move-result-object v1

    iget-object v2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v2, Lsc/h;

    iget-object v2, v2, Lsc/h;->m:Ljava/lang/Object;

    check-cast v2, Lua/nav/MainActivity;

    invoke-virtual {v2}, Lb/o;->getDefaultViewModelCreationExtras()Ld4/b;

    move-result-object v2

    const-string v3, "factory"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lg5/i;

    invoke-direct {v3, v0, v1, v2}, Lg5/i;-><init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V

    iget-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Lj9/f;

    invoke-virtual {v0}, Lj9/f;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lg5/i;->u(Lj9/f;Ljava/lang/String;)Landroidx/lifecycle/z0;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p0, Lc5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ly4/s;->t(Ljava/lang/String;)V

    invoke-static {p2, p1}, Ly4/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ly4/s;->i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(I)Ljava/text/Bidi;
    .locals 14

    iget-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Landroid/text/Layout;

    iget-object v1, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v3, [Z

    aget-boolean v4, v3, p1

    if-eqz v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/Bidi;

    return-object p0

    :cond_0
    const/4 v4, 0x0

    if-nez p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int v11, v1, v5

    iget-object v6, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v6, [C

    if-eqz v6, :cond_3

    array-length v7, v6

    if-ge v7, v11, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v7, v6

    goto :goto_3

    :cond_3
    :goto_2
    new-array v6, v11, [C

    goto :goto_1

    :goto_3
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v5, v1, v7, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    invoke-static {v7, v4, v11}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v1

    const/4 v5, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a1;->t(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    move v12, v13

    goto :goto_4

    :cond_4
    move v12, v4

    :goto_4
    new-instance v6, Ljava/text/Bidi;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v12}, Ljava/text/Bidi;-><init>([CI[BIII)V

    invoke-virtual {v6}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne v0, v13, :cond_6

    :cond_5
    move-object v6, v5

    :cond_6
    invoke-virtual {v2, p1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aput-boolean v13, v3, p1

    if-eqz v6, :cond_8

    iget-object p1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast p1, [C

    if-ne v7, p1, :cond_7

    move-object v7, v5

    goto :goto_5

    :cond_7
    move-object v7, p1

    :cond_8
    :goto_5
    iput-object v7, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-object v6
.end method

.method public j()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    return-void
.end method

.method public k(Ls5/k;Lb6/i;Lf6/z;Lf6/v;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v4, Lb6/l;

    iget-object v5, v0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v5, [Lu6/z;

    iget-object v6, v0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v6, [Lf6/f;

    array-length v7, v6

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v7, :cond_c

    iget-object v11, v0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    aget-object v11, v11, v10

    aget-object v12, v6, v10

    const/4 v13, 0x0

    if-nez v11, :cond_5

    aget-object v11, v5, v10

    if-eqz v11, :cond_9

    iget-object v11, v11, Lu6/z;->t:Lu6/y;

    invoke-virtual {v11, v9}, Lu6/y;->c(I)Ls5/n;

    move-result-object v11

    sget-object v14, Ls5/n;->F:Ls5/n;

    if-ne v11, v14, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v11, v12, Lf6/f;->b:Ln6/d;

    move-object v14, v11

    check-cast v14, Lo6/a;

    iget-object v14, v14, Lo6/a;->o:Lb6/l;

    if-eqz v14, :cond_3

    check-cast v11, Lo6/a;

    iget-object v14, v11, Lo6/a;->o:Lb6/l;

    sget-object v15, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez v14, :cond_1

    move-object v14, v13

    goto :goto_1

    :cond_1
    iget-object v14, v14, Lb6/l;->o:Ljava/lang/Class;

    :goto_1
    if-nez v14, :cond_2

    move-object v11, v13

    goto :goto_2

    :cond_2
    iget-object v11, v11, Lo6/a;->l:Lo6/p;

    invoke-virtual {v11, v14, v13}, Lo6/p;->d(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    iget-object v0, v12, Lf6/f;->a:Le6/y;

    iget-object v0, v0, Le6/y;->n:Lb6/i0;

    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    iget-object v1, v12, Lf6/f;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lb6/l;->o:Ljava/lang/Class;

    const-string v4, "Missing external type id property \'%s\'"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lb6/i;->t:Ls5/k;

    new-instance v4, Lh6/b;

    invoke-direct {v4, v2, v1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v4, v3, v0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    throw v4

    :cond_5
    :goto_2
    aget-object v14, v5, v10

    if-eqz v14, :cond_7

    invoke-virtual {v14, v1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object v14

    invoke-virtual {v14}, Lu6/x;->z0()Ls5/n;

    move-result-object v15

    sget-object v9, Ls5/n;->F:Ls5/n;

    if-ne v15, v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v9

    invoke-virtual {v9}, Lu6/z;->k0()V

    invoke-virtual {v9, v11}, Lu6/z;->q0(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {v9}, Lu6/z;->P()V

    invoke-virtual {v9, v1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object v9

    invoke-virtual {v9}, Lu6/x;->z0()Ls5/n;

    aget-object v13, v6, v10

    iget-object v13, v13, Lf6/f;->a:Le6/y;

    invoke-virtual {v13, v9, v2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v13

    :goto_3
    aput-object v13, v8, v10

    goto :goto_4

    :cond_7
    sget-object v9, Lb6/j;->A:Lb6/j;

    invoke-virtual {v2, v9}, Lb6/i;->n0(Lb6/j;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v2, v1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v9

    invoke-virtual {v9}, Lu6/z;->k0()V

    invoke-virtual {v9, v11}, Lu6/z;->q0(Ljava/lang/String;)V

    invoke-virtual {v9}, Lu6/z;->P()V

    invoke-virtual {v9, v1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object v9

    invoke-virtual {v9}, Lu6/x;->z0()Ls5/n;

    aget-object v13, v6, v10

    iget-object v13, v13, Lf6/f;->a:Le6/y;

    invoke-virtual {v13, v9, v2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v10

    :goto_4
    iget-object v9, v12, Lf6/f;->a:Le6/y;

    invoke-virtual {v9}, Le6/y;->o()I

    move-result v13

    if-ltz v13, :cond_9

    aget-object v13, v8, v10

    invoke-virtual {v3, v9, v13}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    iget-object v9, v12, Lf6/f;->d:Le6/y;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Le6/y;->o()I

    move-result v12

    if-ltz v12, :cond_9

    iget-object v12, v9, Le6/y;->o:Lb6/l;

    const-class v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v12

    invoke-virtual {v12, v11}, Lu6/z;->q0(Ljava/lang/String;)V

    invoke-virtual {v9}, Le6/y;->s()Lb6/n;

    move-result-object v11

    iget-object v13, v12, Lu6/z;->m:Ls5/o;

    invoke-virtual {v12, v13}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object v12

    invoke-virtual {v12}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v11, v12, v2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v11

    :goto_5
    invoke-virtual {v3, v9, v11}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v0, v12, Lf6/f;->a:Le6/y;

    iget-object v0, v0, Le6/y;->n:Lb6/i0;

    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    aget-object v1, v6, v10

    iget-object v1, v1, Lf6/f;->c:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v4, Lb6/l;->o:Ljava/lang/Class;

    const-string v4, "Missing property \'%s\' for external type id \'%s\'"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lb6/i;->t:Ls5/k;

    new-instance v4, Lh6/b;

    invoke-direct {v4, v2, v1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v0, :cond_b

    invoke-virtual {v4, v3, v0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    throw v4

    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v0

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_e

    aget-object v1, v6, v9

    iget-object v1, v1, Lf6/f;->a:Le6/y;

    invoke-virtual {v1}, Le6/y;->o()I

    move-result v2

    if-gez v2, :cond_d

    aget-object v2, v8, v9

    invoke-virtual {v1, v0, v2}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_e
    return-object v0
.end method

.method public l(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Lb6/l;

    iget-object v1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v1, [Lu6/z;

    iget-object v2, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, [Lf6/f;

    array-length v3, v2

    const/4 v4, 0x0

    move v9, v4

    :goto_0
    if-ge v9, v3, :cond_d

    iget-object v5, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    aget-object v6, v2, v9

    if-nez v5, :cond_9

    aget-object v5, v1, v9

    if-nez v5, :cond_0

    :goto_1
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    goto/16 :goto_6

    :cond_0
    iget-object v7, v5, Lu6/z;->t:Lu6/y;

    invoke-virtual {v7, v4}, Lu6/y;->c(I)Ls5/n;

    move-result-object v7

    iget-boolean v7, v7, Ls5/n;->s:Z

    if-eqz v7, :cond_1

    invoke-virtual {v5, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object v5

    invoke-virtual {v5}, Lu6/x;->z0()Ls5/n;

    iget-object v7, v6, Lf6/f;->a:Le6/y;

    iget-object v8, v7, Le6/y;->o:Lb6/l;

    invoke-static {v8, v5}, Ln6/d;->a(Lb6/l;Ls5/k;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v7, p3, v5}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v5, v6, Lf6/f;->b:Ln6/d;

    iget-object v7, v6, Lf6/f;->c:Ljava/lang/String;

    iget-object v6, v6, Lf6/f;->a:Le6/y;

    iget-object v6, v6, Le6/y;->n:Lb6/i0;

    move-object v8, v5

    check-cast v8, Lo6/a;

    iget-object v8, v8, Lo6/a;->o:Lb6/l;

    if-eqz v8, :cond_7

    check-cast v5, Lo6/a;

    iget-object v8, v5, Lo6/a;->o:Lb6/l;

    sget-object v10, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const/4 v10, 0x0

    if-nez v8, :cond_2

    move-object v8, v10

    goto :goto_2

    :cond_2
    iget-object v8, v8, Lb6/l;->o:Ljava/lang/Class;

    :goto_2
    if-nez v8, :cond_3

    move-object v5, v10

    goto :goto_3

    :cond_3
    iget-object v5, v5, Lo6/a;->l:Lo6/p;

    invoke-virtual {v5, v8, v10}, Lo6/p;->d(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_5

    :cond_4
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v5

    move-object v5, p0

    goto/16 :goto_5

    :cond_5
    iget-object p0, v6, Lb6/i0;->l:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v0, Lb6/l;->o:Ljava/lang/Class;

    const-string v0, "Invalid default type id for property \'%s\': `null` returned by TypeIdResolver"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lb6/i;->t:Ls5/k;

    new-instance v0, Lh6/b;

    invoke-direct {v0, p2, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    invoke-virtual {v0, p3, p0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    throw v0

    :cond_7
    iget-object p0, v6, Lb6/i0;->l:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v0, Lb6/l;->o:Ljava/lang/Class;

    const-string v0, "Missing external type id property \'%s\' (and no \'defaultImpl\' specified)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lb6/i;->t:Ls5/k;

    new-instance v0, Lh6/b;

    invoke-direct {v0, p2, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz p0, :cond_8

    invoke-virtual {v0, p3, p0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    throw v0

    :cond_9
    aget-object v7, v1, v9

    if-nez v7, :cond_4

    iget-object p0, v6, Lf6/f;->a:Le6/y;

    iget-object p1, p0, Lj6/y;->l:Lb6/h0;

    iget-object p1, p1, Lb6/h0;->l:Ljava/lang/Boolean;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    sget-object p1, Lb6/j;->A:Lb6/j;

    invoke-virtual {p2, p1}, Lb6/i;->n0(Lb6/j;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    :goto_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Le6/y;->n:Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    iget-object p3, v6, Lf6/f;->c:Ljava/lang/String;

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Missing property \'%s\' for external type id \'%s\'"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lb6/i;->t:Ls5/k;

    new-instance v0, Lh6/b;

    invoke-direct {v0, p2, p3}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz p0, :cond_c

    invoke-virtual {v0, p1, p0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    throw v0

    :goto_5
    invoke-virtual/range {v5 .. v10}, Landroidx/lifecycle/a1;->e(Ls5/k;Lb6/i;Ljava/lang/Object;ILjava/lang/String;)V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object p0, v5

    move-object p1, v6

    move-object p2, v7

    move-object p3, v8

    goto/16 :goto_0

    :cond_d
    :goto_7
    return-void
.end method

.method public m(I)V
    .locals 9

    iget-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, [Lpa/y;

    aget-object v0, v0, p1

    iget-object v0, v0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ltb/a;

    iget-object v5, v4, Le1/b;->a:Ljava/lang/Object;

    check-cast v5, Lq3/k;

    invoke-virtual {v5, p1}, Lq3/k;->j(I)I

    move-result v5

    iget-object v4, v4, Ltb/a;->c:Lk0/l;

    iget-object v4, v4, Lk0/l;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltb/c;

    iget-object v7, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v7, Lg5/c;

    iget-object v6, v6, Ltb/c;->l:Lpb/a;

    invoke-virtual {v7, v6}, Lg5/c;->e(Lpb/a;)Ltb/d;

    move-result-object v6

    check-cast v6, Lfc/b;

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    iget-object v8, v6, Le1/b;->a:Ljava/lang/Object;

    check-cast v8, Lq3/k;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8, p1}, Lq3/k;->j(I)I

    move-result v8

    if-eqz v8, :cond_4

    if-eq v8, v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v2

    :cond_4
    :goto_1
    iget-object v6, v6, Le1/b;->a:Ljava/lang/Object;

    check-cast v6, Lq3/k;

    iget-object v6, v6, Lq3/k;->m:Ljava/lang/Object;

    check-cast v6, [Lq5/a;

    aget-object v6, v6, p1

    iget-object v6, v6, Lq5/a;->m:[I

    aput v7, v6, v2

    goto :goto_0

    :cond_5
    iget-object v7, v6, Le1/b;->a:Ljava/lang/Object;

    check-cast v7, Lq3/k;

    iget-object v7, v7, Lq3/k;->m:Ljava/lang/Object;

    check-cast v7, [Lq5/a;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lq5/a;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Le1/b;->a:Ljava/lang/Object;

    check-cast v7, Lq3/k;

    if-nez v7, :cond_6

    new-instance v7, Lq3/k;

    invoke-direct {v7, p1, v2}, Lq3/k;-><init>(II)V

    iput-object v7, v6, Le1/b;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v6, v7, Lq3/k;->m:Ljava/lang/Object;

    check-cast v6, [Lq5/a;

    aget-object v6, v6, p1

    iget-object v6, v6, Lq5/a;->m:[I

    aput v2, v6, v2

    goto :goto_0

    :cond_7
    return-void
.end method

.method public n(I)V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, [Lpa/y;

    aget-object v0, v0, p1

    iget-object v0, v0, Lpa/y;->d:Ljava/lang/Object;

    check-cast v0, Lg5/c;

    invoke-virtual {v0}, Lg5/c;->j()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltb/d;

    iget-object v2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v2, Lg5/c;

    iget-object v3, v1, Ltb/d;->b:Lpb/a;

    invoke-virtual {v2, v3}, Lg5/c;->e(Lpb/a;)Ltb/d;

    move-result-object v2

    iget-object v1, v1, Le1/b;->a:Ljava/lang/Object;

    check-cast v1, Lq3/k;

    invoke-virtual {v1, p1}, Lq3/k;->j(I)I

    move-result v1

    iget-object v3, v2, Le1/b;->a:Ljava/lang/Object;

    check-cast v3, Lq3/k;

    if-nez v3, :cond_0

    new-instance v3, Lq3/k;

    invoke-direct {v3, p1, v1}, Lq3/k;-><init>(II)V

    iput-object v3, v2, Le1/b;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lq3/k;->m:Ljava/lang/Object;

    check-cast v2, [Lq5/a;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    iget-object v2, v2, Lq5/a;->m:[I

    aput v1, v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o(Li9/c;)V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v1, Lk/h0;

    iget-object v2, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v2, Lk/h0;

    iput-object v2, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p0, Lz0/a;

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    ushr-int/lit8 v3, v2, 0x1b

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x1b

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p0, v1, Lk/h0;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-virtual {v1, v2}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lk/h0;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public q(IZ)F
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast p0, Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    return p0
.end method

.method public r(IZZ)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v3, Landroid/text/Layout;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p2}, Landroidx/lifecycle/a1;->q(IZ)F

    move-result v0

    return v0

    :cond_0
    invoke-static {v3, v1, v2}, Lq2/g;->d(Landroid/text/Layout;IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    invoke-virtual/range {p0 .. p2}, Landroidx/lifecycle/a1;->q(IZ)F

    move-result v0

    return v0

    :cond_1
    if-eqz v1, :cond_22

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v1, v7, :cond_2

    goto/16 :goto_11

    :cond_2
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/a1;->s(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a1;->t(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, -0x1

    const/4 v10, 0x1

    if-ne v7, v8, :cond_3

    move v7, v10

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v0, v6, v5}, Landroidx/lifecycle/a1;->z(II)I

    move-result v6

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a1;->t(I)I

    move-result v11

    sub-int v12, v5, v11

    sub-int v11, v6, v11

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a1;->i(I)Ljava/text/Bidi;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v12, v11}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v11

    if-ne v11, v10, :cond_6

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_e

    :cond_6
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v11

    new-array v12, v11, [Lq2/e;

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_8

    new-instance v14, Lq2/e;

    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v16

    add-int v8, v16, v5

    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v16

    rem-int/lit8 v9, v16, 0x2

    if-ne v9, v10, :cond_7

    move v9, v10

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    invoke-direct {v14, v15, v8, v9}, Lq2/e;-><init>(IIZ)V

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v8, -0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v8

    new-array v9, v8, [B

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v8, :cond_9

    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    invoke-static {v9, v13, v12, v13, v11}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    if-ne v1, v5, :cond_12

    move v0, v13

    :goto_5
    if-ge v0, v11, :cond_b

    aget-object v2, v12, v0

    iget v2, v2, Lq2/e;->a:I

    if-ne v2, v1, :cond_a

    move v8, v0

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v8, -0x1

    :goto_6
    aget-object v0, v12, v8

    if-nez p2, :cond_d

    iget-boolean v0, v0, Lq2/e;->c:Z

    if-ne v7, v0, :cond_c

    goto :goto_7

    :cond_c
    move v9, v7

    goto :goto_8

    :cond_d
    :goto_7
    if-nez v7, :cond_e

    move v9, v10

    goto :goto_8

    :cond_e
    move v9, v13

    :goto_8
    if-nez v8, :cond_f

    if-eqz v9, :cond_f

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_f
    sub-int/2addr v11, v10

    if-ne v8, v11, :cond_10

    if-nez v9, :cond_10

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_10
    if-eqz v9, :cond_11

    sub-int/2addr v8, v10

    aget-object v0, v12, v8

    iget v0, v0, Lq2/e;->a:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_11
    add-int/2addr v8, v10

    aget-object v0, v12, v8

    iget v0, v0, Lq2/e;->a:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_12
    if-le v1, v6, :cond_13

    invoke-virtual {v0, v1, v5}, Landroidx/lifecycle/a1;->z(II)I

    move-result v0

    goto :goto_9

    :cond_13
    move v0, v1

    :goto_9
    move v1, v13

    :goto_a
    if-ge v1, v11, :cond_15

    aget-object v2, v12, v1

    iget v2, v2, Lq2/e;->b:I

    if-ne v2, v0, :cond_14

    move v8, v1

    goto :goto_b

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v8, -0x1

    :goto_b
    aget-object v0, v12, v8

    if-nez p2, :cond_18

    iget-boolean v0, v0, Lq2/e;->c:Z

    if-ne v7, v0, :cond_16

    goto :goto_c

    :cond_16
    if-nez v7, :cond_17

    move v9, v10

    goto :goto_d

    :cond_17
    move v9, v13

    goto :goto_d

    :cond_18
    :goto_c
    move v9, v7

    :goto_d
    if-nez v8, :cond_19

    if-eqz v9, :cond_19

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_19
    sub-int/2addr v11, v10

    if-ne v8, v11, :cond_1a

    if-nez v9, :cond_1a

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_1a
    if-eqz v9, :cond_1b

    sub-int/2addr v8, v10

    aget-object v0, v12, v8

    iget v0, v0, Lq2/e;->b:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_1b
    add-int/2addr v8, v10

    aget-object v0, v12, v8

    iget v0, v0, Lq2/e;->b:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :goto_e
    invoke-virtual {v3, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-nez p2, :cond_1c

    if-ne v7, v0, :cond_1e

    :cond_1c
    if-nez v7, :cond_1d

    move v7, v10

    goto :goto_f

    :cond_1d
    move v7, v13

    :cond_1e
    :goto_f
    if-ne v1, v5, :cond_1f

    move v9, v7

    goto :goto_10

    :cond_1f
    if-nez v7, :cond_20

    move v9, v10

    goto :goto_10

    :cond_20
    move v9, v13

    :goto_10
    if-eqz v9, :cond_21

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_21
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_22
    :goto_11
    invoke-virtual/range {p0 .. p2}, Landroidx/lifecycle/a1;->q(IZ)F

    move-result v0

    return v0
.end method

.method public s(IZ)I
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lg5/f;->m(Ljava/util/ArrayList;Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-eqz p2, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_1

    return p2

    :cond_1
    return v0
.end method

.method public t(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public u(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 10

    iget-object v4, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v4, [Lf6/f;

    iget-object v5, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Lu6/z;

    iget-object v5, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iget-object v7, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v8, v7, Ljava/util/List;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v4, v4, v8

    iget-object v4, v4, Lf6/f;->c:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v2, v5, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v2, v5, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v2

    invoke-virtual {v2, p1}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v2, v6, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v2, v6, v1

    goto :goto_1

    :cond_2
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    iget-object v4, v4, Lf6/f;->c:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    if-eqz p3, :cond_4

    aget-object v3, v6, v7

    if-eqz v3, :cond_4

    :goto_2
    move-object v3, v5

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v3

    invoke-virtual {v3, p1}, Lu6/z;->J0(Ls5/k;)V

    aput-object v3, v6, v7

    if-eqz p3, :cond_4

    aget-object v3, v5, v7

    if-eqz v3, :cond_4

    goto :goto_2

    :goto_3
    aget-object v5, v3, v7

    const/4 v8, 0x0

    aput-object v8, v3, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/lifecycle/a1;->e(Ls5/k;Lb6/i;Ljava/lang/Object;ILjava/lang/String;)V

    aput-object v8, v6, v4

    :cond_4
    return v9
.end method

.method public v(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v6

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/lifecycle/a1;->f(Ls5/k;Lb6/i;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroidx/lifecycle/a1;->f(Ls5/k;Lb6/i;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p0, Lc5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ly4/s;->t(Ljava/lang/String;)V

    invoke-static {p2, p1}, Ly4/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc5/o;->m(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ly4/s;->i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x(Ljava/util/ArrayList;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ltb/b;

    iget-object v3, p0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v3, Lg5/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Ltb/b;->n:Lpb/a;

    invoke-virtual {v3, v4}, Lg5/c;->e(Lpb/a;)Ltb/d;

    move-result-object v3

    iget-object v3, v3, Ltb/d;->c:Lg5/m;

    iget-object v4, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfc/a;

    if-nez v5, :cond_0

    new-instance v5, Lfc/a;

    iget-object v6, v2, Ltb/b;->l:Ltb/a;

    iget-object v7, v2, Ltb/b;->n:Lpb/a;

    iget-object v8, v2, Ltb/b;->o:Lpb/a;

    new-instance v9, Lq3/k;

    invoke-virtual {v2}, Ltb/b;->b()Lq3/k;

    move-result-object v10

    invoke-direct {v9, v10}, Lq3/k;-><init>(Lq3/k;)V

    invoke-direct {v5, v6, v7, v8, v9}, Ltb/b;-><init>(Ltb/a;Lpb/a;Lpb/a;Lq3/k;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lfc/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Lg5/m;->n:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v3, v5, Lfc/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public y(II)V
    .locals 10

    iget-object v0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, [Lpa/y;

    aget-object p1, v0, p1

    iget-object p1, p1, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ltb/a;

    iget-boolean v5, v4, Ltb/a;->e:Z

    if-eqz v5, :cond_0

    aget-object v5, v0, p2

    iget-object v5, v5, Lpa/y;->e:Ljava/lang/Object;

    check-cast v5, Lpb/i;

    invoke-virtual {v5}, Lpb/i;->getDimension()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v6, Lnb/b;

    iget-object v7, v4, Ltb/a;->b:[Lpb/a;

    array-length v8, v7

    if-lez v8, :cond_1

    aget-object v7, v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7, v5}, Lnb/b;->b(Lpb/a;Lpb/i;)I

    move-result v5

    iget-object v6, v4, Le1/b;->a:Ljava/lang/Object;

    check-cast v6, Lq3/k;

    iget-object v6, v6, Lq3/k;->m:Ljava/lang/Object;

    check-cast v6, [Lq5/a;

    aget-object v6, v6, p2

    move v7, v2

    :goto_2
    iget-object v8, v6, Lq5/a;->m:[I

    array-length v9, v8

    if-ge v7, v9, :cond_3

    aput v5, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v4, Le1/b;->a:Ljava/lang/Object;

    check-cast v5, Lq3/k;

    iget-object v5, v5, Lq3/k;->m:Ljava/lang/Object;

    check-cast v5, [Lq5/a;

    aget-object v5, v5, p2

    move v6, v2

    :goto_3
    iget-object v7, v5, Lq5/a;->m:[I

    array-length v8, v7

    if-ge v6, v8, :cond_3

    const/4 v8, 0x2

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v5, p0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public z(II)I
    .locals 2

    :goto_0
    if-le p1, p2, :cond_3

    iget-object v0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1680

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lj9/n;->h(II)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v1, 0x200a

    invoke-static {v0, v1}, Lj9/n;->h(II)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x2007

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x205f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method
