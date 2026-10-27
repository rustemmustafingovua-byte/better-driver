.class public final Lw7/k;
.super Lw7/u;
.source "SourceFile"


# instance fields
.field public a:Lw7/u;


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw7/k;->a:Lw7/u;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lw7/k;->a:Lw7/u;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
