.class public abstract Lf8/l3;
.super Lf8/a;
.source "SourceFile"


# instance fields
.field public l:Z

.field public m:Lf8/i5;


# direct methods
.method public constructor <init>(Lf8/m3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lf8/i5;->m:Lf8/i5;

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    return-void
.end method


# virtual methods
.method public B(Lf8/v2;)Lf8/a;
    .locals 0

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object p0

    invoke-static {p0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object p0

    invoke-interface {p0}, Lf8/p3;->e()Lf8/a;

    move-result-object p0

    return-object p0
.end method

.method public final G(Lf8/v2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v0

    invoke-static {v0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lf8/p3;->p(Lf8/l3;Ljava/lang/Object;)V

    return-void
.end method

.method public final H()Lf8/l3;
    .locals 1

    invoke-interface {p0}, Lf8/q4;->a()Lf8/c;

    move-result-object v0

    invoke-virtual {v0}, Lf8/c;->d()Lf8/a;

    move-result-object v0

    check-cast v0, Lf8/l3;

    invoke-virtual {p0}, Lf8/a;->s()Lf8/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object v0
.end method

.method public final I()Ljava/util/TreeMap;
    .locals 8

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v1

    iget-object v1, v1, Lf8/x3;->a:Lf8/m2;

    invoke-virtual {v1}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/v2;

    iget-object v5, v4, Lf8/v2;->u:Lf8/z2;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget v4, v5, Lf8/z2;->q:I

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v4

    invoke-static {v4, v5}, Lf8/x3;->a(Lf8/x3;Lf8/z2;)Lg5/i;

    move-result-object v4

    iget-object v7, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v7, Lf8/v2;

    if-eqz v7, :cond_0

    invoke-virtual {p0, v7}, Lf8/l3;->j(Lf8/v2;)Z

    move-result v4

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lg5/i;->o:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v7}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/b4;

    invoke-interface {v4}, Lf8/b4;->a()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v4

    invoke-static {v4, v5}, Lf8/x3;->a(Lf8/x3;Lf8/z2;)Lg5/i;

    move-result-object v4

    iget-object v5, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v5, Lf8/v2;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lf8/l3;->j(Lf8/v2;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v5

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lg5/i;->o:Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, p0, v7}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf8/b4;

    invoke-interface {v5}, Lf8/b4;->a()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v4, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v4, Lf8/m2;

    invoke-virtual {v4, v5}, Lf8/m2;->h(I)Lf8/v2;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lf8/v2;->l()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, Lf8/l3;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v4}, Lf8/l3;->j(Lf8/v2;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v4}, Lf8/l3;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/2addr v3, v6

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public abstract L()Lf8/x3;
.end method

.method public final M(Lf8/i5;)Lf8/l3;
    .locals 2

    iget-object v0, p0, Lf8/l3;->m:Lf8/i5;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v1, p1}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v1}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf8/l3;->Q(Lf8/i5;)Lf8/l3;

    move-result-object p0

    return-object p0
.end method

.method public final N()V
    .locals 0

    return-void
.end method

.method public final O()V
    .locals 0

    return-void
.end method

.method public final P(Lf8/v2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v0

    invoke-static {v0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lf8/p3;->b(Lf8/l3;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract Q(Lf8/i5;)Lf8/l3;
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/l3;->m:Lf8/i5;

    return-object p0
.end method

.method public j(Lf8/v2;)Z
    .locals 1

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v0

    invoke-static {v0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object p1

    invoke-interface {p1, p0}, Lf8/p3;->k(Lf8/l3;)Z

    move-result p0

    return p0
.end method

.method public l()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lf8/l3;->I()Ljava/util/TreeMap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public o(Lf8/v2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf8/l3;->L()Lf8/x3;

    move-result-object v0

    invoke-static {v0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object v0

    invoke-interface {v0, p0}, Lf8/p3;->q(Lf8/l3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method
