.class public final Lf2/p1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Ln4/e;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLn4/e;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lf2/p1;->l:Z

    iput-object p2, p0, Lf2/p1;->m:Ln4/e;

    iput-object p3, p0, Lf2/p1;->n:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lf2/p1;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf2/p1;->m:Ln4/e;

    iget-object p0, p0, Lf2/p1;->n:Ljava/lang/String;

    iget-object v0, v0, Ln4/e;->a:Lp4/a;

    iget-object v1, v0, Lp4/a;->c:Lmb/q;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lp4/a;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln4/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
