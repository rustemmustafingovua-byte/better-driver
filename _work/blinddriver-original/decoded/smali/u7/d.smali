.class public final Lu7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu7/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu7/i;

    invoke-direct {v0}, Lu7/i;-><init>()V

    iput-object v0, p0, Lu7/d;->a:Lu7/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object p0, p0, Lu7/d;->a:Lu7/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu7/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu7/i;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lu7/i;->c:Z

    iput-object p1, p0, Lu7/i;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu7/i;->b:Lad/a2;

    invoke-virtual {p1, p0}, Lad/a2;->r(Lu7/i;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
