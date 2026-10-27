.class public interface abstract Landroidx/lifecycle/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/z0;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lj9/f;Ld4/c;)Landroidx/lifecycle/z0;
    .locals 0

    invoke-static {p1}, Ly4/s;->p(Lj9/f;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/c1;->c(Ljava/lang/Class;Ld4/c;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ld4/c;)Landroidx/lifecycle/z0;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/lifecycle/c1;->a(Ljava/lang/Class;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0
.end method
