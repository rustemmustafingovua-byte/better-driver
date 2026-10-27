.class public final Lpa/j;
.super Loa/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lpa/v;

.field public final synthetic f:Lpa/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpa/v;Lpa/k;)V
    .locals 0

    iput-object p2, p0, Lpa/j;->e:Lpa/v;

    iput-object p3, p0, Lpa/j;->f:Lpa/k;

    invoke-direct {p0, p1}, Loa/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lpa/j;->e:Lpa/v;

    :try_start_0
    invoke-interface {v0}, Lpa/v;->d()Lpa/u;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lpa/u;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V

    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lpa/j;->f:Lpa/k;

    iget-object v2, p0, Lpa/k;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lpa/k;->f:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
