.class public abstract Lmb/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/u;


# instance fields
.field public a:Z

.field public b:[Lmb/x;

.field public c:Lmb/c6;

.field public d:[Lmb/x;

.field public final synthetic e:Lmb/x;


# direct methods
.method public constructor <init>(Lmb/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/t;->e:Lmb/x;

    return-void
.end method


# virtual methods
.method public final a()Lmb/x;
    .locals 0

    iget-object p0, p0, Lmb/t;->e:Lmb/x;

    return-object p0
.end method

.method public final c()Lmb/c6;
    .locals 1

    iget-object v0, p0, Lmb/t;->c:Lmb/c6;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/t;->d()Lmb/c6;

    move-result-object v0

    iput-object v0, p0, Lmb/t;->c:Lmb/c6;

    return-object v0
.end method

.method public abstract d()Lmb/c6;
.end method

.method public final e()[Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/t;->b:[Lmb/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/t;->f()[Lmb/x;

    move-result-object v0

    iput-object v0, p0, Lmb/t;->b:[Lmb/x;

    return-object v0
.end method

.method public abstract f()[Lmb/x;
.end method

.method public final g()[Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/t;->d:[Lmb/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/t;->h()[Lmb/x;

    move-result-object v0

    iput-object v0, p0, Lmb/t;->d:[Lmb/x;

    return-object v0
.end method

.method public abstract h()[Lmb/x;
.end method

.method public final i(Lmb/t;)Z
    .locals 7

    sget-object v0, Lmb/x;->s:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    const-string v2, "isMoreSpecificThan"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmb/t;->j()Z

    move-result v0

    invoke-virtual {p0}, Lmb/t;->j()Z

    move-result v3

    if-eq v0, v3, :cond_0

    return v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    invoke-virtual {p1}, Lmb/t;->e()[Lmb/x;

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    if-lt v0, v1, :cond_5

    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, p1, v2

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Lmb/x;->D(Lmb/x;)Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lmb/x;->e()Lmb/x;

    move-result-object p1

    sub-int/2addr v0, v4

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Lmb/x;->D(Lmb/x;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Lmb/x;->D(Lmb/x;)Z

    move-result p0

    if-nez p0, :cond_a

    return v3

    :cond_5
    array-length v0, p1

    array-length v1, p0

    sub-int/2addr v1, v4

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_7

    aget-object v5, p1, v2

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Lmb/x;->D(Lmb/x;)Z

    move-result v5

    if-nez v5, :cond_6

    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    aget-object p0, p0, v1

    invoke-virtual {p0}, Lmb/x;->e()Lmb/x;

    move-result-object p0

    sub-int/2addr v0, v4

    :goto_3
    if-ge v1, v0, :cond_9

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Lmb/x;->D(Lmb/x;)Z

    move-result v2

    if-nez v2, :cond_8

    return v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lmb/x;->e()Lmb/x;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmb/x;->D(Lmb/x;)Z

    move-result p0

    if-nez p0, :cond_a

    return v3

    :cond_a
    return v4

    :cond_b
    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    invoke-virtual {p1}, Lmb/t;->e()[Lmb/x;

    move-result-object p1

    move v0, v3

    :goto_4
    array-length v5, p0

    if-ge v0, v5, :cond_d

    aget-object v5, p1, v0

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Lmb/x;->D(Lmb/x;)Z

    move-result v5

    if-nez v5, :cond_c

    sget-object p0, Lmb/x;->s:Ljava/util/logging/Logger;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, p1}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    sget-object p1, Lmb/x;->s:Ljava/util/logging/Logger;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return p0
.end method

.method public abstract j()Z
.end method
