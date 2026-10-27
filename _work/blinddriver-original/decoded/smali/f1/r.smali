.class public interface abstract Lf1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Li9/c;)Z
.end method

.method public abstract c(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public d(Lf1/r;)Lf1/r;
    .locals 1

    sget-object v0, Lf1/o;->a:Lf1/o;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lf1/l;

    invoke-direct {v0, p0, p1}, Lf1/l;-><init>(Lf1/r;Lf1/r;)V

    return-object v0
.end method
