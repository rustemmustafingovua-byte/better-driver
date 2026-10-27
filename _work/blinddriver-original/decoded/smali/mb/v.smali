.class public abstract Lmb/v;
.super Lmb/t;
.source "SourceFile"


# virtual methods
.method public final d()Lmb/c6;
    .locals 2

    new-instance v0, Lmb/c6;

    invoke-virtual {p0}, Lmb/v;->l()Lmb/x;

    move-result-object v1

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    invoke-static {p0}, Lmb/x;->q([Lmb/x;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Lmb/x;
.end method

.method public abstract m()Z
.end method

.method public abstract n()Z
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const-string v0, ", "

    const-string v1, "<invalid type>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lmb/u;->b()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v3, "PUBLIC"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string v3, "DEFAULT"

    goto :goto_0

    :cond_2
    const-string v3, "PROTECTED"

    goto :goto_0

    :cond_3
    const-string v3, "PRIVATE"

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmb/v;->n()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "static "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lmb/v;->m()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "abstract "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lmb/v;->l()Lmb/x;

    move-result-object v4

    invoke-virtual {v4}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmb/t;->e:Lmb/x;

    invoke-virtual {v3}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object v4

    move v5, v3

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_7

    if-lez v5, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lhb/a; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_2
    invoke-virtual {p0}, Lmb/t;->g()[Lmb/x;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_8

    const-string v1, " throws "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lhb/a; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_2
    const-string p0, "<invalid thrown exception type>"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
