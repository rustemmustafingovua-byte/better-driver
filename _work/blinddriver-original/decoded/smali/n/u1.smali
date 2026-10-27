.class public final Ln/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/q1;


# instance fields
.field public final l:Ln/s1;

.field public final m:J

.field public final n:J


# direct methods
.method public constructor <init>(Ln/s1;J)V
    .locals 4

    sget-object v0, Ln/o0;->l:Ln/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/u1;->l:Ln/s1;

    invoke-interface {p1}, Ln/s1;->o()I

    move-result v0

    invoke-interface {p1}, Ln/s1;->r()I

    move-result p1

    add-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Ln/u1;->m:J

    mul-long/2addr p2, v2

    iput-wide p2, p0, Ln/u1;->n:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ln/p;Ln/p;Ln/p;)J
    .locals 0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public final c(J)J
    .locals 4

    iget-wide v0, p0, Ln/u1;->n:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Ln/u1;->m:J

    div-long v2, p1, v0

    sget-object p0, Ln/o0;->l:Ln/o0;

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    return-wide p1
.end method

.method public final d(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 10

    iget-wide v0, p0, Ln/u1;->n:J

    add-long/2addr p1, v0

    iget-wide v2, p0, Ln/u1;->m:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    iget-object v4, p0, Ln/u1;->l:Ln/s1;

    sub-long v5, v2, v0

    move-object v7, p3

    move-object v9, p4

    move-object v8, p5

    invoke-interface/range {v4 .. v9}, Ln/q1;->p(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v9, p4

    return-object v9
.end method

.method public final i(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 6

    move-wide v1, p1

    invoke-virtual {p0, v1, v2}, Ln/u1;->c(J)J

    move-result-wide p1

    move-object v0, p0

    move-object v3, p3

    move-object v5, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Ln/u1;->d(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p5

    iget-object p0, v0, Ln/u1;->l:Ln/s1;

    invoke-interface/range {p0 .. p5}, Ln/q1;->i(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0
.end method

.method public final p(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 6

    move-wide v1, p1

    invoke-virtual {p0, v1, v2}, Ln/u1;->c(J)J

    move-result-wide p1

    move-object v0, p0

    move-object v3, p3

    move-object v5, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Ln/u1;->d(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p5

    iget-object p0, v0, Ln/u1;->l:Ln/s1;

    invoke-interface/range {p0 .. p5}, Ln/q1;->p(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0
.end method
