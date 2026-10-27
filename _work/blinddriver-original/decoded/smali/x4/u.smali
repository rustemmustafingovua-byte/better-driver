.class public final Lx4/u;
.super Lk4/p;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Class;)V
    .locals 0

    .line 1
    iput p1, p0, Lx4/u;->d:I

    invoke-direct {p0, p2}, Lk4/p;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lx4/u;->d:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "repeatIntervalTimeUnit"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flexIntervalTimeUnit"

    invoke-static {p6, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lk4/p;-><init>(Ljava/lang/Class;)V

    .line 3
    iget-object p0, p0, Lk4/p;->b:Ljava/lang/Object;

    check-cast p0, Lg5/o;

    .line 4
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 5
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lg5/o;->d(JJ)V

    return-void
.end method


# virtual methods
.method public final c()Lx4/z;
    .locals 3

    iget v0, p0, Lx4/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk4/p;->b:Ljava/lang/Object;

    check-cast v0, Lg5/o;

    iget-boolean v1, v0, Lg5/o;->q:Z

    if-nez v1, :cond_0

    new-instance v1, Lx4/y;

    iget-object v2, p0, Lk4/p;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    iget-object p0, p0, Lk4/p;->c:Ljava/io/Serializable;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2, v0, p0}, Lx4/z;-><init>(Ljava/util/UUID;Lg5/o;Ljava/util/LinkedHashSet;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Lx4/v;

    iget-object v1, p0, Lk4/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    iget-object v2, p0, Lk4/p;->b:Ljava/lang/Object;

    check-cast v2, Lg5/o;

    iget-object p0, p0, Lk4/p;->c:Ljava/io/Serializable;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, v2, p0}, Lx4/z;-><init>(Ljava/util/UUID;Lg5/o;Ljava/util/LinkedHashSet;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
