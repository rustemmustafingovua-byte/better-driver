.class public final Lsa/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# instance fields
.field public final l:Lbb/i;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lbb/i;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/s;->l:Lbb/i;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final read(Lbb/g;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lsa/s;->p:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lsa/s;->l:Lbb/i;

    if-nez v0, :cond_4

    iget v0, p0, Lsa/s;->q:I

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, Lbb/i;->skip(J)V

    const/4 v0, 0x0

    iput v0, p0, Lsa/s;->q:I

    iget v0, p0, Lsa/s;->n:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lsa/s;->o:I

    invoke-static {v3}, Lma/c;->l(Lbb/i;)I

    move-result v1

    iput v1, p0, Lsa/s;->p:I

    iput v1, p0, Lsa/s;->m:I

    invoke-interface {v3}, Lbb/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v3}, Lbb/i;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lsa/s;->n:I

    sget-object v2, Lsa/t;->o:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lsa/h;->a:Lbb/j;

    iget v4, p0, Lsa/s;->o:I

    iget v5, p0, Lsa/s;->m:I

    iget v6, p0, Lsa/s;->n:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v1, v6, v7}, Lsa/h;->b(IIIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v3}, Lbb/i;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lsa/s;->o:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != TYPE_CONTINUATION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    :goto_1
    return-wide v1

    :cond_5
    iget p3, p0, Lsa/s;->p:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lsa/s;->p:I

    return-wide p1
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lsa/s;->l:Lbb/i;

    invoke-interface {p0}, Lbb/u;->timeout()Lbb/w;

    move-result-object p0

    return-object p0
.end method
