.class public final Lpa/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpa/e;

.field public final b:J

.field public volatile c:Ljava/util/Map;

.field public final d:Loa/c;

.field public final e:Loa/b;

.field public final f:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/util/Map;

    const-string v1, "c"

    const-class v2, Lpa/r;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Loa/d;Ljava/util/concurrent/TimeUnit;Lpa/e;Lla/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lpa/r;->a:Lpa/e;

    const-wide/16 p3, 0x5

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    iput-wide p2, p0, Lpa/r;->b:J

    sget-object p2, Lu8/s;->l:Lu8/s;

    iput-object p2, p0, Lpa/r;->c:Ljava/util/Map;

    invoke-virtual {p1}, Loa/d;->d()Loa/c;

    move-result-object p1

    iput-object p1, p0, Lpa/r;->d:Loa/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lma/e;->b:Ljava/lang/String;

    const-string p3, " ConnectionPool connection closer"

    invoke-static {p1, p2, p3}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Loa/b;

    invoke-direct {p2, p0, p1}, Loa/b;-><init>(Lpa/r;Ljava/lang/String;)V

    iput-object p2, p0, Lpa/r;->e:Loa/b;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public final a(Lpa/q;J)I
    .locals 6

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v0, p1, Lpa/q;->s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v3, Lpa/n;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lpa/q;->d:Lla/f0;

    iget-object v5, v5, Lla/f0;->a:Lla/a;

    iget-object v5, v5, Lla/a;->h:Lla/r;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lva/c;->a:Lva/a;

    sget-object v5, Lva/c;->a:Lva/a;

    iget-object v3, v3, Lpa/n;->a:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Lva/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lpa/r;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lpa/q;->t:J

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
