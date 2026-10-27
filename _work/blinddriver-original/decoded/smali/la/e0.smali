.class public abstract Lla/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final l:Lla/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lbb/j;->o:Lbb/j;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lbb/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Lbb/g;->W(Lbb/j;)V

    iget-object v0, v0, Lbb/j;->l:[B

    array-length v0, v0

    int-to-long v2, v0

    new-instance v0, Lla/d0;

    invoke-direct {v0, v1, v2, v3}, Lla/d0;-><init>(Lbb/g;J)V

    sput-object v0, Lla/e0;->l:Lla/d0;

    return-void
.end method


# virtual methods
.method public final b()[B
    .locals 6

    invoke-virtual {p0}, Lla/e0;->c()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lla/e0;->e()Lbb/i;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0}, Lbb/i;->i()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_0
    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    :catchall_1
    move-exception v3

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-static {v3, p0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    if-nez v3, :cond_3

    array-length p0, v2

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    int-to-long v3, p0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    throw v3

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Cannot buffer entire body for content length: "

    invoke-static {v0, v1, v2}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract c()J
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lla/e0;->e()Lbb/i;

    move-result-object p0

    invoke-static {p0}, Lma/c;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Lla/t;
.end method

.method public abstract e()Lbb/i;
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lla/e0;->e()Lbb/i;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lla/e0;->d()Lla/t;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lla/t;->a(Lla/t;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lr9/a;->a:Ljava/nio/charset/Charset;

    :cond_1
    invoke-static {v0, p0}, Lma/e;->f(Lbb/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-interface {v0, p0}, Lbb/i;->x(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-static {p0, v0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    return-object v1

    :cond_3
    throw p0
.end method
