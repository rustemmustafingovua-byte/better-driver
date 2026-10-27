.class public final Lf6/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6/v;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lf6/v;->a:I

    return-void
.end method

.method public constructor <init>(Lb6/i;Le6/c0;[Le6/y;ZZ)V
    .locals 5

    .line 3
    iget-object p1, p1, Lb6/i;->q:Lb6/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lf6/v;->b:Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 5
    iget-object p2, p1, Ld6/m;->m:Ld6/a;

    .line 6
    iget-object p2, p2, Ld6/a;->r:Ljava/util/Locale;

    .line 7
    new-instance p4, Lf6/u;

    invoke-direct {p4, p2}, Lf6/u;-><init>(Ljava/util/Locale;)V

    .line 8
    iput-object p4, p0, Lf6/v;->c:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lf6/v;->c:Ljava/lang/Object;

    .line 10
    :goto_0
    array-length p2, p3

    .line 11
    iput p2, p0, Lf6/v;->a:I

    .line 12
    new-array p4, p2, [Le6/y;

    iput-object p4, p0, Lf6/v;->d:Ljava/lang/Object;

    const/4 p4, 0x0

    if-eqz p5, :cond_2

    .line 13
    array-length p5, p3

    move v0, p4

    :goto_1
    if-ge v0, p5, :cond_2

    aget-object v1, p3, v0

    .line 14
    invoke-virtual {v1}, Le6/y;->x()Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    invoke-virtual {v1, p1}, Lj6/y;->a(Ld6/m;)Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb6/i0;

    .line 18
    iget-object v4, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 19
    iget-object v3, v3, Lb6/i0;->l:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge p4, p2, :cond_4

    .line 21
    aget-object p1, p3, p4

    .line 22
    iget-object p5, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast p5, [Le6/y;

    aput-object p1, p5, p4

    .line 23
    invoke-virtual {p1}, Le6/y;->x()Z

    move-result p5

    if-nez p5, :cond_3

    .line 24
    iget-object p5, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast p5, Ljava/util/HashMap;

    .line 25
    iget-object v0, p1, Le6/y;->n:Lb6/i0;

    .line 26
    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    .line 27
    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static h(Lb6/i;Le6/c0;[Le6/y;Z)Lf6/v;
    .locals 7

    array-length v0, p2

    new-array v4, v0, [Le6/y;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Le6/y;->u()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Le6/y;->o:Lb6/l;

    invoke-virtual {p0, v3, v2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Le6/y;->G(Lb6/n;)Le6/y;

    move-result-object v2

    :cond_0
    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lf6/v;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lf6/v;-><init>(Lb6/i;Le6/c0;[Le6/y;ZZ)V

    return-object v1
.end method


# virtual methods
.method public a(IILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Lg5/l;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p0, :cond_0

    iget-object v2, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v2, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Lg5/l;

    goto :goto_0

    :cond_0
    invoke-static {p4, v0, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p2

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Should have gotten "

    const-string p3, " entries, got "

    invoke-static {p2, p1, p3, v1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast v0, Lg5/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lf6/v;->c:Ljava/lang/Object;

    iput-object v0, p0, Lf6/v;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lf6/v;->a:I

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcc/f;

    invoke-interface {v3}, Lcc/f;->c()[Lpb/a;

    move-result-object v4

    invoke-static {v4, v3}, Lr5/h1;->l([Lpb/a;Lcc/f;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lwb/a;

    iget-object v7, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast v7, Lpb/h;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lwb/a;->b()Lpb/h;

    move-result-object v8

    invoke-virtual {v7, v8}, Lpb/h;->h(Lpb/h;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_2
    iget v7, p0, Lf6/v;->a:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lf6/v;->a:I

    iput v7, v6, Lwb/a;->f:I

    iget-object v7, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v7, Lxb/a;

    invoke-virtual {v6}, Lwb/a;->b()Lpb/h;

    move-result-object v8

    iget-boolean v9, v7, Lxb/a;->i:Z

    if-nez v9, :cond_3

    iget v9, v7, Lxb/a;->c:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Lxb/a;->c:I

    iget-object v9, v7, Lxb/a;->a:Ljava/util/ArrayList;

    new-instance v10, Lxb/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v8, v10, Lxb/b;->a:Lpb/h;

    iput-object v6, v10, Lxb/b;->b:Lwb/a;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Lxb/a;->d:Lpb/h;

    invoke-virtual {v7, v8}, Lpb/h;->c(Lpb/h;)V

    iget-object v7, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot insert items after tree is built."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public d([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg5/l;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {v0, v2, p1, v1}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v1, Lg5/l;

    if-nez v1, :cond_0

    iput-object v0, p0, Lf6/v;->c:Ljava/lang/Object;

    iput-object v0, p0, Lf6/v;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast v1, Lg5/l;

    iget-object v2, v1, Lg5/l;->n:Ljava/lang/Object;

    check-cast v2, Lg5/l;

    if-nez v2, :cond_3

    iput-object v0, v1, Lg5/l;->n:Ljava/lang/Object;

    iput-object v0, p0, Lf6/v;->c:Ljava/lang/Object;

    :goto_0
    array-length p1, p1

    iget v0, p0, Lf6/v;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lf6/v;->a:I

    const/16 p0, 0x4000

    if-ge p1, p0, :cond_1

    add-int/2addr p1, p1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x40000

    if-ge p1, p0, :cond_2

    shr-int/lit8 p0, p1, 0x2

    add-int/2addr p1, p0

    :cond_2
    :goto_1
    new-array p0, p1, [Ljava/lang/Object;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public e()Lg5/l;
    .locals 6

    iget-object v0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v0, Lmb/q;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast v0, Lmb/q;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v0, Lf7/h;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, v0, Lf7/h;->a:Lf7/g;

    const-string v1, "Key must not be null"

    invoke-static {v0, v1}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg5/l;

    new-instance v2, Ld1/c0;

    iget-object v3, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v3, Lf7/h;

    iget v4, p0, Lf6/v;->a:I

    invoke-direct {v2, p0, v3, v4}, Ld1/c0;-><init>(Lf6/v;Lf7/h;I)V

    new-instance v3, Lg5/e;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v0, v5}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    const/4 p0, 0x4

    invoke-direct {v1, p0, v2, v3}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set holder"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set unregister function"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set register function"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Lb6/i;Lf6/z;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v0, Le6/c0;

    iget-object p0, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast p0, [Le6/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lf6/z;->b:Lb6/i;

    iget-object v2, p2, Lf6/z;->j:Le6/w;

    iget-object v3, p2, Lf6/z;->g:Ljava/util/BitSet;

    iget-object v4, p2, Lf6/z;->d:[Ljava/lang/Object;

    iget v5, p2, Lf6/z;->e:I

    const/4 v6, 0x0

    if-lez v5, :cond_2

    if-nez v3, :cond_1

    iget v3, p2, Lf6/z;->f:I

    array-length v5, v4

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_0

    aget-object v8, p0, v7

    invoke-virtual {p2, v8}, Lf6/z;->a(Le6/y;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v5, v4

    move v7, v6

    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v7

    if-ge v7, v5, :cond_2

    aget-object v8, p0, v7

    invoke-virtual {p2, v8}, Lf6/z;->a(Le6/y;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Le6/w;->e()I

    move-result v3

    invoke-virtual {v2}, Le6/w;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p2, Lf6/z;->k:Lf6/x;

    :goto_2
    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v5, v2}, Lf2/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v5, Lf2/b;->a:Ljava/lang/Object;

    check-cast v5, Lf2/b;

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    throw p0

    :cond_3
    aput-object v2, v4, v3

    :cond_4
    sget-object v2, Lb6/j;->z:Lb6/j;

    invoke-virtual {v1, v2}, Lb6/i;->n0(Lb6/j;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    :goto_3
    array-length v2, p0

    if-ge v6, v2, :cond_6

    aget-object v2, v4, v6

    if-eqz v2, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    aget-object p0, p0, v6

    iget-object p1, p0, Le6/y;->n:Lb6/i0;

    iget-object p1, p1, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p0}, Le6/y;->o()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled"

    invoke-virtual {v1, p0, p2, p1}, Lb6/i;->u0(Lb6/f;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_6
    invoke-virtual {v0, p1, v4}, Le6/c0;->t(Lb6/i;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object v0, p2, Lf6/z;->c:Lf6/r;

    if-eqz v0, :cond_8

    iget-object p2, p2, Lf6/z;->i:Ljava/lang/Object;

    if-eqz p2, :cond_7

    iget-object p0, v0, Lf6/r;->n:Lr5/d1;

    invoke-virtual {p1, p2, p0}, Lb6/i;->X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    :cond_7
    invoke-virtual {p1, v0, p0}, Lb6/i;->z0(Lf6/r;Ljava/lang/Object;)V

    throw v3

    :cond_8
    iget-object p1, p2, Lf6/z;->h:Lf2/b;

    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Lf2/b;->a(Ljava/lang/Object;)V

    iget-object p1, p1, Lf2/b;->a:Ljava/lang/Object;

    check-cast p1, Lf2/b;

    goto :goto_4

    :cond_9
    return-object p0
.end method

.method public g([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf6/v;->a:I

    add-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3, p1}, Lf6/v;->a(IILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf6/v;->b()V

    return-object p3
.end method

.method public i(Ljava/lang/String;)Le6/y;
    .locals 0

    iget-object p0, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le6/y;

    return-object p0
.end method

.method public j()I
    .locals 2

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lm1/f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public k()I
    .locals 2

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lm1/f;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public l()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf6/v;->b()V

    iget-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public m(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lf6/v;->b()V

    iget-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public n(F)V
    .locals 2

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget v0, p0, Lf6/v;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lf6/v;->a:I

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-static {p1}, Lm1/v;->v(I)Landroid/graphics/BlendMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public p(J)V
    .locals 0

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-static {p1, p2}, Lm1/v;->y(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public q(Lm1/j;)V
    .locals 0

    iput-object p1, p0, Lf6/v;->d:Ljava/lang/Object;

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lm1/j;->a:Landroid/graphics/BlendModeColorFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public s(Landroid/graphics/Shader;)V
    .locals 0

    iput-object p1, p0, Lf6/v;->c:Ljava/lang/Object;

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public u(I)V
    .locals 1

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public v(F)V
    .locals 0

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public w(I)V
    .locals 1

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;
    .locals 6

    new-instance v0, Lf6/z;

    iget v3, p0, Lf6/v;->a:I

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lf6/z;-><init>(Ls5/k;Lb6/i;ILf6/r;Le6/w;)V

    return-object v0
.end method
