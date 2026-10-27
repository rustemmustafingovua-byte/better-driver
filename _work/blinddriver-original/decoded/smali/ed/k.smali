.class public final synthetic Led/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Led/g;

.field public final synthetic m:Lg5/m;

.field public final synthetic n:D


# direct methods
.method public synthetic constructor <init>(Led/g;Lg5/m;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/k;->l:Led/g;

    iput-object p2, p0, Led/k;->m:Lg5/m;

    iput-wide p3, p0, Led/k;->n:D

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Led/k;->m:Lg5/m;

    iget-wide v1, p0, Led/k;->n:D

    check-cast p1, Ljava/io/Writer;

    const-string v3, "w"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Led/k;->l:Led/g;

    iget-object p0, p0, Led/g;->a:Ljava/io/File;

    sget-object v3, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {p0, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-static {p0}, Lr5/h1;->s(Ljava/io/BufferedReader;)Lq9/h;

    move-result-object v3

    check-cast v3, Lq9/a;

    invoke-virtual {v3}, Lq9/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Led/n;->b(Ljava/lang/String;Lg5/m;D)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
