.class public final Lmd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 14

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lx4/u;

    const-class v2, Lua/nav/support/DevMessagesWorker;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0xf

    invoke-direct/range {v1 .. v7}, Lx4/u;-><init>(Ljava/lang/Class;JJLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lh5/e;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Lh5/e;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lh5/e;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    new-instance v2, Lx4/d;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-wide v11, v9

    invoke-direct/range {v2 .. v13}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    iget-object v0, v1, Lk4/p;->b:Ljava/lang/Object;

    check-cast v0, Lg5/o;

    iput-object v2, v0, Lg5/o;->j:Lx4/d;

    invoke-virtual {v1}, Lk4/p;->b()Lx4/z;

    move-result-object v0

    check-cast v0, Lx4/y;

    invoke-static {p0}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object p0

    const-string v1, "dev-messages"

    invoke-virtual {p0, v1, v0}, Ly4/q;->L(Ljava/lang/String;Lx4/y;)Lx4/j;

    return-void
.end method
