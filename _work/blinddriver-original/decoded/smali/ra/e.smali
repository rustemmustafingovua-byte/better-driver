.class public final Lra/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/t;


# instance fields
.field public final l:Lbb/k;

.field public m:Z

.field public final synthetic n:Lra/g;


# direct methods
.method public constructor <init>(Lra/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/e;->n:Lra/g;

    new-instance v0, Lbb/k;

    iget-object p1, p1, Lra/g;->d:Lbb/h;

    invoke-interface {p1}, Lbb/t;->timeout()Lbb/w;

    move-result-object p1

    invoke-direct {v0, p1}, Lbb/k;-><init>(Lbb/w;)V

    iput-object v0, p0, Lra/e;->l:Lbb/k;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lra/e;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lra/e;->m:Z

    iget-object v0, p0, Lra/e;->l:Lbb/k;

    iget-object v1, v0, Lbb/k;->e:Lbb/w;

    sget-object v2, Lbb/w;->d:Lbb/v;

    iput-object v2, v0, Lbb/k;->e:Lbb/w;

    invoke-virtual {v1}, Lbb/w;->a()Lbb/w;

    invoke-virtual {v1}, Lbb/w;->b()Lbb/w;

    const/4 v0, 0x3

    iget-object p0, p0, Lra/e;->n:Lra/g;

    iput v0, p0, Lra/g;->e:I

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lra/e;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lra/e;->n:Lra/g;

    iget-object p0, p0, Lra/g;->d:Lbb/h;

    invoke-interface {p0}, Lbb/h;->flush()V

    return-void
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lra/e;->l:Lbb/k;

    return-object p0
.end method

.method public final write(Lbb/g;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lra/e;->m:Z

    if-nez v0, :cond_0

    iget-wide v1, p1, Lbb/g;->m:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lma/c;->a(JJJ)V

    iget-object p0, p0, Lra/e;->n:Lra/g;

    iget-object p0, p0, Lra/g;->d:Lbb/h;

    invoke-interface {p0, p1, v5, v6}, Lbb/t;->write(Lbb/g;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
