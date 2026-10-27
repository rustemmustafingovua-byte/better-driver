.class public abstract Lra/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# instance fields
.field public final l:Lla/r;

.field public final m:Lbb/k;

.field public n:Z

.field public final synthetic o:Lra/g;


# direct methods
.method public constructor <init>(Lra/g;Lla/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lra/a;->o:Lra/g;

    iput-object p2, p0, Lra/a;->l:Lla/r;

    new-instance p2, Lbb/k;

    iget-object p1, p1, Lra/g;->c:Lbb/i;

    invoke-interface {p1}, Lbb/u;->timeout()Lbb/w;

    move-result-object p1

    invoke-direct {p2, p1}, Lbb/k;-><init>(Lbb/w;)V

    iput-object p2, p0, Lra/a;->m:Lbb/k;

    return-void
.end method


# virtual methods
.method public final b(Lla/p;)V
    .locals 5

    const-string v0, "trailers"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lra/a;->o:Lra/g;

    iget v1, v0, Lra/g;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lra/a;->m:Lbb/k;

    iget-object v3, v1, Lbb/k;->e:Lbb/w;

    sget-object v4, Lbb/w;->d:Lbb/v;

    iput-object v4, v1, Lbb/k;->e:Lbb/w;

    invoke-virtual {v3}, Lbb/w;->a()Lbb/w;

    invoke-virtual {v3}, Lbb/w;->b()Lbb/w;

    iput v2, v0, Lra/g;->e:I

    invoke-virtual {p1}, Lla/p;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, v0, Lra/g;->a:Lla/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lla/v;->j:Lla/b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lra/a;->l:Lla/r;

    invoke-static {v0, p0, p1}, Lqa/e;->b(Lla/b;Lla/r;Lla/p;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lra/g;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Lbb/g;J)J
    .locals 2

    iget-object v0, p0, Lra/a;->o:Lra/g;

    const-string v1, "sink"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lra/g;->c:Lbb/i;

    invoke-interface {v1, p1, p2, p3}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p2, v0, Lra/g;->b:Lqa/c;

    invoke-interface {p2}, Lqa/c;->e()V

    sget-object p2, Lra/g;->g:Lla/p;

    invoke-virtual {p0, p2}, Lra/a;->b(Lla/p;)V

    throw p1
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lra/a;->m:Lbb/k;

    return-object p0
.end method
