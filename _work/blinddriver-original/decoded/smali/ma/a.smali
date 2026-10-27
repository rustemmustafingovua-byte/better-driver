.class public final Lma/a;
.super Lla/e0;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# instance fields
.field public final m:Lla/t;

.field public final n:J


# direct methods
.method public constructor <init>(Lla/t;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/a;->m:Lla/t;

    iput-wide p2, p0, Lma/a;->n:J

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lma/a;->n:J

    return-wide v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()Lla/t;
    .locals 0

    iget-object p0, p0, Lma/a;->m:Lla/t;

    return-object p0
.end method

.method public final e()Lbb/i;
    .locals 1

    new-instance v0, Lbb/p;

    invoke-direct {v0, p0}, Lbb/p;-><init>(Lbb/u;)V

    return-object v0
.end method

.method public final read(Lbb/g;J)J
    .locals 0

    const-string p0, "sink"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Lbb/w;
    .locals 0

    sget-object p0, Lbb/w;->d:Lbb/v;

    return-object p0
.end method
