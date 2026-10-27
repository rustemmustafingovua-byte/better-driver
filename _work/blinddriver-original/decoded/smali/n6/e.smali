.class public abstract Ln6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lb6/f;)Ln6/e;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lr5/s0;
.end method

.method public final d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/core/type/b;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/core/type/b;-><init>(Ljava/lang/Object;Ls5/n;)V

    invoke-virtual {p0}, Ln6/e;->c()Lr5/s0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iput p2, v0, Lcom/fasterxml/jackson/core/type/b;->e:I

    invoke-virtual {p0}, Ln6/e;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/fasterxml/jackson/core/type/b;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p1, 0x5

    iput p1, v0, Lcom/fasterxml/jackson/core/type/b;->e:I

    invoke-virtual {p0}, Ln6/e;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/fasterxml/jackson/core/type/b;->d:Ljava/lang/String;

    return-object v0

    :cond_2
    iput v2, v0, Lcom/fasterxml/jackson/core/type/b;->e:I

    return-object v0

    :cond_3
    iput v1, v0, Lcom/fasterxml/jackson/core/type/b;->e:I

    return-object v0

    :cond_4
    iput p2, v0, Lcom/fasterxml/jackson/core/type/b;->e:I

    invoke-virtual {p0}, Ln6/e;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/fasterxml/jackson/core/type/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
.end method

.method public abstract f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
.end method
