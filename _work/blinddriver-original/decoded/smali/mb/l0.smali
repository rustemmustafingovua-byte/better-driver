.class public abstract Lmb/l0;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/u5;


# instance fields
.field public c:Lmb/v5;

.field public final d:[Lmb/x3;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/l0;->d:[Lmb/x3;

    return-void
.end method


# virtual methods
.method public a(Lmb/a5;)V
    .locals 2

    instance-of v0, p1, Lmb/u3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmb/u3;

    iget-object v0, v0, Lmb/r2;->f:Ljava/lang/String;

    const-string v1, "<clinit>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lmb/v5;

    iput-object p1, p0, Lmb/l0;->c:Lmb/v5;

    return-void
.end method

.method public b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/l0;->c:Lmb/v5;

    return-object p0
.end method

.method public c(Lmb/v5;)V
    .locals 2

    iget-object v0, p0, Lmb/l0;->c:Lmb/v5;

    if-nez v0, :cond_0

    iput-object p1, p0, Lmb/l0;->c:Lmb/v5;

    return-void

    :cond_0
    new-instance p1, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Declaring type for type body declaration \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()Lmb/v5;
    .locals 0

    iget-object p0, p0, Lmb/l0;->c:Lmb/v5;

    return-object p0
.end method
