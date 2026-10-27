.class public final Ll0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/o;


# instance fields
.field public l:J

.field public final synthetic m:Ll0/h;

.field public final synthetic n:Lm0/i1;

.field public final synthetic o:J


# direct methods
.method public constructor <init>(Ll0/h;Lm0/i1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/l;->m:Ll0/h;

    iput-object p2, p0, Ll0/l;->n:Lm0/i1;

    iput-wide p3, p0, Ll0/l;->o:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ll0/l;->l:J

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 9

    iget-object v0, p0, Ll0/l;->m:Ll0/h;

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
    iget-object v1, p0, Ll0/l;->n:Lm0/i1;

    iget-wide v3, p0, Ll0/l;->o:J

    invoke-static {v1, v3, v4}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-wide v5, p0, Ll0/l;->l:J

    sget-object v7, Lm0/c0;->d:Lm0/b0;

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-virtual/range {v1 .. v8}, Lm0/i1;->b(Lc2/u;JJLm0/b0;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-wide v3, p0, Ll0/l;->l:J

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final b(JLm0/b0;I)Z
    .locals 4

    iget-object p4, p0, Ll0/l;->m:Ll0/h;

    invoke-virtual {p4}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lc2/u;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll0/l;->n:Lm0/i1;

    iget-object v1, v0, Lm0/i1;->f:Lld/b;

    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Ll1/b;

    invoke-direct {v3, p1, p2}, Ll1/b;-><init>(J)V

    invoke-virtual {v1, v2, p4, v3, p3}, Lld/b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-wide p1, p0, Ll0/l;->l:J

    iget-wide p0, p0, Ll0/l;->o:J

    invoke-static {v0, p0, p1}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Ll0/l;->n:Lm0/i1;

    iget-object p0, p0, Lm0/i1;->h:Lm0/f0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm0/f0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final d(JLm0/b0;)Z
    .locals 9

    iget-object v0, p0, Ll0/l;->m:Ll0/h;

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
    iget-object v1, p0, Ll0/l;->n:Lm0/i1;

    iget-wide v3, p0, Ll0/l;->o:J

    invoke-static {v1, v3, v4}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-wide v5, p0, Ll0/l;->l:J

    const/4 v8, 0x0

    move-wide v3, p1

    move-object v7, p3

    invoke-virtual/range {v1 .. v8}, Lm0/i1;->b(Lc2/u;JJLm0/b0;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-wide v3, p0, Ll0/l;->l:J

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final e(J)Z
    .locals 9

    iget-object v0, p0, Ll0/l;->m:Ll0/h;

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
    iget-wide v5, p0, Ll0/l;->l:J

    sget-object v7, Lm0/c0;->d:Lm0/b0;

    iget-object v1, p0, Ll0/l;->n:Lm0/i1;

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-virtual/range {v1 .. v8}, Lm0/i1;->b(Lc2/u;JJLm0/b0;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-wide v3, p0, Ll0/l;->l:J

    :cond_1
    iget-wide p0, p0, Ll0/l;->o:J

    invoke-static {v1, p0, p1}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
