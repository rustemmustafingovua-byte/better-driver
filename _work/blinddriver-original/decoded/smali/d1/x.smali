.class public final Ld1/x;
.super Ld1/j0;
.source "SourceFile"


# instance fields
.field public c:Lu0/d;

.field public d:I


# direct methods
.method public constructor <init>(JLu0/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld1/j0;-><init>(J)V

    iput-object p3, p0, Ld1/x;->c:Lu0/d;

    return-void
.end method


# virtual methods
.method public final a(Ld1/j0;)V
    .locals 2

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord, V of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ld1/x;

    sget-object v0, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Ld1/x;->c:Lu0/d;

    iput-object v1, p0, Ld1/x;->c:Lu0/d;

    iget p1, p1, Ld1/x;->d:I

    iput p1, p0, Ld1/x;->d:I
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

    new-instance v0, Ld1/x;

    iget-object p0, p0, Ld1/x;->c:Lu0/d;

    invoke-direct {v0, p1, p2, p0}, Ld1/x;-><init>(JLu0/d;)V

    return-object v0
.end method
