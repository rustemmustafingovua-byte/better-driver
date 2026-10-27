.class public final Lod/g5;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:D

.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/io/File;DLandroid/content/Context;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/g5;->m:Ljava/io/File;

    iput-wide p2, p0, Lod/g5;->n:D

    iput-object p4, p0, Lod/g5;->o:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lod/g5;

    iget-wide v2, p0, Lod/g5;->n:D

    iget-object v4, p0, Lod/g5;->o:Landroid/content/Context;

    iget-object v1, p0, Lod/g5;->m:Ljava/io/File;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lod/g5;-><init>(Ljava/io/File;DLandroid/content/Context;Ly8/c;)V

    iput-object p1, v0, Lod/g5;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/g5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/g5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/g5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lod/g5;->l:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object p1

    iget-object p1, p1, Ldd/q0;->d:Ljava/io/File;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-boolean v0, v0, Ldd/n;->l:Z

    const-string v1, "share"

    iget-object v2, p0, Lod/g5;->m:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-static {p1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p1

    invoke-virtual {p1, v1}, Ldd/k0;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lod/g5;->n:D

    cmpg-double p1, v5, v3

    if-gtz p1, :cond_2

    return-object v2

    :cond_2
    iget-object p0, p0, Lod/g5;->o:Landroid/content/Context;

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v5, v6, p0}, Lb6/g;->M(Ljava/io/File;DLjava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_2
    instance-of p1, p0, Lt8/l;

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    :cond_4
    check-cast p0, Ljava/io/File;

    return-object p0
.end method
