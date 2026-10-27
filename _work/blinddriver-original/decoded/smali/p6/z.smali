.class public abstract Lp6/z;
.super Lp6/b;
.source "SourceFile"


# virtual methods
.method public final B(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final D()Lb6/q;
    .locals 0

    sget-object p0, Lp6/o;->l:Lp6/o;

    return-object p0
.end method

.method public a(Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    invoke-interface {p0}, Ls5/v;->c()Ls5/n;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lp6/b;->d(Ls5/g;Lb6/r0;)V

    invoke-virtual {p3, p1, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final y(I)Lb6/q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lb6/q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
