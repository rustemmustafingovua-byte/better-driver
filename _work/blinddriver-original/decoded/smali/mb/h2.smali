.class public final Lmb/h2;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Lmb/y4;


# direct methods
.method public constructor <init>(Lmb/y4;)V
    .locals 2

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, v0}, Lmb/m3;-><init>(Lhb/c;)V

    instance-of v1, p1, Lmb/b1;

    if-nez v1, :cond_1

    instance-of v1, p1, Lmb/w1;

    if-nez v1, :cond_1

    instance-of v1, p1, Lmb/v3;

    if-nez v1, :cond_1

    instance-of v1, p1, Lmb/i5;

    if-nez v1, :cond_1

    instance-of v1, p1, Lmb/f4;

    if-nez v1, :cond_1

    instance-of v1, p1, Lmb/d4;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, " is not allowed as an expression statement. Expressions statements must be one of assignments, method invocations, or object allocations."

    invoke-static {p0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lhb/a;

    invoke-direct {p1, v0, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lmb/h2;->e:Lmb/y4;

    invoke-virtual {p1, p0}, Lmb/y4;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lmb/h2;->e:Lmb/y4;

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->v(Lmb/h2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
