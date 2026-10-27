.class public final Lx9/d0;
.super Ly9/d;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lu9/g;


# virtual methods
.method public final a(Ly9/b;)Z
    .locals 4

    check-cast p1, Lx9/b0;

    iget-wide v0, p0, Lx9/d0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p1, Lx9/b0;->t:J

    iget-wide v2, p1, Lx9/b0;->u:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, Lx9/b0;->u:J

    :cond_1
    iput-wide v0, p0, Lx9/d0;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ly9/b;)[Ly8/c;
    .locals 4

    check-cast p1, Lx9/b0;

    iget-wide v0, p0, Lx9/d0;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lx9/d0;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lx9/d0;->b:Lu9/g;

    invoke-virtual {p1, v0, v1}, Lx9/b0;->v(J)[Ly8/c;

    move-result-object p0

    return-object p0
.end method
