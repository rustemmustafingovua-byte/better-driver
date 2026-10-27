.class public final synthetic Lsa/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lsa/p;

.field public final synthetic m:I

.field public final synthetic n:Lbb/g;

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lsa/p;ILbb/g;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/k;->l:Lsa/p;

    iput p2, p0, Lsa/k;->m:I

    iput-object p3, p0, Lsa/k;->n:Lbb/g;

    iput p4, p0, Lsa/k;->o:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lsa/k;->l:Lsa/p;

    iget v1, p0, Lsa/k;->m:I

    iget-object v2, p0, Lsa/k;->n:Lbb/g;

    iget p0, p0, Lsa/k;->o:I

    :try_start_0
    iget-object v3, v0, Lsa/p;->v:Lsa/a0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Lbb/g;->skip(J)V

    iget-object p0, v0, Lsa/p;->H:Lsa/y;

    sget-object v2, Lsa/b;->s:Lsa/b;

    invoke-virtual {p0, v1, v2}, Lsa/y;->n(ILsa/b;)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, v0, Lsa/p;->J:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
