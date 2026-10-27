.class public final synthetic Lp0/q;
.super Lj9/q;
.source "SourceFile"

# interfaces
.implements Lp9/c;


# virtual methods
.method public final d()Lp9/a;
    .locals 1

    sget-object v0, Lj9/z;->a:Lj9/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj9/d;->m:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lp0/q;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
