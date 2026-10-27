.class public final Ld1/f;
.super Ld1/g;
.source "SourceFile"


# instance fields
.field public final e:Li9/c;

.field public f:I


# direct methods
.method public constructor <init>(JLd1/m;Li9/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld1/g;-><init>(JLd1/m;)V

    iput-object p4, p0, Ld1/f;->e:Li9/c;

    const/4 p1, 0x1

    iput p1, p0, Ld1/f;->f:I

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-boolean v0, p0, Ld1/g;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/f;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/g;->c:Z

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ld1/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method

.method public final e()Li9/c;
    .locals 0

    iget-object p0, p0, Ld1/f;->e:Li9/c;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i()Li9/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Ld1/f;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld1/f;->f:I

    return-void
.end method

.method public final l()V
    .locals 1

    iget v0, p0, Ld1/f;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld1/f;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/g;->a()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n(Ld1/h0;)V
    .locals 0

    sget-object p0, Ld1/p;->a:Lad/b2;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state object in a read-only snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u(Li9/c;)Ld1/g;
    .locals 6

    invoke-static {p0}, Ld1/p;->c(Ld1/g;)V

    new-instance v0, Ld1/e;

    iget-wide v1, p0, Ld1/g;->b:J

    iget-object v3, p0, Ld1/g;->a:Ld1/m;

    iget-object v4, p0, Ld1/f;->e:Li9/c;

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ld1/e;-><init>(JLd1/m;Li9/c;Ld1/g;)V

    return-object v0
.end method
