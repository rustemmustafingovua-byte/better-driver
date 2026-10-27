.class public final Lpa/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILpb/i;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpa/y;->a:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v0, Lg5/c;

    new-instance v1, Lmb/q;

    const/16 v2, 0x19

    .line 27
    invoke-direct {v1, v2}, Lmb/q;-><init>(I)V

    .line 28
    invoke-direct {v0, v1}, Lg5/c;-><init>(Lmb/q;)V

    iput-object v0, p0, Lpa/y;->d:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpa/y;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lpa/y;->b:Z

    .line 31
    iput p1, p0, Lpa/y;->c:I

    .line 32
    iput-object p2, p0, Lpa/y;->e:Ljava/lang/Object;

    .line 33
    sget-object p1, Lnb/a;->b:Lnb/a;

    iput-object p1, p0, Lpa/y;->g:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0, p2}, Lpa/y;->a(Lpb/i;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lla/a;Lm2/j;Lpa/a;Z)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionUser"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpa/y;->d:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lpa/y;->e:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lpa/y;->f:Ljava/lang/Object;

    .line 5
    iput-boolean p4, p0, Lpa/y;->b:Z

    .line 6
    sget-object p2, Lu8/r;->l:Lu8/r;

    iput-object p2, p0, Lpa/y;->g:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lpa/y;->h:Ljava/lang/Object;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lpa/y;->a:Ljava/util/ArrayList;

    .line 9
    iget-object p2, p1, Lla/a;->h:Lla/r;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "url"

    invoke-static {p2, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lla/r;->g()Ljava/net/URI;

    move-result-object p3

    .line 12
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lma/e;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, p1, Lla/a;->g:Ljava/net/ProxySelector;

    .line 15
    invoke-virtual {p1, p3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p1}, Lma/e;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lma/e;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 20
    :goto_1
    iput-object p1, p0, Lpa/y;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lpa/y;->c:I

    .line 22
    const-string p0, "url"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lpb/i;)V
    .locals 8

    iget v0, p0, Lpa/y;->c:I

    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lpb/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lpa/y;->b:Z

    :cond_1
    instance-of v3, p1, Lpb/x;

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    check-cast p1, Lpb/x;

    iget-object v0, p1, Lpb/x;->o:Lpb/s;

    invoke-virtual {p0, v0, v4, v2}, Lpa/y;->c(Lpb/s;II)V

    move v0, v2

    :goto_0
    iget-object v1, p1, Lpb/x;->p:[Lpb/s;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v2, v4}, Lpa/y;->c(Lpb/s;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    instance-of v3, p1, Lpb/q;

    if-eqz v3, :cond_8

    check-cast p1, Lpb/q;

    iget-object v1, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->t()[Lpb/a;

    move-result-object v1

    const/4 v3, 0x1

    move v5, v3

    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_5

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v1, v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Lpb/c;

    invoke-direct {v5, v1}, Lpb/c;-><init>([Lpb/a;)V

    sget-object v1, Lpb/c;->l:[Lpb/a;

    invoke-virtual {v5, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lpb/a;

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    array-length v5, v1

    if-ge v5, v4, :cond_6

    aget-object p0, v1, v2

    return-void

    :cond_6
    new-instance v5, Ltb/a;

    new-instance v6, Lq3/k;

    invoke-direct {v6, v0, v2}, Lq3/k;-><init>(II)V

    invoke-direct {v5, v1, v6}, Ltb/a;-><init>([Lpb/a;Lq3/k;)V

    iget-object v6, p0, Lpa/y;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length p1, v1

    if-lt p1, v4, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v2

    :goto_4
    const-string v4, "found LineString with single point"

    invoke-static {v4, p1}, Ly4/s;->w(Ljava/lang/String;Z)V

    aget-object p1, v1, v2

    invoke-virtual {p0, v0, p1}, Lpa/y;->g(ILpb/a;)V

    array-length p1, v1

    sub-int/2addr p1, v3

    aget-object p1, v1, p1

    invoke-virtual {p0, v0, p1}, Lpa/y;->g(ILpb/a;)V

    return-void

    :cond_8
    instance-of v3, p1, Lpb/w;

    if-eqz v3, :cond_9

    check-cast p1, Lpb/w;

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lpa/y;->h(ILpb/a;I)V

    return-void

    :cond_9
    instance-of v0, p1, Lpb/u;

    if-eqz v0, :cond_a

    check-cast p1, Lpb/u;

    invoke-virtual {p0, p1}, Lpa/y;->b(Lpb/j;)V

    return-void

    :cond_a
    instance-of v0, p1, Lpb/t;

    if-eqz v0, :cond_b

    check-cast p1, Lpb/t;

    invoke-virtual {p0, p1}, Lpa/y;->b(Lpb/j;)V

    return-void

    :cond_b
    if-eqz v1, :cond_c

    check-cast p1, Lpb/v;

    invoke-virtual {p0, p1}, Lpa/y;->b(Lpb/j;)V

    return-void

    :cond_c
    instance-of v0, p1, Lpb/j;

    if-eqz v0, :cond_d

    check-cast p1, Lpb/j;

    invoke-virtual {p0, p1}, Lpa/y;->b(Lpb/j;)V

    return-void

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lpb/j;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lpb/j;->o:[Lpb/i;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lpa/y;->a(Lpb/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lpb/s;II)V
    .locals 10

    iget v0, p0, Lpa/y;->c:I

    invoke-virtual {p1}, Lpb/q;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->t()[Lpb/a;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v1, v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lpb/c;

    invoke-direct {v3, v1}, Lpb/c;-><init>([Lpb/a;)V

    sget-object v1, Lpb/c;->l:[Lpb/a;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lpb/a;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v3, v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    aget-object p0, v1, v5

    return-void

    :cond_3
    invoke-static {v1}, Lb6/g;->x([Lpb/a;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v9, p3

    move p3, p2

    move p2, v9

    :cond_4
    new-instance v3, Ltb/a;

    new-instance v4, Lq3/k;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lq3/k;-><init>(IZ)V

    const/4 v6, 0x2

    new-array v7, v6, [Lq5/a;

    iput-object v7, v4, Lq3/k;->m:Ljava/lang/Object;

    new-instance v8, Lq5/a;

    invoke-direct {v8}, Lq5/a;-><init>()V

    aput-object v8, v7, v5

    new-instance v8, Lq5/a;

    invoke-direct {v8}, Lq5/a;-><init>()V

    aput-object v8, v7, v2

    aget-object v7, v7, v0

    iget-object v7, v7, Lq5/a;->m:[I

    aput v2, v7, v5

    aput p2, v7, v2

    aput p3, v7, v6

    invoke-direct {v3, v1, v4}, Ltb/a;-><init>([Lpb/a;Lq3/k;)V

    iget-object p2, p0, Lpa/y;->f:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object p1, v1, v5

    invoke-virtual {p0, v0, p1, v2}, Lpa/y;->h(ILpb/a;I)V

    return-void
.end method

.method public d(Lnb/d;)V
    .locals 8

    new-instance v0, Lub/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lub/a;-><init>(Lnb/d;ZZ)V

    new-instance p1, Lc5/o;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4}, Lc5/o;-><init>(IB)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lc5/o;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lpa/y;->e:Ljava/lang/Object;

    check-cast v3, Lpb/i;

    instance-of v4, v3, Lpb/s;

    iget-object v5, p0, Lpa/y;->a:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    instance-of v4, v3, Lpb/x;

    if-nez v4, :cond_1

    instance-of v3, v3, Lpb/v;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v5, v3}, Lc5/o;->d(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ltb/a;

    invoke-virtual {p1, v6, v6}, Lc5/o;->c(Ltb/a;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Lc5/o;->h(Lub/a;)V

    iget p1, p0, Lpa/y;->c:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_3
    if-ge v2, v0, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ltb/a;

    iget-object v4, v3, Le1/b;->a:Ljava/lang/Object;

    check-cast v4, Lq3/k;

    invoke-virtual {v4, p1}, Lq3/k;->j(I)I

    move-result v4

    iget-object v3, v3, Ltb/a;->c:Lk0/l;

    iget-object v3, v3, Lk0/l;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltb/c;

    iget-object v6, v6, Ltb/c;->l:Lpb/a;

    iget-object v7, p0, Lpa/y;->d:Ljava/lang/Object;

    check-cast v7, Lg5/c;

    iget-object v7, v7, Lg5/c;->m:Ljava/lang/Object;

    check-cast v7, Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltb/d;

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, v7, Le1/b;->a:Ljava/lang/Object;

    check-cast v7, Lq3/k;

    if-eqz v7, :cond_5

    invoke-virtual {v7, p1}, Lq3/k;->j(I)I

    move-result v7

    if-ne v7, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    if-ne v4, v1, :cond_6

    iget-boolean v7, p0, Lpa/y;->b:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0, p1, v6}, Lpa/y;->g(ILpb/a;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, v6, v4}, Lpa/y;->h(ILpb/a;I)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public e()Ljava/util/Collection;
    .locals 6

    iget-object v0, p0, Lpa/y;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lpa/y;->d:Ljava/lang/Object;

    check-cast v0, Lg5/c;

    iget v1, p0, Lpa/y;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lg5/c;->j()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltb/d;

    iget-object v4, v3, Le1/b;->a:Ljava/lang/Object;

    check-cast v4, Lq3/k;

    invoke-virtual {v4, v1}, Lq3/k;->j(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lpa/y;->h:Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lpa/y;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lpa/y;->c:I

    iget-object v1, p0, Lpa/y;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public g(ILpb/a;)V
    .locals 3

    iget-object v0, p0, Lpa/y;->d:Ljava/lang/Object;

    check-cast v0, Lg5/c;

    invoke-virtual {v0, p2}, Lg5/c;->e(Lpb/a;)Ltb/d;

    move-result-object p2

    iget-object p2, p2, Le1/b;->a:Ljava/lang/Object;

    check-cast p2, Lq3/k;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lq3/k;->k(II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x2

    :cond_0
    iget-object p0, p0, Lpa/y;->g:Ljava/lang/Object;

    check-cast p0, Lnb/a;

    invoke-virtual {p0, v2}, Lnb/a;->a(I)Z

    move-result p0

    iget-object p2, p2, Lq3/k;->m:Ljava/lang/Object;

    check-cast p2, [Lq5/a;

    aget-object p1, p2, p1

    iget-object p1, p1, Lq5/a;->m:[I

    aput p0, p1, v0

    return-void
.end method

.method public h(ILpb/a;I)V
    .locals 0

    iget-object p0, p0, Lpa/y;->d:Ljava/lang/Object;

    check-cast p0, Lg5/c;

    invoke-virtual {p0, p2}, Lg5/c;->e(Lpb/a;)Ltb/d;

    move-result-object p0

    iget-object p2, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p2, Lq3/k;

    if-nez p2, :cond_0

    new-instance p2, Lq3/k;

    invoke-direct {p2, p1, p3}, Lq3/k;-><init>(II)V

    iput-object p2, p0, Le1/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p2, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    aget-object p0, p0, p1

    const/4 p1, 0x0

    iget-object p0, p0, Lq5/a;->m:[I

    aput p3, p0, p1

    return-void
.end method
