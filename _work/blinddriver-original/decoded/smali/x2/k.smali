.class public final Lx2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lx2/k;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lx2/k;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lx2/k;->c:Ljava/lang/Object;

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lz0/i;->b:Lz0/j;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lx2/k;->a:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lx2/k;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lg5/i;Lwa/e;Lx3/c;Ljava/util/Set;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lx2/k;->a:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lx2/k;->b:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lx2/k;->c:Ljava/lang/Object;

    .line 13
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 15
    new-instance v1, Ljava/lang/String;

    const/4 p3, 0x0

    array-length p4, p2

    invoke-direct {v1, p2, p3, p4}, Ljava/lang/String;-><init>([III)V

    .line 16
    new-instance v6, Lmb/s2;

    const/4 p2, 0x2

    invoke-direct {v6, v1, p2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lx2/k;->c(Ljava/lang/CharSequence;IIIZLx3/m;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz0/i;->b()J

    move-result-wide v0

    sget-wide v2, Lz0/k;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lx2/k;->c:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lx2/k;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz0/j;

    invoke-virtual {p0, v0, v1}, Lz0/j;->a(J)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lz0/j;->c:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;IILx3/r;)Z
    .locals 6

    iget v0, p4, Lx3/r;->c:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object p0, p0, Lx2/k;->c:Ljava/lang/Object;

    check-cast p0, Lx3/f;

    invoke-virtual {p4}, Lx3/r;->b()Ly3/a;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lv8/e;->a(I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iget v0, v0, Lv8/e;->l:I

    add-int/2addr v4, v0

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    check-cast p0, Lx3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lx3/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lx3/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result p0

    iget p1, p4, Lx3/r;->c:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p0, :cond_3

    or-int/lit8 p0, p1, 0x2

    goto :goto_1

    :cond_3
    or-int/lit8 p0, p1, 0x1

    :goto_1
    iput p0, p4, Lx3/r;->c:I

    :cond_4
    iget p0, p4, Lx3/r;->c:I

    and-int/lit8 p0, p0, 0x3

    if-ne p0, v1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public c(Ljava/lang/CharSequence;IIIZLx3/m;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v5, Lmb/q6;

    iget-object v6, v0, Lx2/k;->b:Ljava/lang/Object;

    check-cast v6, Lg5/i;

    iget-object v6, v6, Lg5/i;->o:Ljava/lang/Object;

    check-cast v6, Lx3/q;

    invoke-direct {v5, v6}, Lmb/q6;-><init>(Lx3/q;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v6

    move v10, v7

    move v11, v8

    move/from16 v6, p2

    :cond_0
    :goto_0
    move v7, v6

    :goto_1
    const/4 v12, 0x2

    if-ge v6, v2, :cond_f

    if-ge v10, v3, :cond_f

    if-eqz v11, :cond_f

    iget-object v13, v5, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v13, Lx3/q;

    iget-object v13, v13, Lx3/q;->a:Landroid/util/SparseArray;

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lx3/q;

    :goto_2
    iget v14, v5, Lmb/q6;->b:I

    const/4 v15, 0x3

    if-eq v14, v12, :cond_3

    if-nez v13, :cond_2

    invoke-virtual {v5}, Lmb/q6;->b()V

    :goto_3
    move v13, v8

    goto :goto_6

    :cond_2
    iput v12, v5, Lmb/q6;->b:I

    iput-object v13, v5, Lmb/q6;->f:Ljava/lang/Object;

    iput v8, v5, Lmb/q6;->d:I

    :goto_4
    move v13, v12

    goto :goto_6

    :cond_3
    if-eqz v13, :cond_4

    iput-object v13, v5, Lmb/q6;->f:Ljava/lang/Object;

    iget v13, v5, Lmb/q6;->d:I

    add-int/2addr v13, v8

    iput v13, v5, Lmb/q6;->d:I

    goto :goto_4

    :cond_4
    const v13, 0xfe0e

    if-ne v9, v13, :cond_5

    invoke-virtual {v5}, Lmb/q6;->b()V

    goto :goto_3

    :cond_5
    const v13, 0xfe0f

    if-ne v9, v13, :cond_6

    goto :goto_4

    :cond_6
    iget-object v13, v5, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v13, Lx3/q;

    iget-object v14, v13, Lx3/q;->b:Lx3/r;

    if-eqz v14, :cond_9

    iget v14, v5, Lmb/q6;->d:I

    if-ne v14, v8, :cond_8

    invoke-virtual {v5}, Lmb/q6;->c()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v5, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v13, Lx3/q;

    iput-object v13, v5, Lmb/q6;->g:Ljava/lang/Object;

    invoke-virtual {v5}, Lmb/q6;->b()V

    :goto_5
    move v13, v15

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Lmb/q6;->b()V

    goto :goto_3

    :cond_8
    iput-object v13, v5, Lmb/q6;->g:Ljava/lang/Object;

    invoke-virtual {v5}, Lmb/q6;->b()V

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Lmb/q6;->b()V

    goto :goto_3

    :goto_6
    iput v9, v5, Lmb/q6;->c:I

    if-eq v13, v8, :cond_e

    if-eq v13, v12, :cond_c

    if-eq v13, v15, :cond_a

    goto :goto_1

    :cond_a
    if-nez p5, :cond_b

    iget-object v12, v5, Lmb/q6;->g:Ljava/lang/Object;

    check-cast v12, Lx3/q;

    iget-object v12, v12, Lx3/q;->b:Lx3/r;

    invoke-virtual {v0, v1, v7, v6, v12}, Lx2/k;->b(Ljava/lang/CharSequence;IILx3/r;)Z

    move-result v12

    if-nez v12, :cond_0

    :cond_b
    iget-object v11, v5, Lmb/q6;->g:Ljava/lang/Object;

    check-cast v11, Lx3/q;

    iget-object v11, v11, Lx3/q;->b:Lx3/r;

    invoke-interface {v4, v1, v7, v6, v11}, Lx3/m;->b(Ljava/lang/CharSequence;IILx3/r;)Z

    move-result v11

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v6

    if-ge v12, v2, :cond_d

    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    move v9, v6

    :cond_d
    move v6, v12

    goto/16 :goto_1

    :cond_e
    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    move v9, v7

    goto/16 :goto_0

    :cond_f
    iget v2, v5, Lmb/q6;->b:I

    if-ne v2, v12, :cond_12

    iget-object v2, v5, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v2, Lx3/q;

    iget-object v2, v2, Lx3/q;->b:Lx3/r;

    if-eqz v2, :cond_12

    iget v2, v5, Lmb/q6;->d:I

    if-gt v2, v8, :cond_10

    invoke-virtual {v5}, Lmb/q6;->c()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    if-ge v10, v3, :cond_12

    if-eqz v11, :cond_12

    if-nez p5, :cond_11

    iget-object v2, v5, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v2, Lx3/q;

    iget-object v2, v2, Lx3/q;->b:Lx3/r;

    invoke-virtual {v0, v1, v7, v6, v2}, Lx2/k;->b(Ljava/lang/CharSequence;IILx3/r;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, v5, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v0, Lx3/q;

    iget-object v0, v0, Lx3/q;->b:Lx3/r;

    invoke-interface {v4, v1, v7, v6, v0}, Lx3/m;->b(Ljava/lang/CharSequence;IILx3/r;)Z

    :cond_12
    invoke-interface {v4}, Lx3/m;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lz0/i;->b()J

    move-result-wide v0

    sget-wide v2, Lz0/k;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iput-object p1, p0, Lx2/k;->c:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, p0, Lx2/k;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lx2/k;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/j;

    invoke-virtual {v3, v0, v1}, Lz0/j;->a(J)I

    move-result v4

    if-gez v4, :cond_1

    iget-object p0, p0, Lx2/k;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1, p1}, Lz0/j;->b(JLjava/lang/Object;)Lz0/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object p0, v3, Lz0/j;->c:[Ljava/lang/Object;

    aput-object p1, p0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :goto_0
    monitor-exit v2

    throw p0
.end method
