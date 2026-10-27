.class public final Lcom/carrotsearch/hppc/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/u;


# static fields
.field public static final m:Lcom/carrotsearch/hppc/p1;


# instance fields
.field public final l:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/p1;

    invoke-direct {v0}, Lcom/carrotsearch/hppc/p1;-><init>()V

    sput-object v0, Lcom/carrotsearch/hppc/p1;->m:Lcom/carrotsearch/hppc/p1;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    sget-object v0, Lcom/carrotsearch/hppc/m;->b:Ljava/lang/String;

    sget-object v1, Lcom/carrotsearch/hppc/m;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/carrotsearch/hppc/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/carrotsearch/hppc/l;-><init>(I)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/carrotsearch/hppc/m;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sput-object v0, Lcom/carrotsearch/hppc/m;->a:Ljava/lang/String;

    const-class v2, Lcom/carrotsearch/hppc/m;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Failed to read \'tests.seed\' property for initial random seed."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/carrotsearch/hppc/m;->a:Ljava/lang/String;

    if-eq v1, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/carrotsearch/hppc/p1;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final clone()Lcom/carrotsearch/hppc/u;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final e(I)I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/p1;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
