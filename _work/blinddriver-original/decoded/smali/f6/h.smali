.class public final Lf6/h;
.super Le6/y;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final y:Lj6/f;

.field public final transient z:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lf6/h;Lb6/i0;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Le6/y;-><init>(Le6/y;Lb6/i0;)V

    .line 11
    iget-object p2, p1, Lf6/h;->y:Lj6/f;

    iput-object p2, p0, Lf6/h;->y:Lj6/f;

    .line 12
    iget-object p2, p1, Lf6/h;->z:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    .line 13
    iget-boolean p1, p1, Lf6/h;->A:Z

    iput-boolean p1, p0, Lf6/h;->A:Z

    return-void
.end method

.method public constructor <init>(Lf6/h;Lb6/n;Le6/r;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Le6/y;-><init>(Le6/y;Lb6/n;Le6/r;)V

    .line 7
    iget-object p2, p1, Lf6/h;->y:Lj6/f;

    iput-object p2, p0, Lf6/h;->y:Lj6/f;

    .line 8
    iget-object p1, p1, Lf6/h;->z:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    .line 9
    invoke-static {p3}, Lf6/q;->a(Le6/r;)Z

    move-result p1

    iput-boolean p1, p0, Lf6/h;->A:Z

    return-void
.end method

.method public constructor <init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;Lj6/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le6/y;-><init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;)V

    .line 2
    iput-object p5, p0, Lf6/h;->y:Lj6/f;

    .line 3
    iget-object p1, p5, Lj6/f;->n:Ljava/lang/reflect/Field;

    .line 4
    iput-object p1, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    .line 5
    iget-object p1, p0, Le6/y;->s:Le6/r;

    invoke-static {p1}, Lf6/q;->a(Le6/r;)Z

    move-result p1

    iput-boolean p1, p0, Lf6/h;->A:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lf6/h;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Le6/y;->h(Ls5/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    throw v0
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lf6/h;->A:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Le6/y;->h(Ls5/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    throw v0
.end method

.method public final E(Lb6/i0;)Le6/y;
    .locals 1

    new-instance v0, Lf6/h;

    invoke-direct {v0, p0, p1}, Lf6/h;-><init>(Lf6/h;Lb6/i0;)V

    return-object v0
.end method

.method public final F(Le6/r;)Le6/y;
    .locals 2

    new-instance v0, Lf6/h;

    iget-object v1, p0, Le6/y;->q:Lb6/n;

    invoke-direct {v0, p0, v1, p1}, Lf6/h;-><init>(Lf6/h;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final G(Lb6/n;)Le6/y;
    .locals 2

    iget-object v0, p0, Le6/y;->q:Lb6/n;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Le6/y;->s:Le6/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    :cond_1
    new-instance v0, Lf6/h;

    invoke-direct {v0, p0, p1, v1}, Lf6/h;-><init>(Lf6/h;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final d()Lj6/h;
    .locals 0

    iget-object p0, p0, Lf6/h;->y:Lj6/f;

    return-object p0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    iget-object v1, p0, Le6/y;->s:Le6/r;

    iget-boolean v2, p0, Lf6/h;->A:Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le6/y;->q:Lb6/n;

    iget-object v3, p0, Le6/y;->r:Ln6/d;

    if-nez v3, :cond_4

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-interface {v1, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, p2, v3}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p3, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    invoke-virtual {p0, p1, p3, p2}, Le6/y;->h(Ls5/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    iget-object v1, p0, Le6/y;->s:Le6/r;

    iget-boolean v2, p0, Lf6/h;->A:Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le6/y;->q:Lb6/n;

    iget-object v3, p0, Le6/y;->r:Ln6/d;

    if-nez v3, :cond_4

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    :goto_0
    return-object p3

    :cond_2
    invoke-interface {v1, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, p2, v3}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p3, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    invoke-virtual {p0, p1, p3, p2}, Le6/y;->h(Ls5/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Lb6/h;)V
    .locals 1

    sget-object v0, Lb6/x;->B:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iget-object p0, p0, Lf6/h;->z:Ljava/lang/reflect/Field;

    invoke-static {p0, p1}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    return-void
.end method
