.class public final Ld1/e0;
.super Ld1/j0;
.source "SourceFile"


# instance fields
.field public c:Lv0/b;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(JLv0/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld1/j0;-><init>(J)V

    iput-object p3, p0, Ld1/e0;->c:Lv0/b;

    return-void
.end method


# virtual methods
.method public final a(Ld1/j0;)V
    .locals 2

    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.StateListStateRecord>"

    invoke-static {p1, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ld1/e0;

    iget-object v1, v1, Ld1/e0;->c:Lv0/b;

    iput-object v1, p0, Ld1/e0;->c:Lv0/b;

    move-object v1, p1

    check-cast v1, Ld1/e0;

    iget v1, v1, Ld1/e0;->d:I

    iput v1, p0, Ld1/e0;->d:I

    check-cast p1, Ld1/e0;

    iget p1, p1, Ld1/e0;->e:I

    iput p1, p0, Ld1/e0;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(J)Ld1/j0;
    .locals 1

    new-instance v0, Ld1/e0;

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    invoke-direct {v0, p1, p2, p0}, Ld1/e0;-><init>(JLv0/b;)V

    return-object v0
.end method
