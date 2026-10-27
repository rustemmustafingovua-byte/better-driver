.class public interface abstract Lnc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract h()Z
.end method

.method public abstract i(Ljava/lang/String;)V
.end method

.method public abstract j()Z
.end method

.method public abstract k(Ljava/lang/String;)V
.end method

.method public abstract l(Ljava/lang/String;)V
.end method

.method public varargs abstract m(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public n(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    :goto_0
    if-eqz v0, :cond_e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0x14

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x28

    if-ne v0, v1, :cond_5

    invoke-interface {p0}, Lnc/b;->f()Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Level ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const-string p1, "null"

    goto :goto_1

    :cond_6
    const-string p1, "TRACE"

    goto :goto_1

    :cond_7
    const-string p1, "DEBUG"

    goto :goto_1

    :cond_8
    const-string p1, "INFO"

    goto :goto_1

    :cond_9
    const-string p1, "WARN"

    goto :goto_1

    :cond_a
    const-string p1, "ERROR"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] not recognized."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-interface {p0}, Lnc/b;->c()Z

    move-result p0

    return p0

    :cond_c
    invoke-interface {p0}, Lnc/b;->h()Z

    move-result p0

    return p0

    :cond_d
    invoke-interface {p0}, Lnc/b;->d()Z

    move-result p0

    return p0

    :cond_e
    invoke-interface {p0}, Lnc/b;->j()Z

    move-result p0

    return p0
.end method

.method public varargs abstract o(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public varargs abstract q([Ljava/lang/Object;)V
.end method

.method public abstract r(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract s(Ljava/lang/Object;)V
.end method
