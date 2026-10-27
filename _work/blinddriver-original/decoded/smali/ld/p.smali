.class public final Lld/p;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:J


# direct methods
.method public constructor <init>(Ljava/io/File;JLy8/c;)V
    .locals 0

    iput-object p1, p0, Lld/p;->m:Ljava/io/File;

    iput-wide p2, p0, Lld/p;->n:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 4

    new-instance v0, Lld/p;

    iget-object v1, p0, Lld/p;->m:Ljava/io/File;

    iget-wide v2, p0, Lld/p;->n:J

    invoke-direct {v0, v1, v2, v3, p2}, Lld/p;-><init>(Ljava/io/File;JLy8/c;)V

    iput-object p1, v0, Lld/p;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lld/p;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lld/p;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lld/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lld/p;->l:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lld/p;->m:Ljava/io/File;

    iget-wide v0, p0, Lld/p;->n:J

    :try_start_0
    new-instance p0, Lld/i;

    invoke-direct {p0}, Lld/i;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lld/i;->a(Ljava/io/File;J)Lld/g;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lt8/l;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
