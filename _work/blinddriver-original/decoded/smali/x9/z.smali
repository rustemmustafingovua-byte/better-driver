.class public final Lx9/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/g0;


# instance fields
.field public final l:Lx9/b0;

.field public final m:J

.field public final n:Ljava/lang/Object;

.field public final o:Lu9/g;


# direct methods
.method public constructor <init>(Lx9/b0;JLjava/lang/Object;Lu9/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/z;->l:Lx9/b0;

    iput-wide p2, p0, Lx9/z;->m:J

    iput-object p4, p0, Lx9/z;->n:Ljava/lang/Object;

    iput-object p5, p0, Lx9/z;->o:Lu9/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lx9/z;->l:Lx9/b0;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lx9/z;->m:J

    invoke-virtual {v0}, Lx9/b0;->o()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v2, p0, Lx9/z;->m:J

    long-to-int v4, v2

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    sget-object p0, Lx9/c0;->a:Lmb/s2;

    invoke-static {v1, v2, v3, p0}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0}, Lx9/b0;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
