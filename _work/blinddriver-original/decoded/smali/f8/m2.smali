.class public final Lf8/m2;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:Lf8/t;

.field public final m:Ljava/lang/String;

.field public final n:Lf8/w2;

.field public final o:[Lf8/m2;

.field public final p:[Lf8/r2;

.field public final q:[Lf8/v2;

.field public final r:[Lf8/v2;

.field public final s:[Lf8/z2;


# direct methods
.method public constructor <init>(Lf8/t;Lf8/w2;Lf8/m2;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/m2;->l:Lf8/t;

    .line 3
    invoke-virtual {p1}, Lf8/t;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lf8/b3;->a(Lf8/w2;Lf8/m2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf8/m2;->m:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lf8/m2;->n:Lf8/w2;

    .line 5
    iget-object v0, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6
    new-array v0, v0, [Lf8/z2;

    iput-object v0, p0, Lf8/m2;->s:[Lf8/z2;

    const/4 v7, 0x0

    move v0, v7

    .line 7
    :goto_0
    iget-object v1, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lf8/m2;->s:[Lf8/z2;

    new-instance v4, Lf8/z2;

    .line 9
    iget-object v5, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf8/p1;

    .line 10
    invoke-direct {v4, v5, p2, p0, v0}, Lf8/z2;-><init>(Lf8/p1;Lf8/w2;Lf8/m2;I)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p1, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12
    new-array v0, v0, [Lf8/m2;

    iput-object v0, p0, Lf8/m2;->o:[Lf8/m2;

    move v0, v7

    .line 13
    :goto_1
    iget-object v1, p1, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 14
    iget-object v1, p0, Lf8/m2;->o:[Lf8/m2;

    new-instance v4, Lf8/m2;

    .line 15
    iget-object v5, p1, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf8/t;

    .line 16
    invoke-direct {v4, v5, p2, p0}, Lf8/m2;-><init>(Lf8/t;Lf8/w2;Lf8/m2;)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p1, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 18
    new-array v0, v0, [Lf8/r2;

    iput-object v0, p0, Lf8/m2;->p:[Lf8/r2;

    move v0, v7

    .line 19
    :goto_2
    iget-object v1, p1, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 20
    iget-object v1, p0, Lf8/m2;->p:[Lf8/r2;

    new-instance v4, Lf8/r2;

    .line 21
    iget-object v5, p1, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf8/z;

    .line 22
    invoke-direct {v4, v5, p2, p0}, Lf8/r2;-><init>(Lf8/z;Lf8/w2;Lf8/m2;)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 23
    :cond_2
    iget-object v0, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 24
    new-array v0, v0, [Lf8/v2;

    iput-object v0, p0, Lf8/m2;->q:[Lf8/v2;

    move v4, v7

    .line 25
    :goto_3
    iget-object v0, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 26
    iget-object v8, p0, Lf8/m2;->q:[Lf8/v2;

    new-instance v0, Lf8/v2;

    .line 27
    iget-object v1, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/q0;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p2

    .line 28
    invoke-direct/range {v0 .. v5}, Lf8/v2;-><init>(Lf8/q0;Lf8/w2;Lf8/m2;IZ)V

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 29
    :cond_3
    iget-object v0, p1, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 30
    new-array v0, v0, [Lf8/v2;

    iput-object v0, p0, Lf8/m2;->r:[Lf8/v2;

    move v4, v7

    .line 31
    :goto_4
    iget-object v0, p1, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 32
    iget-object v8, p0, Lf8/m2;->r:[Lf8/v2;

    new-instance v0, Lf8/v2;

    .line 33
    iget-object v1, p1, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/q0;

    const/4 v5, 0x1

    move-object v3, p0

    move-object v2, p2

    .line 34
    invoke-direct/range {v0 .. v5}, Lf8/v2;-><init>(Lf8/q0;Lf8/w2;Lf8/m2;IZ)V

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move v0, v7

    .line 35
    :goto_5
    iget-object v1, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 36
    iget-object v1, p0, Lf8/m2;->s:[Lf8/z2;

    aget-object v1, v1, v0

    .line 37
    iget v4, v1, Lf8/z2;->q:I

    .line 38
    new-array v4, v4, [Lf8/v2;

    .line 39
    iput-object v4, v1, Lf8/z2;->r:[Lf8/v2;

    .line 40
    iput v7, v1, Lf8/z2;->q:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v7

    .line 41
    :goto_6
    iget-object v1, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 42
    iget-object v1, p0, Lf8/m2;->q:[Lf8/v2;

    aget-object v1, v1, v0

    .line 43
    iget-object v4, v1, Lf8/v2;->u:Lf8/z2;

    if-eqz v4, :cond_6

    .line 44
    iget-object v5, v4, Lf8/z2;->r:[Lf8/v2;

    .line 45
    iget v8, v4, Lf8/z2;->q:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v4, Lf8/z2;->q:I

    .line 46
    aput-object v1, v5, v8

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 47
    :cond_7
    iget-object v0, p0, Lf8/m2;->s:[Lf8/z2;

    array-length v1, v0

    move v4, v7

    move v5, v4

    :goto_7
    if-ge v4, v1, :cond_a

    aget-object v6, v0, v4

    .line 48
    iget-object v6, v6, Lf8/z2;->r:[Lf8/v2;

    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    aget-object v6, v6, v7

    .line 49
    iget-boolean v6, v6, Lf8/v2;->q:Z

    if-eqz v6, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    if-gtz v5, :cond_9

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 50
    :cond_9
    new-instance v0, Lf8/q2;

    const-string v1, "Synthetic oneofs must come last."

    .line 51
    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    :cond_a
    iget-object v0, p0, Lf8/m2;->s:[Lf8/z2;

    array-length v0, v0

    .line 54
    iget-object v0, p2, Lf8/w2;->r:Lf8/p2;

    .line 55
    invoke-virtual {v0, p0}, Lf8/p2;->b(Lf8/x2;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, ""

    move-object v1, p1

    .line 61
    :goto_0
    sget-object v3, Lf8/t;->z:Lf8/t;

    invoke-virtual {v3}, Lf8/t;->y()Lf8/m;

    move-result-object v3

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget v4, v3, Lf8/m;->n:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v3, Lf8/m;->n:I

    .line 64
    iput-object v1, v3, Lf8/m;->o:Ljava/io/Serializable;

    .line 65
    invoke-virtual {v3}, Lf8/l3;->O()V

    .line 66
    sget-object v1, Lf8/p;->s:Lf8/p;

    invoke-virtual {v1}, Lf8/p;->x()Lf8/o;

    move-result-object v1

    .line 67
    iget v4, v1, Lf8/o;->n:I

    or-int/2addr v4, v5

    iput v4, v1, Lf8/o;->n:I

    .line 68
    iput v5, v1, Lf8/o;->o:I

    .line 69
    invoke-virtual {v1}, Lf8/l3;->O()V

    .line 70
    iget v4, v1, Lf8/o;->n:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lf8/o;->n:I

    const/high16 v4, 0x20000000

    .line 71
    iput v4, v1, Lf8/o;->p:I

    .line 72
    invoke-virtual {v1}, Lf8/l3;->O()V

    .line 73
    invoke-virtual {v1}, Lf8/o;->R()Lf8/p;

    move-result-object v1

    .line 74
    iget v4, v3, Lf8/m;->n:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_1

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Lf8/m;->t:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lf8/m;->t:Ljava/util/List;

    .line 76
    iget v4, v3, Lf8/m;->n:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lf8/m;->n:I

    .line 77
    :cond_1
    iget-object v4, v3, Lf8/m;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v3}, Lf8/l3;->O()V

    .line 79
    invoke-virtual {v3}, Lf8/m;->R()Lf8/t;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lf8/t;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iput-object v1, p0, Lf8/m2;->l:Lf8/t;

    .line 82
    iput-object p1, p0, Lf8/m2;->m:Ljava/lang/String;

    .line 83
    new-array p1, v2, [Lf8/m2;

    iput-object p1, p0, Lf8/m2;->o:[Lf8/m2;

    .line 84
    new-array p1, v2, [Lf8/r2;

    iput-object p1, p0, Lf8/m2;->p:[Lf8/r2;

    .line 85
    new-array p1, v2, [Lf8/v2;

    iput-object p1, p0, Lf8/m2;->q:[Lf8/v2;

    .line 86
    new-array p1, v2, [Lf8/v2;

    iput-object p1, p0, Lf8/m2;->r:[Lf8/v2;

    .line 87
    new-array p1, v2, [Lf8/z2;

    iput-object p1, p0, Lf8/m2;->s:[Lf8/z2;

    .line 88
    new-instance p1, Lf8/w2;

    invoke-direct {p1, v0, p0}, Lf8/w2;-><init>(Ljava/lang/String;Lf8/m2;)V

    iput-object p1, p0, Lf8/m2;->n:Lf8/w2;

    return-void

    .line 89
    :cond_2
    invoke-static {v1}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/m2;->n:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/m2;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/m2;->l:Lf8/t;

    invoke-virtual {p0}, Lf8/t;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/m2;->l:Lf8/t;

    return-object p0
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lf8/m2;->o:[Lf8/m2;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lf8/m2;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf8/m2;->q:[Lf8/v2;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lf8/v2;->f(Lf8/v2;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lf8/m2;->r:[Lf8/v2;

    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_2

    aget-object v1, p0, v2

    invoke-static {v1}, Lf8/v2;->f(Lf8/v2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;)Lf8/v2;
    .locals 2

    iget-object v0, p0, Lf8/m2;->n:Lf8/w2;

    iget-object v0, v0, Lf8/w2;->r:Lf8/p2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lf8/m2;->m:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p0}, Lf8/p2;->d(ILjava/lang/String;)Lf8/x2;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lf8/v2;

    if-eqz p1, :cond_0

    check-cast p0, Lf8/v2;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(I)Lf8/v2;
    .locals 2

    iget-object v0, p0, Lf8/m2;->n:Lf8/w2;

    iget-object v0, v0, Lf8/w2;->r:Lf8/p2;

    iget-object v0, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Lf8/n2;

    invoke-direct {v1, p0, p1}, Lf8/n2;-><init>(Lf8/x2;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/v2;

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf8/m2;->q:[Lf8/v2;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf8/m2;->o:[Lf8/m2;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf8/m2;->s:[Lf8/z2;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final l(I)Z
    .locals 2

    iget-object p0, p0, Lf8/m2;->l:Lf8/t;

    iget-object p0, p0, Lf8/t;->t:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/p;

    iget v1, v0, Lf8/p;->o:I

    if-gt v1, p1, :cond_0

    iget v0, v0, Lf8/p;->p:I

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
