.class public final Lra/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqa/d;


# static fields
.field public static final g:Lla/p;


# instance fields
.field public final a:Lla/v;

.field public final b:Lqa/c;

.field public final c:Lbb/i;

.field public final d:Lbb/h;

.field public e:I

.field public final f:Lr/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lla/p;->m:Lla/p;

    const-string v0, "OkHttp-Response-Body"

    const-string v1, "Truncated"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "inputNamesAndValues"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    rem-int/2addr v2, v1

    if-nez v2, :cond_3

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    aget-object v6, v0, v5

    invoke-static {v6}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0, v1}, Ly4/s;->s(III)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_1
    aget-object v1, v2, v4

    add-int/lit8 v3, v4, 0x1

    aget-object v3, v2, v3

    invoke-static {v1}, Ly4/s;->t(Ljava/lang/String;)V

    invoke-static {v3, v1}, Ly4/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_2
    new-instance v0, Lla/p;

    invoke-direct {v0, v2}, Lla/p;-><init>([Ljava/lang/String;)V

    sput-object v0, Lra/g;->g:Lla/p;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected alternating header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lla/v;Lqa/c;Lbb/i;Lbb/h;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/g;->a:Lla/v;

    iput-object p2, p0, Lra/g;->b:Lqa/c;

    iput-object p3, p0, Lra/g;->c:Lbb/i;

    iput-object p4, p0, Lra/g;->d:Lbb/h;

    new-instance p1, Lr/y2;

    const-string p2, "source"

    invoke-static {p3, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p3, p1, Lr/y2;->b:Ljava/lang/Object;

    const-wide/32 p2, 0x40000

    iput-wide p2, p1, Lr/y2;->a:J

    iput-object p1, p0, Lra/g;->f:Lr/y2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lra/g;->d:Lbb/h;

    invoke-interface {p0}, Lbb/h;->flush()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget p0, p0, Lra/g;->e:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lla/c0;)J
    .locals 1

    invoke-static {p1}, Lqa/e;->a(Lla/c0;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p1, Lla/c0;->q:Lla/p;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_2
    invoke-static {p1}, Lma/e;->e(Lla/c0;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lra/g;->b:Lqa/c;

    invoke-interface {p0}, Lqa/c;->cancel()V

    return-void
.end method

.method public final d(Lla/c0;)Lbb/u;
    .locals 9

    iget-object v0, p1, Lla/c0;->l:Lg7/c;

    invoke-static {p1}, Lqa/e;->a(Lla/c0;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, v0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Lla/r;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lra/g;->j(Lla/r;J)Lra/d;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p1, Lla/c0;->q:Lla/p;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "state: "

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    iget-object p1, v0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Lla/r;

    iget v0, p0, Lra/g;->e:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Lra/g;->e:I

    new-instance v0, Lra/c;

    invoke-direct {v0, p0, p1}, Lra/c;-><init>(Lra/g;Lla/r;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lma/e;->e(Lla/c0;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_4

    iget-object p1, v0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Lla/r;

    invoke-virtual {p0, p1, v5, v6}, Lra/g;->j(Lla/r;J)Lra/d;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p1, v0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Lla/r;

    iget v0, p0, Lra/g;->e:I

    if-ne v0, v4, :cond_5

    iput v3, p0, Lra/g;->e:I

    iget-object v0, p0, Lra/g;->b:Lqa/c;

    invoke-interface {v0}, Lqa/c;->e()V

    new-instance v0, Lra/f;

    const-string v1, "url"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lra/a;-><init>(Lra/g;Lla/r;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lg7/c;J)Lbb/t;
    .locals 5

    iget-object p1, p1, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast p1, Lla/p;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lra/g;->e:I

    if-ne p1, v2, :cond_0

    iput v1, p0, Lra/g;->e:I

    new-instance p1, Lra/b;

    invoke-direct {p1, p0}, Lra/b;-><init>(Lra/g;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    iget p1, p0, Lra/g;->e:I

    if-ne p1, v2, :cond_2

    iput v1, p0, Lra/g;->e:I

    new-instance p1, Lra/e;

    invoke-direct {p1, p0}, Lra/e;-><init>(Lra/g;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Z)Lla/b0;
    .locals 7

    iget-object v0, p0, Lra/g;->f:Lr/y2;

    iget v1, p0, Lra/g;->e:I

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lr/y2;->b:Ljava/lang/Object;

    check-cast v1, Lbb/i;

    iget-wide v3, v0, Lr/y2;->a:J

    invoke-interface {v1, v3, v4}, Lbb/i;->o(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, v0, Lr/y2;->a:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lr/y2;->a:J

    invoke-static {v1}, Lpc/h;->r(Ljava/lang/String;)Ld1/c0;

    move-result-object v1

    iget v3, v1, Ld1/c0;->b:I

    new-instance v4, Lla/b0;

    invoke-direct {v4}, Lla/b0;-><init>()V

    iget-object v5, v1, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, Lla/w;

    iput-object v5, v4, Lla/b0;->b:Lla/w;

    iput v3, v4, Lla/b0;->c:I

    iget-object v1, v1, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lla/b0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lr/y2;->c()Lla/p;

    move-result-object v0

    invoke-virtual {v0}, Lla/p;->c()Lc5/o;

    move-result-object v0

    iput-object v0, v4, Lla/b0;->f:Lc5/o;

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v3, v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    if-ne v3, v0, :cond_3

    iput v2, p0, Lra/g;->e:I

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v3, :cond_4

    const/16 p1, 0xc8

    if-ge v3, p1, :cond_4

    iput v2, p0, Lra/g;->e:I

    return-object v4

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lra/g;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    iget-object p0, p0, Lra/g;->b:Lqa/c;

    invoke-interface {p0}, Lqa/c;->g()Lla/f0;

    move-result-object p0

    iget-object p0, p0, Lla/f0;->a:Lla/a;

    iget-object p0, p0, Lla/a;->h:Lla/r;

    invoke-virtual {p0}, Lla/r;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g(Lg7/c;)V
    .locals 5

    iget-object v0, p0, Lra/g;->b:Lqa/c;

    invoke-interface {v0}, Lqa/c;->g()Lla/f0;

    move-result-object v0

    iget-object v0, v0, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "type(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lg7/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lg7/c;->c:Ljava/lang/Object;

    check-cast v2, Lla/r;

    iget-object v3, v2, Lla/r;->a:Ljava/lang/String;

    const-string v4, "https"

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lla/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lla/r;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast p1, Lla/p;

    invoke-virtual {p0, p1, v0}, Lra/g;->k(Lla/p;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lra/g;->d:Lbb/h;

    invoke-interface {p0}, Lbb/h;->flush()V

    return-void
.end method

.method public final i()Lqa/c;
    .locals 0

    iget-object p0, p0, Lra/g;->b:Lqa/c;

    return-object p0
.end method

.method public final j(Lla/r;J)Lra/d;
    .locals 2

    iget v0, p0, Lra/g;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lra/g;->e:I

    new-instance v0, Lra/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lra/d;-><init>(Lra/g;Lla/r;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lla/p;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lra/g;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lra/g;->d:Lbb/h;

    invoke-interface {v0, p2}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-interface {p2, v1}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    invoke-virtual {p1}, Lla/p;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    move-result-object v3

    invoke-virtual {p1, v2}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    move-result-object v3

    invoke-interface {v3, v1}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    const/4 p1, 0x1

    iput p1, p0, Lra/g;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lra/g;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
