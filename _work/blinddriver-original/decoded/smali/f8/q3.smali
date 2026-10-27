.class public final Lf8/q3;
.super Lg5/s;
.source "SourceFile"


# instance fields
.field public final n:Lf8/r2;

.field public final o:Ljava/lang/reflect/Method;

.field public final p:Ljava/lang/reflect/Method;

.field public final q:Z

.field public final r:Ljava/lang/reflect/Method;

.field public final s:Ljava/lang/reflect/Method;

.field public final t:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    invoke-direct {p0, p2, p3, p4}, Lg5/s;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lf8/v2;->h()Lf8/r2;

    move-result-object v0

    iput-object v0, p0, Lf8/q3;->n:Lf8/r2;

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const-class v1, Lf8/s2;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    invoke-static {v0, v2, v1}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lf8/q3;->o:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getValueDescriptor"

    invoke-static {v0, v3, v2}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lf8/q3;->p:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {p1}, Lf8/w2;->h()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lf8/q3;->q:Z

    if-eqz v1, :cond_1

    const-string p1, "get"

    const-string v0, "Value"

    invoke-static {p1, p2, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {p3, v1, v3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lf8/q3;->r:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lf8/q3;->s:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p1, "add"

    invoke-static {p1, p2, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lf8/q3;->t:Ljava/lang/reflect/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public final o(Lf8/y3;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, Lf8/r3;

    iget-object v2, v1, Lf8/r3;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-boolean v5, p0, Lf8/q3;->q:Z

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lf8/q3;->r:Ljava/lang/reflect/Method;

    invoke-static {v6, p1, v5}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lf8/q3;->n:Lf8/r2;

    invoke-virtual {v6, v5}, Lf8/r2;->g(I)Lf8/s2;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v5, v1, Lf8/r3;->c:Ljava/lang/reflect/Method;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lf8/q3;->p:Ljava/lang/reflect/Method;

    invoke-static {v7, v5, v6}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lf8/l3;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lf8/q3;->q:Z

    if-eqz v0, :cond_0

    check-cast p2, Lf8/s2;

    iget-object p2, p2, Lf8/s2;->l:Lf8/f0;

    iget p2, p2, Lf8/f0;->p:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lf8/q3;->t:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lf8/q3;->o:Ljava/lang/reflect/Method;

    invoke-static {v1, v0, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lg5/s;->p(Lf8/l3;Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lf8/l3;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, Lf8/r3;

    iget-object v2, v1, Lf8/r3;->g:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-boolean v5, p0, Lf8/q3;->q:Z

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lf8/q3;->s:Ljava/lang/reflect/Method;

    invoke-static {v6, p1, v5}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lf8/q3;->n:Lf8/r2;

    invoke-virtual {v6, v5}, Lf8/r2;->g(I)Lf8/s2;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v5, v1, Lf8/r3;->d:Ljava/lang/reflect/Method;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lf8/q3;->p:Ljava/lang/reflect/Method;

    invoke-static {v7, v5, v6}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
