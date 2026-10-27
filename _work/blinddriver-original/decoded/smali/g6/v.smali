.class public abstract Lg6/v;
.super Lg6/m1;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# direct methods
.method public static d0(Ljava/lang/Class;)Lg6/v;
    .locals 2

    const-class v0, Ljava/io/File;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Ljava/net/URL;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-class v0, Ljava/net/URI;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-class v0, Lb6/l;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/Currency;

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-class v0, Ljava/util/regex/Pattern;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-class v0, Ljava/util/Locale;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-class v0, Ljava/nio/charset/Charset;

    if-ne p0, v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const-class v0, Ljava/util/TimeZone;

    if-ne p0, v0, :cond_9

    const/16 v0, 0xa

    goto :goto_0

    :cond_9
    const-class v0, Ljava/net/InetAddress;

    if-ne p0, v0, :cond_a

    const/16 v0, 0xb

    goto :goto_0

    :cond_a
    const-class v0, Ljava/net/InetSocketAddress;

    if-ne p0, v0, :cond_b

    const/16 v0, 0xc

    :goto_0
    new-instance v1, Lg6/s;

    invoke-direct {v1, v0, p0}, Lg6/s;-><init>(ILjava/lang/Class;)V

    return-object v1

    :cond_b
    const-class v0, Ljava/lang/StringBuilder;

    if-ne p0, v0, :cond_c

    new-instance p0, Lg6/u;

    const-class v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_c
    const-class v0, Ljava/lang/StringBuffer;

    if-ne p0, v0, :cond_d

    new-instance p0, Lg6/t;

    const-class v0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public a0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Don\'t know how to convert embedded Object of type %s into %s"

    invoke-virtual {p1, p0, v0, p2}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b0(Lb6/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg6/v;->logicalType()Lt6/f;

    move-result-object v0

    iget-object v1, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lg6/v;->c(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lg6/f1;->p()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot coerce empty String (\"\") to %s (but could if enabling coercion using `CoercionConfig`)"

    invoke-virtual {p1, p0, v1, v0}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg6/f1;->l:Ljava/lang/Class;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v2, Ls5/n;->u:Ls5/n;

    if-eq v0, v2, :cond_4

    sget-object v2, Ls5/n;->w:Ls5/n;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v2, Ls5/n;->z:Ls5/n;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, p2, p1}, Lg6/v;->a0(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p2, v1, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v3

    :cond_4
    invoke-virtual {p2, v1, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p2}, Lg6/v;->b0(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lg6/v;->c0()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eq p1, v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lg6/v;->b0(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    move-object v0, p1

    :cond_8
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lg6/v;->Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v2, "not a valid textual representation, problem: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string p1, "not a valid textual representation"

    :goto_0
    invoke-virtual {p2, v0, v1, p1}, Lb6/i;->D0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lh6/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->x:Lt6/f;

    return-object p0
.end method
