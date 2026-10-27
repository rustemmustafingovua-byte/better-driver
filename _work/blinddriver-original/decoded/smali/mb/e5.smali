.class public abstract Lmb/e5;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/f1;


# instance fields
.field public c:Lmb/a5;

.field public d:Ljava/util/Map;


# virtual methods
.method public a(Lmb/a5;)V
    .locals 2

    iget-object v0, p0, Lmb/e5;->c:Lmb/a5;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lmb/u3;

    if-eqz v0, :cond_0

    check-cast p1, Lmb/u3;

    iget-object p1, p1, Lmb/r2;->f:Ljava/lang/String;

    const-string v0, "<clinit>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enclosing scope is already set for statement \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lmb/e5;->c:Lmb/a5;

    return-void
.end method

.method public final b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/e5;->c:Lmb/a5;

    return-object p0
.end method

.method public c(Lmb/v5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/e5;->a(Lmb/a5;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)Lmb/g3;
    .locals 0

    iget-object p0, p0, Lmb/e5;->d:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/g3;

    return-object p0
.end method
