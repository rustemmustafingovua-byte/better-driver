.class public final Lf6/c0;
.super Le6/y;
.source "SourceFile"


# instance fields
.field public final y:Lj6/i;

.field public final z:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lf6/c0;Lb6/i0;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Le6/y;-><init>(Le6/y;Lb6/i0;)V

    .line 9
    iget-object p2, p1, Lf6/c0;->y:Lj6/i;

    iput-object p2, p0, Lf6/c0;->y:Lj6/i;

    .line 10
    iget-object p1, p1, Lf6/c0;->z:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lf6/c0;->z:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lf6/c0;Lb6/n;Le6/r;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Le6/y;-><init>(Le6/y;Lb6/n;Le6/r;)V

    .line 6
    iget-object p2, p1, Lf6/c0;->y:Lj6/i;

    iput-object p2, p0, Lf6/c0;->y:Lj6/i;

    .line 7
    iget-object p1, p1, Lf6/c0;->z:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lf6/c0;->z:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;Lj6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le6/y;-><init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;)V

    .line 2
    iput-object p5, p0, Lf6/c0;->y:Lj6/i;

    .line 3
    iget-object p1, p5, Lj6/i;->o:Ljava/lang/reflect/Method;

    .line 4
    iput-object p1, p0, Lf6/c0;->z:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Should never call `set()` on setterless property (\'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Le6/y;->n:Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    const-string v0, "\')"

    invoke-static {p2, p0, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf6/c0;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E(Lb6/i0;)Le6/y;
    .locals 1

    new-instance v0, Lf6/c0;

    invoke-direct {v0, p0, p1}, Lf6/c0;-><init>(Lf6/c0;Lb6/i0;)V

    return-object v0
.end method

.method public final F(Le6/r;)Le6/y;
    .locals 2

    new-instance v0, Lf6/c0;

    iget-object v1, p0, Le6/y;->q:Lb6/n;

    invoke-direct {v0, p0, v1, p1}, Lf6/c0;-><init>(Lf6/c0;Lb6/n;Le6/r;)V

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
    new-instance v0, Lf6/c0;

    invoke-direct {v0, p0, p1, v1}, Lf6/c0;-><init>(Lf6/c0;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final d()Lj6/h;
    .locals 0

    iget-object p0, p0, Lf6/c0;->y:Lj6/i;

    return-object p0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/y;->r:Ln6/d;

    iget-object v1, p0, Le6/y;->n:Lb6/i0;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lf6/c0;->z:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_1

    iget-object p0, p0, Le6/y;->q:Lb6/n;

    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object p0, v1, Lb6/i0;->l:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Problem deserializing \'setterless\' property \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': get method returned null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lu6/h;->D(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lb6/p;

    invoke-direct {p3, p1, p2, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    iget-object p0, v1, Lb6/i0;->l:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Problem deserializing \'setterless\' property (\""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"): no way to handle typed deser with setterless yet"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v2
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lf6/c0;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final n(Lb6/h;)V
    .locals 1

    sget-object v0, Lb6/x;->B:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iget-object p0, p0, Lf6/c0;->y:Lj6/i;

    invoke-virtual {p0, p1}, Lj6/h;->j(Z)V

    return-void
.end method
