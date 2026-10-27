.class public Lg5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;
.implements Lmb/l7;
.implements Lrb/a;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg5/c;->l:I

    sparse-switch p1, :sswitch_data_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void

    .line 7
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    .line 9
    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 10
    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    .line 11
    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void

    .line 12
    :sswitch_1
    sget-object p1, Ld7/d;->c:Ld7/d;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void

    .line 15
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 16
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    new-instance p1, Ljava/util/WeakHashMap;

    .line 17
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void

    .line 19
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/ref/Reference;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 21
    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lg5/c;->l:I

    iput-object p2, p0, Lg5/c;->m:Ljava/lang/Object;

    iput-object p3, p0, Lg5/c;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lg5/c;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg5/c;->l:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 25
    new-instance v0, Lg5/b;

    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p1, v1}, Lg5/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 27
    iput-object v0, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/a7;Lmb/r2;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lg5/c;->l:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    iput-object p2, p0, Lg5/c;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/q;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lg5/c;->l:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpb/i;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lg5/c;->l:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Lc5/o;->k(Lpb/i;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly4/e;Li5/a;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lg5/c;->l:I

    const-string v0, "processor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lg5/c;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lw9/e;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg5/c;->l:I

    iput-object p2, p0, Lg5/c;->n:Ljava/lang/Object;

    const/16 p2, 0x8

    .line 37
    iput p2, p0, Lg5/c;->l:I

    const-string p2, "tables"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/c;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C0(Lmb/s1;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p1, Lmb/a7;

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lmb/r2;

    check-cast p0, Lmb/s1;

    iget-object v0, p0, Lmb/s1;->k:Lmb/f6;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lmb/f6;

    iget-object v1, p0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {p1, v1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lmb/f6;-><init>(Lmb/a7;Lmb/x;Lmb/s1;)V

    iput-object v0, p0, Lmb/s1;->k:Lmb/f6;

    return-object v0
.end method

.method public L0(Lmb/u3;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p1, Lmb/a7;

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lmb/r2;

    check-cast p0, Lmb/u3;

    invoke-virtual {p1, p0}, Lmb/a7;->e2(Lmb/u3;)Lmb/v;

    move-result-object p0

    return-object p0
.end method

.method public a(Lpb/i;)Z
    .locals 0

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    invoke-virtual {p0, p1}, Lpb/i;->I(Lpb/i;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Lc1/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Li9/e;

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lpb/i;)Z
    .locals 0

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    invoke-virtual {p0, p1}, Lpb/i;->l(Lpb/i;)Z

    move-result p0

    return p0
.end method

.method public e(Lpb/a;)Ltb/d;
    .locals 2

    iget-object v0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltb/d;

    if-nez v1, :cond_0

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Lmb/q;

    invoke-virtual {p0, p1}, Lmb/q;->g(Lpb/a;)Ltb/d;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public f()V
    .locals 11

    iget-object v0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Leb/d;

    invoke-virtual {v0}, Leb/d;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Leb/d;->n(J)V

    invoke-virtual {v0}, Leb/d;->readUnsignedShort()I

    move-result v5

    const/16 v6, 0x4949

    const/16 v7, 0x4d4d

    if-eq v5, v6, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TIFFDirectory1"

    invoke-static {v0}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v6, 0x0

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v0}, Leb/d;->readUnsignedShort()I

    move-result v7

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Leb/d;->m()I

    move-result v7

    :goto_2
    const/16 v8, 0x2a

    if-ne v7, v8, :cond_9

    const-wide/16 v7, 0x4

    invoke-virtual {v0, v7, v8}, Leb/d;->n(J)V

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Leb/d;->e()J

    move-result-wide v7

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Leb/d;->k()J

    move-result-wide v7

    :goto_3
    cmp-long v9, v7, v3

    if-eqz v9, :cond_7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v7, v8}, Leb/d;->n(J)V

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Leb/d;->readUnsignedShort()I

    move-result v7

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Leb/d;->m()I

    move-result v7

    :goto_4
    int-to-long v7, v7

    const-wide/16 v9, 0xc

    mul-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Leb/d;->e()J

    move-result-wide v7

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Leb/d;->k()J

    move-result-wide v7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1, v2}, Leb/d;->n(J)V

    if-gtz v6, :cond_8

    new-instance p0, Ljava/io/IOException;

    const-string v0, "TIFFImageDecoder0"

    invoke-static {v0}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance v1, Ldb/d;

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Ldb/a;

    invoke-direct {v1, v0, p0}, Ldb/d;-><init>(Leb/d;Ldb/a;)V

    const/4 p0, 0x0

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TIFFDirectory2"

    invoke-static {v0}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Lpb/i;)Z
    .locals 0

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object p0

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpb/h;->h(Lpb/h;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public h(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    throw p1
.end method

.method public i(Lpb/i;)Z
    .locals 6

    new-instance v0, Lnb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lpb/a;

    invoke-virtual {v0, v4, p1}, Lnb/b;->b(Lpb/a;Lpb/i;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public j()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public k(Ly4/k;I)V
    .locals 3

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast v0, Li5/a;

    new-instance v1, Lh5/i;

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Ly4/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lh5/i;-><init>(Ly4/e;Ly4/k;ZI)V

    invoke-virtual {v0, v1}, Li5/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(Lr0/t0;)V
    .locals 0

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, Lk/h0;

    if-eqz p1, :cond_1

    check-cast p0, Lk/h0;

    iget-object p1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p1, p0

    const-string p1, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public m(ZLcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lg5/c;->n:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu7/d;

    new-instance v1, Le7/d;

    invoke-direct {v1, p2}, Le7/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lu7/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg5/c;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    invoke-virtual {p0}, Lpb/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
