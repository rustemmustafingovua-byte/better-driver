.class public abstract Lmb/t1;
.super Lmb/c1;
.source "SourceFile"

# interfaces
.implements Lmb/f1;


# instance fields
.field public final c:[Lmb/y4;

.field public d:Lmb/a5;

.field public e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/y4;)V
    .locals 2

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/t1;->c:[Lmb/y4;

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1, p0}, Lmb/y4;->a(Lmb/a5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract E(Lmb/i7;)Ljava/lang/Object;
.end method

.method public final a(Lmb/a5;)V
    .locals 2

    iget-object v0, p0, Lmb/t1;->d:Lmb/a5;

    if-nez v0, :cond_0

    iput-object p1, p0, Lmb/t1;->d:Lmb/a5;

    return-void

    :cond_0
    new-instance p1, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enclosing scope is already set for statement \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

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
.end method

.method public final b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/t1;->d:Lmb/a5;

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lmb/g3;
    .locals 0

    iget-object p0, p0, Lmb/t1;->e:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/g3;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitConstructorInvocation(Lmb/t1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
