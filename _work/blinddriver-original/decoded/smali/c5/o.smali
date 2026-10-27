.class public final Lc5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/m7;
.implements Lpb/l;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lc5/o;->l:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc5/o;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 1
    iput p1, p0, Lc5/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 2
    iput p1, p0, Lc5/o;->l:I

    iput-object p2, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Le5/k;)V
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lc5/o;->l:I

    const-string v1, "trackers"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ld5/d;

    .line 6
    iget-object v2, p1, Le5/k;->b:Le5/f;

    .line 7
    invoke-direct {v1, v2, v0}, Ld5/d;-><init>(Le5/f;I)V

    .line 8
    new-instance v2, Ld5/d;

    .line 9
    iget-object v3, p1, Le5/k;->c:Le5/a;

    .line 10
    invoke-direct {v2, v3}, Ld5/d;-><init>(Le5/a;)V

    .line 11
    new-instance v3, Ld5/d;

    .line 12
    iget-object v4, p1, Le5/k;->e:Le5/f;

    const/4 v5, 0x4

    .line 13
    invoke-direct {v3, v4, v5}, Ld5/d;-><init>(Le5/f;I)V

    .line 14
    new-instance v4, Ld5/d;

    .line 15
    iget-object v6, p1, Le5/k;->d:Le5/f;

    const/4 v7, 0x2

    .line 16
    invoke-direct {v4, v6, v7}, Ld5/d;-><init>(Le5/f;I)V

    .line 17
    new-instance v8, Ld5/d;

    const/4 v9, 0x3

    invoke-direct {v8, v6, v9}, Ld5/d;-><init>(Le5/f;I)V

    .line 18
    new-instance v10, Ld5/g;

    invoke-direct {v10, v6}, Ld5/g;-><init>(Le5/f;)V

    .line 19
    new-instance v11, Ld5/f;

    invoke-direct {v11, v6}, Ld5/f;-><init>(Le5/f;)V

    .line 20
    iget-object p1, p1, Le5/k;->a:Landroid/content/Context;

    .line 21
    sget-object v6, Lc5/p;->a:Ljava/lang/String;

    .line 22
    const-string v6, "context"

    invoke-static {p1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v6, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 24
    new-instance v6, Lc5/g;

    invoke-direct {v6, p1}, Lc5/g;-><init>(Landroid/net/ConnectivityManager;)V

    const/16 p1, 0x8

    .line 25
    new-array p1, p1, [Ld5/e;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    aput-object v3, p1, v7

    aput-object v4, p1, v9

    aput-object v8, p1, v5

    const/4 v0, 0x5

    aput-object v10, p1, v0

    const/4 v0, 0x6

    aput-object v11, p1, v0

    const/4 v0, 0x7

    aput-object v6, p1, v0

    .line 26
    invoke-static {p1}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/o;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public static j(Lpb/a;Lpb/a;Lpb/a;)Lgc/b;
    .locals 12

    invoke-virtual {p1, p0}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Found zero-length section segment"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lgc/b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v10, p0

    move-object v9, p1

    move-object v11, p2

    invoke-direct/range {v2 .. v11}, Lgc/b;-><init>(ZIIILpb/i;ZLpb/a;Lpb/a;Lpb/a;)V

    return-object v2
.end method

.method public static k(Lpb/i;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc5/o;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lc5/o;-><init>(IB)V

    iput-object v0, v1, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lpb/i;->h(Lpb/l;)V

    return-object v0
.end method

.method public static l(Lpb/i;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc5/o;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lc5/o;-><init>(IB)V

    iput-object v0, v1, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lpb/i;->h(Lpb/l;)V

    return-object v0
.end method


# virtual methods
.method public K0(Lmb/h0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lpb/i;)V
    .locals 1

    iget v0, p0, Lc5/o;->l:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lpb/w;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    instance-of v0, p1, Lpb/q;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lpb/q;

    if-nez v0, :cond_3

    instance-of v0, p1, Lpb/w;

    if-eqz v0, :cond_4

    :cond_3
    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lpb/i;->v()Lpb/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b0(Lmb/j0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ltb/a;Ljava/lang/Object;)V
    .locals 13

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    iget-object v0, p1, Ltb/a;->d:Lg5/m;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    new-instance v0, Lg5/m;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lg5/m;-><init>(IZ)V

    iput-object p1, v0, Lg5/m;->m:Ljava/lang/Object;

    iget-object v4, p1, Ltb/a;->b:[Lpb/a;

    iput-object v4, v0, Lg5/m;->n:Ljava/lang/Object;

    array-length v5, v4

    div-int/2addr v5, v1

    new-array v6, v5, [I

    if-gt v3, v5, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    :goto_0
    aput v2, v6, v2

    move v5, v2

    move v7, v3

    :goto_1
    aget-object v8, v4, v5

    add-int/2addr v5, v3

    aget-object v9, v4, v5

    invoke-static {v8, v9}, Lpb/b;->b(Lpb/a;Lpb/a;)I

    move-result v8

    :goto_2
    array-length v9, v4

    if-ge v5, v9, :cond_2

    add-int/lit8 v9, v5, -0x1

    aget-object v9, v4, v9

    aget-object v10, v4, v5

    invoke-static {v9, v10}, Lpb/b;->b(Lpb/a;Lpb/a;)I

    move-result v9

    if-eq v9, v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v8, v7, 0x1

    array-length v9, v6

    if-gt v8, v9, :cond_3

    goto :goto_4

    :cond_3
    array-length v9, v6

    mul-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    :goto_4
    aput v5, v6, v7

    array-length v7, v4

    sub-int/2addr v7, v3

    if-lt v5, v7, :cond_4

    new-array v4, v8, [I

    invoke-static {v6, v2, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v0, Lg5/m;->o:Ljava/lang/Object;

    iput-object v0, p1, Ltb/a;->d:Lg5/m;

    goto :goto_5

    :cond_4
    move v7, v8

    goto :goto_1

    :cond_5
    :goto_5
    iget-object p1, p1, Ltb/a;->d:Lg5/m;

    iget-object v0, p1, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v4, p1, Lg5/m;->n:Ljava/lang/Object;

    check-cast v4, [Lpb/a;

    :goto_6
    array-length v5, v0

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_8

    new-instance v5, Lf7/c0;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lf7/c0;-><init>(I)V

    iput-object p1, v5, Lf7/c0;->c:Ljava/lang/Object;

    iput v2, v5, Lf7/c0;->b:I

    new-instance v6, Lub/b;

    aget v7, v0, v2

    aget-object v7, v4, v7

    iget-wide v7, v7, Lpb/a;->l:D

    add-int/lit8 v9, v2, 0x1

    aget v10, v0, v9

    aget-object v10, v4, v10

    iget-wide v10, v10, Lpb/a;->l:D

    cmpg-double v12, v7, v10

    if-gez v12, :cond_6

    goto :goto_7

    :cond_6
    move-wide v7, v10

    :goto_7
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    iput-object v10, v6, Lub/b;->o:Lub/b;

    iput v3, v6, Lub/b;->n:I

    iput-object p2, v6, Lub/b;->l:Ljava/lang/Object;

    iput-wide v7, v6, Lub/b;->m:D

    iput-object v5, v6, Lub/b;->q:Lf7/c0;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lub/b;

    aget v2, v0, v2

    aget-object v2, v4, v2

    iget-wide v7, v2, Lpb/a;->l:D

    aget v2, v0, v9

    aget-object v2, v4, v2

    iget-wide v10, v2, Lpb/a;->l:D

    cmpl-double v2, v7, v10

    if-lez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide v7, v10

    :goto_8
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v1, v5, Lub/b;->n:I

    iput-wide v7, v5, Lub/b;->m:D

    iput-object v6, v5, Lub/b;->o:Lub/b;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v9

    goto :goto_6

    :cond_8
    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb/a;

    invoke-virtual {p0, v0, p2}, Lc5/o;->c(Ltb/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lpb/i;)V
    .locals 4

    instance-of v0, p1, Lpb/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lpb/x;

    iget-object v0, p1, Lpb/x;->o:Lpb/s;

    iget-object v0, v0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->t()[Lpb/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lgc/e;->g([Lpb/a;Z)[Lpb/a;

    move-result-object v0

    iget-object v2, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    iget-object v2, p1, Lpb/x;->p:[Lpb/s;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    iget-object v2, v2, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->t()[Lpb/a;

    move-result-object v2

    invoke-static {v2, v1}, Lgc/e;->g([Lpb/a;Z)[Lpb/a;

    move-result-object v2

    iget-object v3, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lpb/j;

    if-eqz v0, :cond_1

    :goto_1
    move-object v0, p1

    check-cast v0, Lpb/j;

    iget-object v0, v0, Lpb/j;->o:[Lpb/i;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lc5/o;->e(Lpb/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Iterator;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t know how to spread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()Lla/p;
    .locals 2

    new-instance v0, Lla/p;

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Lla/p;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Lub/a;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lub/b;

    iget v4, v3, Lub/b;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v3, v3, Lub/b;->o:Lub/b;

    iput v2, v3, Lub/b;->p:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lub/b;

    iget v3, v2, Lub/b;->n:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, v2, Lub/b;->p:I

    iget-object v5, v2, Lub/b;->q:Lf7/c0;

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lub/b;

    iget v8, v7, Lub/b;->n:I

    if-ne v8, v4, :cond_4

    iget-object v8, v7, Lub/b;->q:Lf7/c0;

    iget-object v9, v2, Lub/b;->l:Ljava/lang/Object;

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v7, Lub/b;->l:Ljava/lang/Object;

    if-ne v9, v7, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v7, v5, Lf7/c0;->c:Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, Lg5/m;

    iget v7, v5, Lf7/c0;->b:I

    iget-object v10, v8, Lf7/c0;->c:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Lg5/m;

    iget v8, v8, Lf7/c0;->b:I

    iget-object v10, v9, Lg5/m;->o:Ljava/lang/Object;

    check-cast v10, [I

    move-object v11, v10

    aget v10, v11, v7

    add-int/2addr v7, v4

    aget v11, v11, v7

    iget-object v7, v12, Lg5/m;->o:Ljava/lang/Object;

    check-cast v7, [I

    aget v13, v7, v8

    add-int/2addr v8, v4

    aget v14, v7, v8

    move-object/from16 v15, p1

    invoke-virtual/range {v9 .. v15}, Lg5/m;->f(IILg5/m;IILub/a;)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public i(Lorg/codehaus/janino/util/t0;)V
    .locals 11

    sget-boolean v0, Lmb/o6;->p:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->n(Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljb/a;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    const-string v2, "verbose"

    const-string v3, "showClassPoolIndexes"

    const-string v4, "dumpConstantPool"

    const-string v5, "printAllAttributes"

    const-string v6, "printStackMap"

    const-string v7, "showLineNumbers"

    const-string v8, "showVariableNames"

    const-string v9, "symbolicLabels"

    const-string v10, "printAllOffsets"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    const-class v6, Ljb/a;

    invoke-static {v6, v5}, Ljb/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "disasm"

    const-class v4, Ljava/io/InputStream;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Lorg/codehaus/janino/util/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_3
    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic o(Lmb/g0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic o0(Lmb/i0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
