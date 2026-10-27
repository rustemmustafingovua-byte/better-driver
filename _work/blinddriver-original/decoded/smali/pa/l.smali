.class public final Lpa/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/w;
.implements Lpa/h;


# instance fields
.field public final a:Lpa/s;


# direct methods
.method public synthetic constructor <init>(Lpa/s;)V
    .locals 0

    iput-object p1, p0, Lpa/l;->a:Lpa/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lpa/q;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lpa/l;->a:Lpa/s;

    iget-object v3, v2, Lpa/s;->k:Lpa/a;

    invoke-virtual {v3}, Lpa/a;->m()Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_0
    invoke-virtual {v2}, Lpa/s;->h()Lpa/v;

    move-result-object v3

    invoke-interface {v3}, Lpa/v;->c()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, Lpa/v;->d()Lpa/u;

    move-result-object v4

    iget-object v5, v4, Lpa/u;->b:Lpa/v;

    if-nez v5, :cond_0

    iget-object v5, v4, Lpa/u;->c:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v3}, Lpa/v;->f()Lpa/u;

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    :goto_2
    iget-object v5, v4, Lpa/u;->b:Lpa/v;

    iget-object v4, v4, Lpa/u;->c:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    iget-object v3, v2, Lpa/s;->o:Lu8/k;

    invoke-virtual {v3, v5}, Lu8/k;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    throw v4

    :cond_3
    invoke-interface {v3}, Lpa/v;->b()Lpa/q;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_3
    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    invoke-static {v1, v3}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v2, v0}, Lpa/s;->d(Lpa/q;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    throw v1

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Lpa/w;
    .locals 0

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    return-object p0
.end method

.method public c(Lla/r;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    invoke-virtual {p0, p1}, Lpa/s;->c(Lla/r;)Z

    move-result p0

    return p0
.end method

.method public d(Lpa/q;)Z
    .locals 0

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    invoke-virtual {p0, p1}, Lpa/s;->d(Lpa/q;)Z

    move-result p0

    return p0
.end method

.method public e()Lla/a;
    .locals 0

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    iget-object p0, p0, Lpa/s;->i:Lla/a;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    iget-object p0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {p0}, Lpa/a;->m()Z

    move-result p0

    return p0
.end method

.method public g()Lu8/k;
    .locals 0

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    iget-object p0, p0, Lpa/s;->o:Lu8/k;

    return-object p0
.end method

.method public h()Lpa/v;
    .locals 0

    iget-object p0, p0, Lpa/l;->a:Lpa/s;

    invoke-virtual {p0}, Lpa/s;->a()Lpa/d;

    move-result-object p0

    return-object p0
.end method
