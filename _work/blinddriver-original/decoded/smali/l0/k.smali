.class public final Ll0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/c2;


# instance fields
.field public a:J

.field public b:J

.field public c:Lm0/b0;

.field public final synthetic d:Ll0/h;

.field public final synthetic e:Lm0/i1;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Ll0/h;Lm0/i1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/k;->d:Ll0/h;

    iput-object p2, p0, Ll0/k;->e:Lm0/i1;

    iput-wide p3, p0, Ll0/k;->f:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ll0/k;->a:J

    iput-wide p1, p0, Ll0/k;->b:J

    sget-object p1, Lm0/c0;->d:Lm0/b0;

    iput-object p1, p0, Ll0/k;->c:Lm0/b0;

    return-void
.end method


# virtual methods
.method public final a(JLm0/b0;)V
    .locals 5

    iput-object p3, p0, Ll0/k;->c:Lm0/b0;

    iget-object p3, p0, Ll0/k;->d:Ll0/h;

    invoke-virtual {p3}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc2/u;

    iget-object v0, p0, Ll0/k;->e:Lm0/i1;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lc2/u;->j()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ll0/k;->c:Lm0/b0;

    iget-object v2, v0, Lm0/i1;->f:Lld/b;

    if-eqz v2, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v4, Ll1/b;

    invoke-direct {v4, p1, p2}, Ll1/b;-><init>(J)V

    invoke-virtual {v2, v3, p3, v4, v1}, Lld/b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-wide p1, p0, Ll0/k;->a:J

    :cond_2
    iget-wide p1, p0, Ll0/k;->f:J

    invoke-static {v0, p1, p2}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ll0/k;->b:J

    return-void
.end method

.method public final b()V
    .locals 2

    iget-wide v0, p0, Ll0/k;->f:J

    iget-object p0, p0, Ll0/k;->e:Lm0/i1;

    invoke-static {p0, v0, v1}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm0/i1;->h:Lm0/f0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm0/f0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(J)V
    .locals 9

    iget-object v0, p0, Ll0/k;->d:Ll0/h;

    invoke-virtual {v0}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lc2/u;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ll0/k;->e:Lm0/i1;

    iget-wide v3, p0, Ll0/k;->f:J

    invoke-static {v1, v3, v4}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Ll0/k;->b:J

    invoke-static {v3, v4, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/k;->b:J

    iget-wide v3, p0, Ll0/k;->a:J

    invoke-static {v3, v4, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide v3

    iget-wide v5, p0, Ll0/k;->a:J

    iget-object v7, p0, Ll0/k;->c:Lm0/b0;

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lm0/i1;->b(Lc2/u;JJLm0/b0;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-wide v3, p0, Ll0/k;->a:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ll0/k;->b:J

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCancel()V
    .locals 2

    iget-wide v0, p0, Ll0/k;->f:J

    iget-object p0, p0, Ll0/k;->e:Lm0/i1;

    invoke-static {p0, v0, v1}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm0/i1;->h:Lm0/f0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm0/f0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
