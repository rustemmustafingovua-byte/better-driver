.class public final Lad/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Z


# virtual methods
.method public final a(J)Z
    .locals 2

    invoke-virtual {p0}, Lad/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lad/f;->b:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lad/f;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(JJ)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lad/f;->a:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lad/f;->b:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lad/f;->c:Z

    return-void
.end method
