.class public final Lf8/h5;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result p2
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p0

    return-object p0

    :goto_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p0

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_2
    invoke-virtual {p0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p0

    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
.end method
