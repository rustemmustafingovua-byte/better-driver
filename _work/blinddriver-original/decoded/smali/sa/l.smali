.class public final synthetic Lsa/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lsa/p;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lsa/p;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lsa/l;->l:I

    iput-object p1, p0, Lsa/l;->m:Lsa/p;

    iput p2, p0, Lsa/l;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsa/p;ILjava/util/List;Z)V
    .locals 0

    .line 2
    const/4 p3, 0x2

    iput p3, p0, Lsa/l;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/l;->m:Lsa/p;

    iput p2, p0, Lsa/l;->n:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lsa/l;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsa/l;->m:Lsa/p;

    iget p0, p0, Lsa/l;->n:I

    iget-object v1, v0, Lsa/p;->v:Lsa/a0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lsa/p;->H:Lsa/y;

    sget-object v2, Lsa/b;->s:Lsa/b;

    invoke-virtual {v1, p0, v2}, Lsa/y;->n(ILsa/b;)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v0, Lsa/p;->J:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
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

    :pswitch_0
    iget-object v0, p0, Lsa/l;->m:Lsa/p;

    iget p0, p0, Lsa/l;->n:I

    iget-object v1, v0, Lsa/p;->v:Lsa/a0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lsa/p;->J:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lsa/l;->m:Lsa/p;

    iget p0, p0, Lsa/l;->n:I

    iget-object v1, v0, Lsa/p;->v:Lsa/a0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v1, v0, Lsa/p;->H:Lsa/y;

    sget-object v2, Lsa/b;->s:Lsa/b;

    invoke-virtual {v1, p0, v2}, Lsa/y;->n(ILsa/b;)V

    monitor-enter v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v1, v0, Lsa/p;->J:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
