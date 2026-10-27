.class public abstract Lp6/b;
.super Lb6/q;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public G()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lp6/l;->b:Lb6/f0;

    new-instance v1, Lp6/k;

    invoke-direct {v1, p0}, Lp6/k;-><init>(Lp6/b;)V

    invoke-virtual {v0, v1}, Lb6/f0;->b(Lp6/k;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract d(Ls5/g;Lb6/r0;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lp6/l;->a:Lb6/f0;

    new-instance v1, Lp6/k;

    invoke-direct {v1, p0}, Lp6/k;-><init>(Lp6/b;)V

    invoke-virtual {v0, v1}, Lb6/f0;->b(Lp6/k;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
