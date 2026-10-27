.class public final Lb0/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/e;
.implements Lf8/p3;
.implements Lf7/j;
.implements Lj4/b;
.implements Lu6/b;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lb0/l1;->l:I

    sparse-switch p1, :sswitch_data_0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Le2/a2;

    sget-object v0, Le2/l;->a:Le2/n1;

    .line 12
    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 13
    iput-object p1, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void

    .line 14
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Lm1/a;

    invoke-direct {p1}, Lm1/a;-><init>()V

    iput-object p1, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void

    .line 16
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void

    .line 18
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 20
    iput-object p1, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void

    .line 21
    :sswitch_3
    new-instance p1, La1/d;

    invoke-direct {p1}, La1/d;-><init>()V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lb0/l1;->m:Ljava/lang/Object;

    .line 24
    iget-boolean p0, p1, La1/d;->m:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-boolean p0, p1, La1/d;->n:Z

    if-eqz p0, :cond_1

    .line 26
    const-string p0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 27
    invoke-static {p0}, Lb1/a;->a(Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-virtual {p1}, La1/d;->a()V

    const/4 p0, 0x1

    .line 29
    iput-boolean p0, p1, La1/d;->n:Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x16 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(IIIIZZLm2/j;)V
    .locals 11

    const/16 v0, 0x1a

    iput v0, p0, Lb0/l1;->l:I

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 31
    sget-object v2, Loa/d;->l:Loa/d;

    .line 32
    const-string v1, "timeUnit"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskRunner"

    invoke-static {v2, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v10, Lpa/r;

    .line 34
    new-instance v1, Lla/j;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lla/j;-><init>(Loa/d;IIIIZZLm2/j;)V

    .line 35
    sget-object p1, Lpa/e;->a:Lpa/e;

    invoke-direct {v10, v2, v0, p1, v1}, Lpa/r;-><init>(Loa/d;Ljava/util/concurrent/TimeUnit;Lpa/e;Lla/j;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v10, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/l1;->l:I

    iput-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lb0/l1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb3/c;)V
    .locals 2

    const/16 v0, 0x1b

    iput v0, p0, Lb0/l1;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lm/e0;

    .line 5
    sget v1, Lm/i0;->a:F

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lm/e0;->a:F

    .line 7
    invoke-interface {p1}, Lb3/c;->a()F

    move-result p1

    sget v1, Lm/f0;->a:F

    const v1, 0x43c10b3d

    mul-float/2addr p1, v1

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr p1, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v1

    .line 8
    iput p1, v0, Lm/e0;->b:F

    .line 9
    iput-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf8/v2;Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lb0/l1;->l:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lb0/l1;->m:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 87
    new-array v0, p1, [Ljava/lang/Class;

    .line 88
    const-string v1, "getDefaultInstance"

    invoke-static {p2, v1, v0}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 89
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    invoke-static {p2, v0, p1}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/y3;

    .line 91
    invoke-virtual {p0, p1}, Lb0/l1;->n(Lf8/y3;)V

    throw v0
.end method

.method public constructor <init>(Lpb/i;Lpb/i;)V
    .locals 3

    const/16 v0, 0xd

    iput v0, p0, Lb0/l1;->l:I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lnb/d;

    invoke-direct {v0}, Lnb/d;-><init>()V

    .line 40
    iget-object v1, p1, Lpb/i;->m:Lpb/m;

    .line 41
    iget-object v1, v1, Lpb/m;->l:Lpb/a0;

    .line 42
    iget-object v2, p2, Lpb/i;->m:Lpb/m;

    .line 43
    iget-object v2, v2, Lpb/m;->l:Lpb/a0;

    .line 44
    invoke-virtual {v1, v2}, Lpb/a0;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 45
    iget-object v1, p1, Lpb/i;->m:Lpb/m;

    .line 46
    iget-object v1, v1, Lpb/m;->l:Lpb/a0;

    .line 47
    iput-object v1, v0, Lnb/d;->e:Lpb/a0;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p2, Lpb/i;->m:Lpb/m;

    .line 49
    iget-object v1, v1, Lpb/m;->l:Lpb/a0;

    .line 50
    iput-object v1, v0, Lnb/d;->e:Lpb/a0;

    .line 51
    :goto_0
    new-instance v0, Lpa/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lpa/y;-><init>(ILpb/i;)V

    .line 52
    new-instance p1, Lpa/y;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2}, Lpa/y;-><init>(ILpb/i;)V

    filled-new-array {v0, p1}, [Lpa/y;

    move-result-object p1

    .line 53
    new-instance p2, Landroidx/lifecycle/a1;

    .line 54
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lnb/d;

    invoke-direct {v0}, Lnb/d;-><init>()V

    iput-object v0, p2, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    .line 56
    new-instance v0, Lnb/b;

    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p2, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    .line 59
    new-instance v0, Lg5/c;

    new-instance v1, Lfc/c;

    const/16 v2, 0x19

    .line 60
    invoke-direct {v1, v2}, Lmb/q;-><init>(I)V

    .line 61
    invoke-direct {v0, v1}, Lg5/c;-><init>(Lmb/q;)V

    iput-object v0, p2, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    .line 63
    iput-object p1, p2, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    .line 64
    iput-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([J)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lb0/l1;->l:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 66
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 67
    new-instance v0, Lk/a0;

    array-length v1, p1

    invoke-direct {v0, v1}, Lk/a0;-><init>(I)V

    .line 68
    iget v1, v0, Lk/a0;->b:I

    if-ltz v1, :cond_3

    .line 69
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    .line 71
    iget-object v3, v0, Lk/a0;->a:[J

    .line 72
    array-length v4, v3

    if-ge v4, v2, :cond_1

    .line 73
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 74
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lk/a0;->a:[J

    .line 75
    :cond_1
    iget-object v2, v0, Lk/a0;->a:[J

    .line 76
    iget v3, v0, Lk/a0;->b:I

    if-eq v1, v3, :cond_2

    .line 77
    array-length v4, p1

    add-int/2addr v4, v1

    .line 78
    invoke-static {v2, v2, v4, v1, v3}, Lu8/l;->j0([J[JIII)V

    :cond_2
    const/4 v3, 0x0

    .line 79
    array-length v4, p1

    invoke-static {p1, v2, v1, v3, v4}, Lu8/l;->j0([J[JIII)V

    .line 80
    iget v1, v0, Lk/a0;->b:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Lk/a0;->b:I

    goto :goto_0

    .line 81
    :cond_3
    const-string p0, ""

    invoke-static {p0}, Ll/a;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 82
    :cond_4
    new-instance v0, Lk/a0;

    const/16 p1, 0x10

    .line 83
    invoke-direct {v0, p1}, Lk/a0;-><init>(I)V

    .line 84
    :goto_0
    iput-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-void
.end method

.method public static u(Lb0/l1;Lb0/l1;)Lb0/l1;
    .locals 3

    if-eqz p0, :cond_5

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p0, Lb0/l1;

    const/16 p1, 0x15

    invoke-direct {p0, p1, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-object p0

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static y(Lpb/i;Lpb/i;)Lpb/o;
    .locals 17

    new-instance v0, Lb0/l1;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lb0/l1;-><init>(Lpb/i;Lpb/i;)V

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a1;

    iget-object v1, v0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v1, Lg5/c;

    iget-object v2, v0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, Lnb/b;

    iget-object v3, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v3, Lnb/d;

    new-instance v4, Lpb/o;

    invoke-direct {v4}, Lpb/o;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v5, v5}, Lpb/o;->f(III)V

    iget-object v6, v0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v6, [Lpa/y;

    const/4 v7, 0x0

    aget-object v8, v6, v7

    iget-object v8, v8, Lpa/y;->e:Ljava/lang/Object;

    check-cast v8, Lpb/i;

    invoke-virtual {v8}, Lpb/i;->z()Lpb/h;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v10, v6, v9

    iget-object v10, v10, Lpa/y;->e:Ljava/lang/Object;

    check-cast v10, Lpb/i;

    invoke-virtual {v10}, Lpb/i;->z()Lpb/h;

    move-result-object v10

    invoke-virtual {v8, v10}, Lpb/h;->h(Lpb/h;)Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v0, v6, v7

    iget-object v1, v0, Lpa/y;->g:Ljava/lang/Object;

    check-cast v1, Lnb/a;

    iget-object v0, v0, Lpa/y;->e:Ljava/lang/Object;

    check-cast v0, Lpb/i;

    invoke-virtual {v0}, Lpb/i;->L()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lpb/i;->getDimension()I

    move-result v2

    invoke-virtual {v4, v7, v5, v2}, Lpb/o;->f(III)V

    invoke-static {v0, v1}, Landroidx/lifecycle/a1;->p(Lpb/i;Lnb/a;)I

    move-result v0

    invoke-virtual {v4, v9, v5, v0}, Lpb/o;->f(III)V

    :cond_0
    aget-object v0, v6, v9

    iget-object v0, v0, Lpa/y;->e:Ljava/lang/Object;

    check-cast v0, Lpb/i;

    invoke-virtual {v0}, Lpb/i;->L()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Lpb/i;->getDimension()I

    move-result v2

    invoke-virtual {v4, v5, v7, v2}, Lpb/o;->f(III)V

    invoke-static {v0, v1}, Landroidx/lifecycle/a1;->p(Lpb/i;Lnb/a;)I

    move-result v0

    invoke-virtual {v4, v5, v9, v0}, Lpb/o;->f(III)V

    return-object v4

    :cond_1
    aget-object v8, v6, v7

    invoke-virtual {v8, v3}, Lpa/y;->d(Lnb/d;)V

    aget-object v8, v6, v9

    invoke-virtual {v8, v3}, Lpa/y;->d(Lnb/d;)V

    aget-object v8, v6, v7

    aget-object v10, v6, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lub/a;

    invoke-direct {v11, v3, v7, v9}, Lub/a;-><init>(Lnb/d;ZZ)V

    invoke-virtual {v8}, Lpa/y;->e()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v10}, Lpa/y;->e()Ljava/util/Collection;

    move-result-object v12

    new-array v13, v5, [Ljava/util/Collection;

    iput-object v13, v11, Lub/a;->f:[Ljava/util/Collection;

    aput-object v3, v13, v7

    aput-object v12, v13, v9

    new-instance v3, Lc5/o;

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-direct {v3, v12, v13}, Lc5/o;-><init>(IB)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v3, Lc5/o;->m:Ljava/util/ArrayList;

    iget-object v8, v8, Lpa/y;->a:Ljava/util/ArrayList;

    iget-object v10, v10, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v8}, Lc5/o;->d(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10, v10}, Lc5/o;->d(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Lc5/o;->h(Lub/a;)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/a1;->m(I)V

    invoke-virtual {v0, v9}, Landroidx/lifecycle/a1;->m(I)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/a1;->n(I)V

    invoke-virtual {v0, v9}, Landroidx/lifecycle/a1;->n(I)V

    invoke-virtual {v1}, Lg5/c;->j()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltb/d;

    iget-object v10, v8, Le1/b;->a:Ljava/lang/Object;

    check-cast v10, Lq3/k;

    iget-object v12, v8, Ltb/d;->b:Lpb/a;

    invoke-virtual {v10}, Lq3/k;->i()I

    move-result v13

    if-lez v13, :cond_3

    move v13, v9

    goto :goto_0

    :cond_3
    move v13, v7

    :goto_0
    const-string v14, "node with empty label found"

    invoke-static {v14, v13}, Ly4/s;->w(Ljava/lang/String;Z)V

    iget-object v13, v8, Le1/b;->a:Ljava/lang/Object;

    check-cast v13, Lq3/k;

    invoke-virtual {v13}, Lq3/k;->i()I

    move-result v13

    if-ne v13, v9, :cond_2

    iget-object v10, v10, Lq3/k;->m:Ljava/lang/Object;

    check-cast v10, [Lq5/a;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lq5/a;->b()Z

    move-result v10

    if-eqz v10, :cond_4

    aget-object v10, v6, v7

    iget-object v10, v10, Lpa/y;->e:Ljava/lang/Object;

    check-cast v10, Lpb/i;

    invoke-virtual {v2, v12, v10}, Lnb/b;->b(Lpb/a;Lpb/i;)I

    move-result v10

    iget-object v8, v8, Le1/b;->a:Ljava/lang/Object;

    check-cast v8, Lq3/k;

    iget-object v8, v8, Lq3/k;->m:Ljava/lang/Object;

    check-cast v8, [Lq5/a;

    aget-object v8, v8, v7

    move v12, v7

    :goto_1
    iget-object v13, v8, Lq5/a;->m:[I

    array-length v14, v13

    if-ge v12, v14, :cond_2

    aput v10, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    aget-object v10, v6, v9

    iget-object v10, v10, Lpa/y;->e:Ljava/lang/Object;

    check-cast v10, Lpb/i;

    invoke-virtual {v2, v12, v10}, Lnb/b;->b(Lpb/a;Lpb/i;)I

    move-result v10

    iget-object v8, v8, Le1/b;->a:Ljava/lang/Object;

    check-cast v8, Lq3/k;

    iget-object v8, v8, Lq3/k;->m:Ljava/lang/Object;

    check-cast v8, [Lq5/a;

    aget-object v8, v8, v9

    move v12, v7

    :goto_2
    iget-object v13, v8, Lq5/a;->m:[I

    array-length v14, v13

    if-ge v12, v14, :cond_2

    aput v10, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    aget-object v2, v6, v7

    iget-object v2, v2, Lpa/y;->e:Ljava/lang/Object;

    check-cast v2, Lpb/i;

    invoke-virtual {v2}, Lpb/i;->getDimension()I

    move-result v2

    aget-object v3, v6, v9

    iget-object v3, v3, Lpa/y;->e:Ljava/lang/Object;

    check-cast v3, Lpb/i;

    invoke-virtual {v3}, Lpb/i;->getDimension()I

    move-result v3

    iget-boolean v8, v11, Lub/a;->a:Z

    iget-boolean v10, v11, Lub/a;->b:Z

    if-ne v2, v5, :cond_6

    if-ne v3, v5, :cond_6

    if-eqz v8, :cond_b

    const-string v2, "212101212"

    invoke-virtual {v4, v2}, Lpb/o;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-ne v2, v5, :cond_8

    if-ne v3, v9, :cond_8

    if-eqz v8, :cond_7

    const-string v2, "FFF0FFFF2"

    invoke-virtual {v4, v2}, Lpb/o;->g(Ljava/lang/String;)V

    :cond_7
    if-eqz v10, :cond_b

    const-string v2, "1FFFFF1FF"

    invoke-virtual {v4, v2}, Lpb/o;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-ne v2, v9, :cond_a

    if-ne v3, v5, :cond_a

    if-eqz v8, :cond_9

    const-string v2, "F0FFFFFF2"

    invoke-virtual {v4, v2}, Lpb/o;->g(Ljava/lang/String;)V

    :cond_9
    if-eqz v10, :cond_b

    const-string v2, "1F1FFFFFF"

    invoke-virtual {v4, v2}, Lpb/o;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-ne v2, v9, :cond_b

    if-ne v3, v9, :cond_b

    if-eqz v10, :cond_b

    const-string v2, "0FFFFFFFF"

    invoke-virtual {v4, v2}, Lpb/o;->g(Ljava/lang/String;)V

    :cond_b
    :goto_3
    aget-object v2, v6, v7

    iget-object v2, v2, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lb6/g;->m(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a1;->x(Ljava/util/ArrayList;)V

    aget-object v2, v6, v9

    iget-object v2, v2, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lb6/g;->m(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a1;->x(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lg5/c;->j()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfc/b;

    iget-object v3, v3, Ltb/d;->c:Lg5/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, v6, v7

    iget-object v8, v8, Lpa/y;->g:Ljava/lang/Object;

    check-cast v8, Lnb/a;

    invoke-virtual {v3}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltb/b;

    invoke-virtual {v11, v8}, Ltb/b;->a(Lnb/a;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v3, v7}, Lg5/m;->r(I)V

    invoke-virtual {v3, v9}, Lg5/m;->r(I)V

    new-array v8, v5, [Z

    aput-boolean v7, v8, v7

    aput-boolean v7, v8, v9

    invoke-virtual {v3}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltb/b;

    invoke-virtual {v11}, Ltb/b;->b()Lq3/k;

    move-result-object v11

    move v12, v7

    :goto_5
    if-ge v12, v5, :cond_e

    iget-object v13, v11, Lq3/k;->m:Ljava/lang/Object;

    check-cast v13, [Lq5/a;

    aget-object v13, v13, v12

    iget-object v13, v13, Lq5/a;->m:[I

    array-length v13, v13

    if-ne v13, v9, :cond_f

    invoke-virtual {v11, v12}, Lq3/k;->j(I)I

    move-result v13

    if-ne v13, v9, :cond_f

    aput-boolean v9, v8, v12

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v3}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltb/b;

    invoke-virtual {v11}, Ltb/b;->b()Lq3/k;

    move-result-object v12

    move v13, v7

    :goto_6
    if-ge v13, v5, :cond_11

    iget-object v14, v12, Lq3/k;->m:Ljava/lang/Object;

    check-cast v14, [Lq5/a;

    aget-object v14, v14, v13

    move v15, v7

    :goto_7
    iget-object v5, v14, Lq5/a;->m:[I

    array-length v7, v5

    if-ge v15, v7, :cond_15

    aget v5, v5, v15

    const/4 v7, -0x1

    if-ne v5, v7, :cond_16

    aget-boolean v5, v8, v13

    if-eqz v5, :cond_12

    const/4 v5, 0x2

    goto :goto_8

    :cond_12
    iget-object v5, v11, Ltb/b;->n:Lpb/a;

    iget-object v14, v3, Lg5/m;->o:Ljava/lang/Object;

    check-cast v14, [I

    aget v15, v14, v13

    if-ne v15, v7, :cond_13

    aget-object v15, v6, v13

    iget-object v15, v15, Lpa/y;->e:Ljava/lang/Object;

    check-cast v15, Lpb/i;

    invoke-static {v5, v15}, Lm2/j;->s(Lpb/a;Lpb/i;)I

    move-result v5

    aput v5, v14, v13

    :cond_13
    aget v5, v14, v13

    :goto_8
    iget-object v14, v12, Lq3/k;->m:Ljava/lang/Object;

    check-cast v14, [Lq5/a;

    aget-object v14, v14, v13

    const/4 v15, 0x0

    :goto_9
    iget-object v9, v14, Lq5/a;->m:[I

    array-length v7, v9

    if-ge v15, v7, :cond_15

    aget v7, v9, v15

    move-object/from16 v16, v1

    const/4 v1, -0x1

    if-ne v7, v1, :cond_14

    aput v5, v9, v15

    :cond_14
    add-int/lit8 v15, v15, 0x1

    move v7, v1

    move-object/from16 v1, v16

    goto :goto_9

    :cond_15
    move-object/from16 v16, v1

    goto :goto_a

    :cond_16
    move-object/from16 v16, v1

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_7

    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_6

    :cond_17
    move-object/from16 v16, v1

    move v1, v7

    move v3, v9

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/a1;->y(II)V

    invoke-virtual {v0, v3, v1}, Landroidx/lifecycle/a1;->y(II)V

    iget-object v0, v0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v1

    :goto_b
    const-string v6, "found partial label"

    if-ge v5, v2, :cond_19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Ltb/a;

    iget-object v8, v7, Le1/b;->a:Ljava/lang/Object;

    check-cast v8, Lq3/k;

    invoke-virtual {v8}, Lq3/k;->i()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_18

    move v8, v3

    goto :goto_c

    :cond_18
    move v8, v1

    :goto_c
    invoke-static {v6, v8}, Ly4/s;->w(Ljava/lang/String;Z)V

    iget-object v6, v7, Le1/b;->a:Ljava/lang/Object;

    check-cast v6, Lq3/k;

    invoke-static {v6, v4}, Ltb/a;->f(Lq3/k;Lpb/o;)V

    goto :goto_b

    :cond_19
    invoke-virtual/range {v16 .. v16}, Lg5/c;->j()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfc/b;

    iget-object v5, v2, Le1/b;->a:Ljava/lang/Object;

    check-cast v5, Lq3/k;

    invoke-virtual {v5}, Lq3/k;->i()I

    move-result v5

    const/4 v9, 0x2

    if-lt v5, v9, :cond_1b

    move v5, v3

    goto :goto_d

    :cond_1b
    move v5, v1

    :goto_d
    invoke-static {v6, v5}, Ly4/s;->w(Ljava/lang/String;Z)V

    iget-object v5, v2, Le1/b;->a:Ljava/lang/Object;

    check-cast v5, Lq3/k;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lq3/k;->j(I)I

    move-result v5

    iget-object v8, v2, Le1/b;->a:Ljava/lang/Object;

    check-cast v8, Lq3/k;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lq3/k;->j(I)I

    move-result v8

    if-ltz v5, :cond_1c

    if-ltz v8, :cond_1c

    iget-object v10, v4, Lpb/o;->l:[[I

    aget-object v5, v10, v5

    aget v10, v5, v8

    if-gez v10, :cond_1c

    aput v7, v5, v8

    :cond_1c
    iget-object v2, v2, Ltb/d;->c:Lg5/m;

    invoke-virtual {v2}, Lg5/m;->p()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfc/a;

    iget-object v5, v5, Ltb/b;->m:Lq3/k;

    invoke-static {v5, v4}, Ltb/a;->f(Lq3/k;Lpb/o;)V

    goto :goto_e

    :cond_1d
    return-object v4
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Li7/d;

    check-cast p2, Lu7/d;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Li7/a;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lg7/j;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, Ln7/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Ln7/c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v2}, Lg7/j;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    :try_start_0
    iget-object p0, p1, Ln7/a;->c:Landroid/os/IBinder;

    const/4 p1, 0x0

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iget-object p0, p2, Lu7/d;->a:Lu7/i;

    invoke-virtual {p0, p1}, Lu7/i;->d(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public b(Lf8/l3;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/v2;

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    iget p0, p0, Lf8/q0;->p:I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No map fields found in "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 1

    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    const-string v0, "ProfileInstaller"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(ILjava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public e()Lf8/a;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public f(Le2/g0;)V
    .locals 1

    invoke-virtual {p1}, Le2/g0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.add called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Le2/a2;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lf8/v2;Ljava/lang/Object;)Lb0/l1;
    .locals 1

    iget v0, p0, Lb0/l1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/k3;

    invoke-virtual {v0, p1, p2}, Lf8/k3;->a(Lf8/v2;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/a;

    invoke-virtual {v0, p1, p2}, Lf8/a;->g(Lf8/v2;Ljava/lang/Object;)Lf8/a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lf8/g5;
    .locals 2

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->b:Ljava/util/List;

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lf8/g5;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf8/g5;->b:Ljava/util/List;

    :goto_1
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->c:Ljava/util/List;

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lf8/g5;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf8/g5;->c:Ljava/util/List;

    :goto_2
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->d:Ljava/util/List;

    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lf8/g5;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf8/g5;->d:Ljava/util/List;

    :goto_3
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->e:Ljava/util/List;

    if-nez v1, :cond_4

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lf8/g5;->e:Ljava/util/List;

    goto :goto_4

    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf8/g5;->e:Ljava/util/List;

    :goto_4
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    const/4 v1, 0x0

    iput-object v1, p0, Lb0/l1;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public i(Lf8/f3;Lf8/m2;I)V
    .locals 0

    iget p0, p0, Lb0/l1;->l:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lf8/f3;->d:Ljava/util/Map;

    new-instance p1, Lf8/e3;

    invoke-direct {p1, p2, p3}, Lf8/e3;-><init>(Lf8/m2;I)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p1, Lf8/f3;->d:Ljava/util/Map;

    new-instance p1, Lf8/e3;

    invoke-direct {p1, p2, p3}, Lf8/e3;-><init>(Lf8/m2;I)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public j([Ljava/lang/Class;)Z
    .locals 5

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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

.method public k(Lf8/l3;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() is not supported for repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(Lf8/y3;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() is not supported for repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Ldd/l0;Ldd/p;Ldd/y0;)V
    .locals 0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ldd/k0;

    iget-object p0, p0, Ldd/k0;->a:Ldd/q0;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Ldd/w0;->c(Ldd/l0;Ldd/p;Ldd/y0;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldd/q0;->e(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(Lf8/y3;)V
    .locals 1

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/v2;

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    iget p0, p0, Lf8/q0;->p:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(Lf8/y3;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lb0/l1;->n(Lf8/y3;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public p(Lf8/l3;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/v2;

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    iget p0, p0, Lf8/q0;->p:I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No map fields found in "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lf8/l3;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/v2;

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    iget p0, p0, Lf8/q0;->p:I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(Lf8/v2;)I
    .locals 0

    iget p0, p0, Lb0/l1;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Lf8/v2;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p1}, Lf8/v2;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lf8/v2;->l()Z

    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public s(Lpb/i;)Z
    .locals 10

    instance-of v0, p1, Lpb/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lpb/w;

    if-eqz v0, :cond_1

    check-cast p1, Lpb/w;

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb0/l1;->t(Lpb/a;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Lpb/q;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    check-cast p1, Lpb/q;

    iget-object p1, p1, Lpb/q;->o:Lpb/d;

    new-instance v0, Lpb/a;

    invoke-direct {v0}, Lpb/a;-><init>()V

    new-instance v3, Lpb/a;

    invoke-direct {v3}, Lpb/a;-><init>()V

    move v4, v1

    :cond_2
    invoke-interface {p1}, Lpb/d;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_9

    invoke-interface {p1, v4, v0}, Lpb/d;->c(ILpb/a;)V

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v4, v3}, Lpb/d;->c(ILpb/a;)V

    iget-object v5, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v5, Lpb/h;

    invoke-virtual {v0, v3}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v0}, Lb0/l1;->t(Lpb/a;)Z

    move-result v5

    goto :goto_1

    :cond_3
    iget-wide v6, v0, Lpb/a;->l:D

    iget-wide v8, v3, Lpb/a;->l:D

    cmpl-double v8, v6, v8

    if-nez v8, :cond_5

    iget-wide v8, v5, Lpb/h;->l:D

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_4

    iget-wide v8, v5, Lpb/h;->m:D

    cmpl-double v5, v6, v8

    if-nez v5, :cond_6

    :cond_4
    :goto_0
    move v5, v2

    goto :goto_1

    :cond_5
    iget-wide v6, v0, Lpb/a;->m:D

    iget-wide v8, v3, Lpb/a;->m:D

    cmpl-double v8, v6, v8

    if-nez v8, :cond_6

    iget-wide v8, v5, Lpb/h;->n:D

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_4

    iget-wide v8, v5, Lpb/h;->o:D

    cmpl-double v5, v6, v8

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    move v5, v1

    :goto_1
    if-nez v5, :cond_2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_2
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p1, v0}, Lpb/i;->A(I)Lpb/i;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb0/l1;->s(Lpb/i;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_3
    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lb0/l1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, [B

    array-length p0, p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/j;

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(Lpb/a;)Z
    .locals 4

    iget-wide v0, p1, Lpb/a;->l:D

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lpb/h;

    iget-wide v2, p0, Lpb/h;->l:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lpb/h;->m:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lpb/a;->m:D

    iget-wide v2, p0, Lpb/h;->n:D

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lpb/h;->o:D

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lb0/l1;->l:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const-string p0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :sswitch_1
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Le2/a2;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public v(Lf8/g5;)V
    .locals 2

    iget-object v0, p1, Lf8/g5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v0, v0, Lf8/g5;->a:Ljava/util/List;

    iget-object v1, p1, Lf8/g5;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p1, Lf8/g5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->b:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/g5;->b:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v0, v0, Lf8/g5;->b:Ljava/util/List;

    iget-object v1, p1, Lf8/g5;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p1, Lf8/g5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->c:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/g5;->c:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v0, v0, Lf8/g5;->c:Ljava/util/List;

    iget-object v1, p1, Lf8/g5;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p1, Lf8/g5;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->d:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/g5;->d:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v0, v0, Lf8/g5;->d:Ljava/util/List;

    iget-object v1, p1, Lf8/g5;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p1, Lf8/g5;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->e:Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/g5;->e:Ljava/util/List;

    :cond_8
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->e:Ljava/util/List;

    iget-object p1, p1, Lf8/g5;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-void
.end method

.method public w(JLjava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ldd/k0;

    iget-object p0, p0, Ldd/k0;->a:Ldd/q0;

    invoke-virtual {p0, p1, p2, p3}, Ldd/q0;->a(JLjava/lang/String;)V

    return-void
.end method

.method public x(Landroid/view/View;IZ)V
    .locals 0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    return-void
.end method

.method public z(Le2/g0;)Z
    .locals 1

    invoke-virtual {p1}, Le2/g0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.remove called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Le2/a2;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
