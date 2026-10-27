.class public final Lu9/d1;
.super Lu9/j1;
.source "SourceFile"


# instance fields
.field public final o:Ly8/c;


# direct methods
.method public constructor <init>(Ly8/h;Li9/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu9/a;-><init>(Ly8/h;Z)V

    invoke-static {p2, p0, p0}, Lg6/c1;->k(Li9/e;Ly8/c;Ly8/c;)Ly8/c;

    move-result-object p1

    iput-object p1, p0, Lu9/d1;->o:Ly8/c;

    return-void
.end method


# virtual methods
.method public final V()V
    .locals 2

    iget-object v0, p0, Lu9/d1;->o:Ly8/c;

    :try_start_0
    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v0

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-static {v1, v0}, Lz9/b;->h(Ljava/lang/Object;Ly8/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    instance-of v1, v0, Lu9/a0;

    if-eqz v1, :cond_0

    check-cast v0, Lu9/a0;

    iget-object v0, v0, Lu9/a0;->l:Ljava/lang/Throwable;

    :cond_0
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lu9/a;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
