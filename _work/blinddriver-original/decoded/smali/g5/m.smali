.class public final Lg5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/e;
.implements Lid/d1;
.implements Lmb/e7;
.implements Lmb/f7;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg5/m;->l:I

    sparse-switch p1, :sswitch_data_0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p1, Lb0/l1;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lb0/l1;-><init>(I)V

    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 49
    new-instance p1, Lb0/l1;

    invoke-direct {p1, v0}, Lb0/l1;-><init>(I)V

    iput-object p1, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 50
    new-instance p1, Lb0/l1;

    invoke-direct {p1, v0}, Lb0/l1;-><init>(I)V

    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void

    .line 51
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object p1, Lk/t0;->a:[J

    .line 53
    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    .line 54
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    return-void

    .line 55
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance p1, Lwa/e;

    const/4 v0, 0x1

    .line 57
    invoke-direct {p1, v0}, Lwa/e;-><init>(I)V

    .line 58
    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lg5/m;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x16

    iput v0, p0, Lg5/m;->l:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 41
    sget-object v0, Lt8/h;->m:Lt8/h;

    new-instance v1, Lc2/l0;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    iput-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 42
    new-instance v0, Lq3/k;

    invoke-direct {v0, p1}, Lq3/k;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lg5/m;->l:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    .line 24
    iput-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lg5/m;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg5/m;->l:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 28
    new-instance v0, Lg5/b;

    const/4 v1, 0x4

    .line 29
    invoke-direct {v0, p1, v1}, Lg5/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 30
    new-instance v0, Lg5/h;

    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 32
    iput-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 33
    new-instance v0, Lg5/h;

    const/4 v1, 0x3

    .line 34
    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 35
    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb6/l;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg5/m;->l:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf2/t1;Lj8/c;Lk8/d;)V
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const/16 v0, 0x10

    iput v0, p0, Lg5/m;->l:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lg5/m;->o:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v9, p3

    move v0, v8

    move v2, v0

    .line 75
    :goto_0
    sget-object v10, Lj8/a;->q:Lj8/a;

    const/4 v11, 0x1

    if-eqz v9, :cond_7

    iget v4, v9, Lk8/d;->c:I

    .line 76
    iget v3, v9, Lk8/d;->d:I

    add-int v5, v0, v3

    .line 77
    iget-object v12, v9, Lk8/d;->e:Lk8/d;

    move v0, v2

    .line 78
    iget-object v2, v9, Lk8/d;->a:Lj8/a;

    .line 79
    sget-object v3, Lj8/a;->p:Lj8/a;

    if-ne v2, v3, :cond_0

    if-nez v12, :cond_0

    if-nez v4, :cond_1

    :cond_0
    if-eqz v12, :cond_2

    .line 80
    iget v3, v12, Lk8/d;->c:I

    if-eq v4, v3, :cond_2

    :cond_1
    move v13, v11

    goto :goto_1

    :cond_2
    move v13, v8

    :goto_1
    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move v11, v0

    :goto_2
    if-eqz v12, :cond_5

    .line 81
    iget-object v0, v12, Lk8/d;->a:Lj8/a;

    if-ne v0, v2, :cond_5

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    move v14, v5

    goto :goto_4

    .line 82
    :cond_5
    :goto_3
    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    new-instance v0, Lk8/e;

    .line 83
    iget v3, v9, Lk8/d;->b:I

    move-object v1, p0

    .line 84
    invoke-direct/range {v0 .. v5}, Lk8/e;-><init>(Lg5/m;Lj8/a;III)V

    invoke-virtual {v14, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v14, v8

    :goto_4
    if-eqz v13, :cond_6

    .line 85
    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;

    new-instance v0, Lk8/e;

    .line 86
    iget v3, v9, Lk8/d;->b:I

    .line 87
    iget v4, v9, Lk8/d;->c:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v10

    .line 88
    invoke-direct/range {v0 .. v5}, Lk8/e;-><init>(Lg5/m;Lj8/a;III)V

    invoke-virtual {v13, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    move v2, v11

    move-object v9, v12

    move v0, v14

    goto :goto_0

    :cond_7
    move v0, v2

    move-object v2, v10

    .line 89
    iget-boolean v3, v6, Lf2/t1;->a:Z

    iget v6, v6, Lf2/t1;->b:I

    if-eqz v3, :cond_a

    .line 90
    iget-object v3, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk8/e;

    if-eqz v3, :cond_8

    .line 91
    iget-object v3, v3, Lk8/e;->a:Lj8/a;

    if-eq v3, v2, :cond_8

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/ArrayList;

    new-instance v0, Lk8/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lk8/e;-><init>(Lg5/m;Lj8/a;III)V

    invoke-virtual {v9, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    :cond_8
    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk8/e;

    .line 94
    iget-object v3, p0, Lg5/m;->m:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Ljava/util/ArrayList;

    .line 95
    iget-object v0, v0, Lk8/e;->a:Lj8/a;

    if-eq v0, v2, :cond_9

    goto :goto_5

    :cond_9
    move v8, v11

    .line 96
    :goto_5
    new-instance v0, Lk8/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v2, Lj8/a;->s:Lj8/a;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lk8/e;-><init>(Lg5/m;Lj8/a;III)V

    invoke-virtual {v9, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    :cond_a
    iget v0, v7, Lj8/c;->a:I

    const/16 v2, 0x1a

    const/16 v3, 0x9

    if-gt v0, v3, :cond_b

    move v4, v11

    goto :goto_6

    :cond_b
    if-gt v0, v2, :cond_c

    const/4 v4, 0x2

    goto :goto_6

    :cond_c
    const/4 v4, 0x3

    .line 98
    :goto_6
    invoke-static {v4}, Landroidx/fragment/app/t1;->d(I)I

    move-result v4

    if-eqz v4, :cond_e

    if-eq v4, v11, :cond_d

    const/16 v11, 0x1b

    const/16 v2, 0x28

    goto :goto_7

    :cond_d
    const/16 v11, 0xa

    goto :goto_7

    :cond_e
    move v2, v3

    .line 99
    :goto_7
    invoke-virtual {p0, v7}, Lg5/m;->l(Lj8/c;)I

    move-result v3

    :goto_8
    if-ge v0, v2, :cond_f

    .line 100
    invoke-static {v0}, Lj8/c;->a(I)Lj8/c;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lk8/b;->c(ILj8/c;I)Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    if-le v0, v11, :cond_10

    add-int/lit8 v2, v0, -0x1

    .line 101
    invoke-static {v2}, Lj8/c;->a(I)Lj8/c;

    move-result-object v2

    invoke-static {v3, v2, v6}, Lk8/b;->c(ILj8/c;I)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 102
    :cond_10
    invoke-static {v0}, Lj8/c;->a(I)Lj8/c;

    move-result-object v0

    iput-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg5/l;Lid/r;Lp/a1;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lg5/m;->l:I

    const-string v0, "offline"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg5/m;Ljava/lang/Class;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lg5/m;->l:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lid/p;Lid/d1;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lg5/m;->l:I

    const-string v0, "secondary"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 18
    invoke-interface {p2}, Lid/d1;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mapbox\u2192"

    .line 19
    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lg5/m;->l:I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 106
    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lg5/m;->l:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 110
    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lg5/m;->l:I

    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg5/m;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lmb/b0;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lg5/m;->l:I

    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    iput-object p2, p0, Lg5/m;->m:Ljava/lang/Object;

    iput-object p3, p0, Lg5/m;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo1/b;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lg5/m;->l:I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    .line 45
    new-instance p1, Lm2/j;

    invoke-direct {p1, v0, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq3/k;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lg5/m;->l:I

    .line 64
    iput v0, p0, Lg5/m;->l:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 68
    new-instance p1, Lw3/a;

    invoke-direct {p1, p0}, Lw3/a;-><init>(Lg5/m;)V

    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr0/p1;)V
    .locals 2

    const/16 v0, 0x14

    iput v0, p0, Lg5/m;->l:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lz0/a;

    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 11
    iput-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 12
    new-instance v0, Landroidx/lifecycle/a1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/lifecycle/a1;-><init>(I)V

    iput-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 13
    new-instance v0, Lr0/w0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lr0/w0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsc/o;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Lg5/m;->l:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 37
    sget-object p1, Lu8/r;->l:Lu8/r;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt2/r;Lg5/m;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Lg5/m;->l:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lg5/m;->m:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lg5/m;->n:Ljava/lang/Object;

    .line 62
    iget-object p1, p1, Lt2/r;->l:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lg5/m;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public J(Lmb/w0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Lmb/b0;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->W(Lmb/w0;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public K(Lmb/d5;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lmb/x;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lmb/v;->l()Lmb/x;

    move-result-object v0

    invoke-virtual {v0}, Lmb/x;->C()Z

    move-result v0

    iget-object v2, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lg5/e;

    iget-object v3, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/t0;

    invoke-virtual {v3, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Lmb/a7;

    iget-object p1, p1, Lmb/d5;->b:Lmb/z1;

    sget-object v4, Lmb/a7;->m:Ljava/util/logging/Logger;

    invoke-virtual {p0, p1, v3, v0}, Lmb/a7;->Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Le2/g0;Le2/u;)V
    .locals 3

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lb0/l1;

    iget-object v1, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Lb0/l1;

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lb0/l1;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p1, Le2/g0;->t:Le2/g0;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lb0/l1;->f(Le2/g0;)V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lb0/l1;->f(Le2/g0;)V

    return-void

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    iget-object p2, p1, Le2/g0;->t:Le2/g0;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lb0/l1;->f(Le2/g0;)V

    return-void

    :cond_3
    invoke-virtual {v0, p1}, Lb0/l1;->f(Le2/g0;)V

    return-void

    :cond_4
    invoke-virtual {v1, p1}, Lb0/l1;->f(Le2/g0;)V

    invoke-virtual {p0, p1}, Lb0/l1;->f(Le2/g0;)V

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lb0/l1;->f(Le2/g0;)V

    invoke-virtual {p0, p1}, Lb0/l1;->f(Le2/g0;)V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lg5/m;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lg5/l;

    iget-object v1, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Lid/r;

    instance-of v2, p3, Lid/q;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lid/q;

    iget v3, v2, Lid/q;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lid/q;->o:I

    goto :goto_0

    :cond_0
    new-instance v2, Lid/q;

    invoke-direct {v2, p0, p3}, Lid/q;-><init>(Lg5/m;La9/c;)V

    :goto_0
    iget-object p3, v2, Lid/q;->m:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lid/q;->o:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v2, Lid/q;->l:Ljava/util/List;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    iget-object p1, v2, Lid/q;->l:Ljava/util/List;

    :try_start_1
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p3, v1, Lid/r;->l:Lid/e;

    invoke-virtual {p3}, Lid/e;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, v1, Lid/r;->m:Li9/a;

    invoke-interface {p3}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lp/a1;

    invoke-virtual {p0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    iput-object v10, v2, Lid/q;->l:Ljava/util/List;

    iput v8, v2, Lid/q;->o:I

    invoke-virtual {v1, p1, v2}, Lid/r;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_d

    goto :goto_6

    :cond_6
    :try_start_2
    iput-object p1, v2, Lid/q;->l:Ljava/util/List;

    iput v7, v2, Lid/q;->o:I

    invoke-virtual {v0, p1, p2, v2}, Lg5/l;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_1
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    iput-object p1, v2, Lid/q;->l:Ljava/util/List;

    iput v6, v2, Lid/q;->o:I

    invoke-virtual {v1, p1, v2}, Lid/r;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_8

    goto :goto_6

    :cond_8
    :goto_2
    check-cast p3, Ljava/util/List;

    :cond_9
    check-cast p3, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    const/16 p2, 0x50

    invoke-static {p2, p0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    move-object p0, v10

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u043e\u043d\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0432\u0434\u0430\u0432\u0441\u044f ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), \u043f\u0440\u043e\u0431\u0443\u0454\u043c\u043e \u043e\u0444\u043b\u0430\u0439\u043d"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OfflineFallbackRouter"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v2, Lid/q;->l:Ljava/util/List;

    iput v5, v2, Lid/q;->o:I

    invoke-virtual {v1, p1, v2}, Lid/r;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    check-cast p3, Ljava/util/List;

    goto :goto_7

    :cond_c
    iput-object v10, v2, Lid/q;->l:Ljava/util/List;

    iput v9, v2, Lid/q;->o:I

    invoke-virtual {v0, p1, p2, v2}, Lg5/l;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_d

    :goto_6
    move-object p3, v3

    :cond_d
    :goto_7
    return-object p3

    :pswitch_0
    iget-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v0, Lid/d1;

    iget-object v1, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lid/p;

    instance-of v2, p3, Lid/b;

    if-eqz v2, :cond_e

    move-object v2, p3

    check-cast v2, Lid/b;

    iget v3, v2, Lid/b;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_e

    sub-int/2addr v3, v4

    iput v3, v2, Lid/b;->p:I

    goto :goto_8

    :cond_e
    new-instance v2, Lid/b;

    invoke-direct {v2, p0, p3}, Lid/b;-><init>(Lg5/m;La9/c;)V

    :goto_8
    iget-object p0, v2, Lid/b;->n:Ljava/lang/Object;

    sget-object p3, Lz8/a;->l:Lz8/a;

    iget v3, v2, Lid/b;->p:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_11

    if-eq v3, v5, :cond_10

    if-ne v3, v4, :cond_f

    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_b

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    iget-object p2, v2, Lid/b;->m:Ljava/lang/Double;

    iget-object p1, v2, Lid/b;->l:Ljava/util/List;

    :try_start_3
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_a

    :cond_11
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    :try_start_4
    iput-object p1, v2, Lid/b;->l:Ljava/util/List;

    iput-object p2, v2, Lid/b;->m:Ljava/lang/Double;

    iput v5, v2, Lid/b;->p:I

    invoke-virtual {v1, p1, p2, v2}, Lid/p;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_12

    goto :goto_c

    :cond_12
    :goto_9
    check-cast p0, Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object p3, p0

    goto :goto_c

    :goto_a
    sget-object v1, Lsc/c;->c:Li9/e;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lid/d1;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Mapbox failed: "

    const-string v6, "; trying "

    invoke-static {v5, p0, v6, v3}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Router"

    invoke-interface {v1, v3, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v2, Lid/b;->l:Ljava/util/List;

    iput-object p0, v2, Lid/b;->m:Ljava/lang/Double;

    iput v4, v2, Lid/b;->p:I

    invoke-interface {v0, p1, p2, v2}, Lid/d1;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_13

    goto :goto_c

    :cond_13
    :goto_b
    move-object p3, p0

    check-cast p3, Ljava/util/List;

    :goto_c
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lg5/m;->l:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lg5/m;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v0, Lid/d1;

    iget-object v1, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lid/p;

    instance-of v2, p2, Lid/a;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lid/a;

    iget v3, v2, Lid/a;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lid/a;->o:I

    goto :goto_0

    :cond_0
    new-instance v2, Lid/a;

    invoke-direct {v2, p0, p2}, Lid/a;-><init>(Lg5/m;La9/c;)V

    :goto_0
    iget-object p0, v2, Lid/a;->m:Ljava/lang/Object;

    sget-object p2, Lz8/a;->l:Lz8/a;

    iget v3, v2, Lid/a;->o:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v2, Lid/a;->l:Ljava/util/List;

    :try_start_0
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iput-object p1, v2, Lid/a;->l:Ljava/util/List;

    iput v6, v2, Lid/a;->o:I

    invoke-virtual {v1, p1, v4, v2}, Lid/p;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    check-cast p0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, p0

    goto :goto_4

    :goto_2
    sget-object v1, Lsc/c;->c:Li9/e;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lid/d1;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Mapbox failed: "

    const-string v7, "; trying "

    invoke-static {v6, p0, v7, v3}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Router"

    invoke-interface {v1, v3, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v2, Lid/a;->l:Ljava/util/List;

    iput v5, v2, Lid/a;->o:I

    invoke-interface {v0, p1, v2}, Lid/d1;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move-object p2, p0

    check-cast p2, Ljava/util/List;

    :goto_4
    return-object p2

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg6/h;

    iget-object p0, p0, Lg6/h;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic e0(Lmb/o3;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(IILg5/m;IILub/a;)V
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    sub-int v0, p5, p4

    if-ne v0, v1, :cond_c

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Ltb/a;

    iget-object p2, p3, Lg5/m;->m:Ljava/lang/Object;

    check-cast p2, Ltb/a;

    iget-object p3, p6, Lub/a;->c:Lnb/d;

    if-ne p0, p2, :cond_0

    if-ne p1, p4, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p5, p0, Ltb/a;->b:[Lpb/a;

    aget-object v0, p5, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v2, p5, v2

    iget-object v3, p2, Ltb/a;->b:[Lpb/a;

    aget-object v4, v3, p4

    add-int/lit8 v5, p4, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p3, v0, v2, v4, v3}, Lnb/d;->a(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)V

    invoke-virtual {p3}, Lnb/d;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p6, Lub/a;->e:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Ltb/a;->e:Z

    iput-boolean v2, p2, Ltb/a;->e:Z

    :cond_1
    if-ne p0, p2, :cond_4

    iget v0, p3, Lnb/d;->a:I

    if-ne v0, v1, :cond_4

    sub-int v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    aget-object v0, p5, v2

    array-length v3, p5

    sub-int/2addr v3, v1

    aget-object v3, p5, v3

    invoke-virtual {v0, v3}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length p5, p5

    sub-int/2addr p5, v1

    if-nez p1, :cond_3

    if-eq p4, p5, :cond_12

    :cond_3
    if-nez p4, :cond_4

    if-ne p1, p5, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object p5, p6, Lub/a;->f:[Ljava/util/Collection;

    if-nez p5, :cond_6

    :cond_5
    move p5, v2

    goto :goto_1

    :cond_6
    aget-object v0, p5, v2

    invoke-static {p3, v0}, Lub/a;->a(Lnb/d;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    move p5, v1

    goto :goto_1

    :cond_7
    aget-object p5, p5, v1

    invoke-static {p3, p5}, Lub/a;->a(Lnb/d;Ljava/util/Collection;)Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lnb/d;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p5, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    :goto_2
    move v0, v1

    :goto_3
    iget-boolean v3, p6, Lub/a;->d:Z

    if-nez v3, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0, p3, p1, v2}, Ltb/a;->e(Lnb/d;II)V

    invoke-virtual {p2, p3, p4, v1}, Ltb/a;->e(Lnb/d;II)V

    :cond_b
    invoke-virtual {p3}, Lnb/d;->d()Z

    move-result p0

    if-eqz p0, :cond_12

    iget-object p0, p3, Lnb/d;->c:[Lpb/a;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lpb/a;->f()Lpb/a;

    iput-boolean v1, p6, Lub/a;->a:Z

    if-nez p5, :cond_12

    iput-boolean v1, p6, Lub/a;->b:Z

    return-void

    :cond_c
    iget-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v0, [Lpb/a;

    aget-object v1, v0, p1

    aget-object v0, v0, p2

    iget-object v2, p3, Lg5/m;->n:Ljava/lang/Object;

    check-cast v2, [Lpb/a;

    aget-object v3, v2, p4

    aget-object v2, v2, p5

    invoke-static {v1, v0, v3, v2}, Lpb/h;->f(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    add-int v0, p1, p2

    div-int/lit8 v3, v0, 0x2

    add-int v0, p4, p5

    div-int/lit8 v5, v0, 0x2

    if-ge p1, v3, :cond_10

    if-ge p4, v5, :cond_e

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move-object v7, p6

    move v6, v5

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lg5/m;->f(IILg5/m;IILub/a;)V

    move v5, v6

    :goto_4
    move p1, v3

    goto :goto_5

    :cond_e
    move v2, p1

    goto :goto_4

    :goto_5
    if-ge v5, p5, :cond_f

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lg5/m;->f(IILg5/m;IILub/a;)V

    goto :goto_6

    :cond_f
    move v6, p5

    goto :goto_6

    :cond_10
    move v6, p5

    move p1, v3

    :goto_6
    if-ge p1, p2, :cond_12

    if-ge p4, v5, :cond_11

    move p5, v5

    invoke-virtual/range {p0 .. p6}, Lg5/m;->f(IILg5/m;IILub/a;)V

    :cond_11
    if-ge v5, v6, :cond_12

    move p4, v5

    move p5, v6

    invoke-virtual/range {p0 .. p6}, Lg5/m;->f(IILg5/m;IILub/a;)V

    :cond_12
    :goto_7
    return-void
.end method

.method public g(Le2/g0;)Z
    .locals 4

    iget-object v0, p1, Le2/g0;->t:Le2/g0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v3, Lb0/l1;

    iget-object v3, v3, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v3, Le2/a2;

    invoke-virtual {v3, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Le2/a2;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v2

    :goto_2
    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg5/m;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lg5/l;

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Lid/r;

    iget-object v1, p0, Lid/r;->l:Lid/e;

    invoke-virtual {v1}, Lid/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lid/r;->m:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lg5/l;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "+\u041e\u0444\u043b\u0430\u0439\u043d"

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg5/l;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lm1/o;
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->c:Lm1/o;

    return-object p0
.end method

.method public i()Lw2/b;
    .locals 7

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v1, Lwa/e;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v2, Lw2/b;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v3, Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    new-instance v5, Lw2/a;

    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v6}, Lw2/a;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v2, Lw2/b;

    invoke-direct {v2, v3}, Lw2/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    iput-object v2, p0, Lg5/m;->n:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public j()Lb3/c;
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->a:Lb3/c;

    return-object p0
.end method

.method public k()Lb3/m;
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->b:Lb3/m;

    return-object p0
.end method

.method public l(Lj8/c;)I
    .locals 13

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lk8/e;

    iget v5, v4, Lk8/e;->d:I

    iget-object v6, v4, Lk8/e;->a:Lj8/a;

    invoke-virtual {v6, p1}, Lj8/a;->a(Lj8/c;)I

    move-result v7

    add-int/lit8 v8, v7, 0x4

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-eq v6, v9, :cond_5

    const/4 v12, 0x6

    if-eq v6, v10, :cond_3

    if-eq v6, v11, :cond_2

    const/4 v4, 0x5

    if-eq v6, v4, :cond_1

    if-eq v6, v12, :cond_0

    goto :goto_3

    :cond_0
    mul-int/lit8 v5, v5, 0xd

    add-int/2addr v8, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v7, 0xc

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lk8/e;->a()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v8, v4

    goto :goto_3

    :cond_3
    div-int/lit8 v4, v5, 0x2

    mul-int/lit8 v4, v4, 0xb

    add-int/2addr v4, v8

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v9, :cond_4

    goto :goto_1

    :cond_4
    move v12, v1

    :goto_1
    add-int v8, v4, v12

    goto :goto_3

    :cond_5
    div-int/lit8 v4, v5, 0x3

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v8

    rem-int/lit8 v5, v5, 0x3

    if-ne v5, v9, :cond_6

    goto :goto_2

    :cond_6
    if-ne v5, v10, :cond_7

    const/4 v11, 0x7

    goto :goto_2

    :cond_7
    move v11, v1

    :goto_2
    add-int v8, v4, v11

    :goto_3
    add-int/2addr v2, v8

    goto :goto_0

    :cond_8
    return v2
.end method

.method public m()J
    .locals 2

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-wide v0, p0, Lo1/a;->d:J

    return-wide v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lb0/l1;

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Le2/a2;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lb0/l1;

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Le2/a2;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Le2/a2;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg5/m;->o:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Lg5/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg5/m;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public p()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public q(Landroidx/lifecycle/o;)V
    .locals 2

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/y0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/y0;->run()V

    :cond_0
    new-instance v0, Landroidx/lifecycle/y0;

    iget-object v1, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/x;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/y0;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/o;)V

    iput-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r(I)V
    .locals 10

    invoke-virtual {p0}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltb/b;

    invoke-virtual {v3}, Ltb/b;->b()Lq3/k;

    move-result-object v3

    iget-object v5, v3, Lq3/k;->m:Ljava/lang/Object;

    check-cast v5, [Lq5/a;

    aget-object v5, v5, p1

    iget-object v5, v5, Lq5/a;->m:[I

    array-length v5, v5

    if-le v5, v4, :cond_0

    invoke-virtual {v3, p1, v4}, Lq3/k;->k(II)I

    move-result v5

    if-eq v5, v1, :cond_0

    invoke-virtual {v3, p1, v4}, Lq3/k;->k(II)I

    move-result v2

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb/b;

    invoke-virtual {v0}, Ltb/b;->b()Lq3/k;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Lq3/k;->k(II)I

    move-result v6

    iget-object v7, v3, Lq3/k;->m:Ljava/lang/Object;

    check-cast v7, [Lq5/a;

    if-ne v6, v1, :cond_4

    aget-object v6, v7, p1

    iget-object v6, v6, Lq5/a;->m:[I

    aput v2, v6, v5

    :cond_4
    aget-object v6, v7, p1

    iget-object v6, v6, Lq5/a;->m:[I

    array-length v6, v6

    if-le v6, v4, :cond_3

    invoke-virtual {v3, p1, v4}, Lq3/k;->k(II)I

    move-result v6

    const/4 v8, 0x2

    invoke-virtual {v3, p1, v8}, Lq3/k;->k(II)I

    move-result v9

    if-eq v9, v1, :cond_8

    if-eq v9, v2, :cond_6

    new-instance p0, Landroidx/fragment/app/i0;

    iget-object p1, v0, Ltb/b;->n:Lpb/a;

    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "side location conflict [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "side location conflict"

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Lpb/a;->l:D

    throw p0

    :cond_6
    if-eq v6, v1, :cond_7

    move v2, v6

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "found single null side (at "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Ltb/b;->n:Lpb/a;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    invoke-virtual {v3, p1, v4}, Lq3/k;->k(II)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v5, v4

    :cond_9
    const-string v0, "found single null side"

    invoke-static {v0, v5}, Ly4/s;->w(Ljava/lang/String;Z)V

    aget-object v0, v7, p1

    iget-object v0, v0, Lq5/a;->m:[I

    aput v2, v0, v8

    aput v2, v0, v4

    goto/16 :goto_1

    :cond_a
    :goto_3
    return-void
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg6/b0;

    iget-object p0, p0, Lg6/b0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public t(Lm1/o;)V
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iput-object p1, p0, Lo1/a;->c:Lm1/o;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lg5/m;->l:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ClassStack (self-refs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p0, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Lg5/m;

    goto :goto_1

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lk8/e;

    if-eqz v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Lk8/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EdgeEndStar:   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltb/b;

    iget-object v2, v2, Ltb/b;->n:Lpb/a;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltb/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x10 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Lb3/c;)V
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iput-object p1, p0, Lo1/a;->a:Lb3/c;

    return-void
.end method

.method public v(Lb3/m;)V
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iput-object p1, p0, Lo1/a;->b:Lb3/m;

    return-void
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object v1, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Lmb/x0;

    invoke-virtual {v0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v2

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Lmb/b0;

    invoke-virtual {v0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p0, p1}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public w(J)V
    .locals 0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iput-wide p1, p0, Lo1/a;->d:J

    return-void
.end method

.method public x()V
    .locals 3

    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lk/m0;

    iget-object v1, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Li9/a;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public x0(Lmb/h4;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lg5/e;

    iget-object v1, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/t0;

    iget-object p1, p1, Lmb/h4;->b:[Lmb/b2;

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    iget-object v6, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v6, Lmb/x;

    iget-object v7, v5, Lmb/b2;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lmb/t;->c()Lmb/c6;

    move-result-object v6

    iget-object v6, v6, Lmb/c6;->b:Ljava/lang/String;

    sget-object v7, Lmb/o;->a:Ljava/util/Map;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    iget-object v7, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    iget-object v8, v5, Lmb/b2;->a:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    iget-object v9, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v9, Lmb/a7;

    iget-object v5, v5, Lmb/b2;->b:Lmb/z1;

    sget-object v10, Lmb/a7;->m:Ljava/util/logging/Logger;

    invoke-virtual {v9, v5, v1, v6}, Lmb/a7;->Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
