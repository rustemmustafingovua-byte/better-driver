.class public abstract Lr5/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/os/Parcel;I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    shr-int/lit8 p0, p1, 0x10

    int-to-char p0, p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static final B(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final C(Lg/a;Li9/c;Lr0/q;I)Lc/i;
    .locals 8

    invoke-static {p0, p2}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    invoke-static {p1, p2}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v5

    const/4 p1, 0x0

    new-array p3, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v0, v7, :cond_0

    new-instance v0, La1/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Li9/a;

    invoke-static {p3, v0, p2}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    sget-object p3, Lc/g;->a:Lr0/a0;

    invoke-virtual {p2, p3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf/i;

    if-nez p3, :cond_3

    const p3, 0x4852b6d3

    invoke-virtual {p2, p3}, Lr0/q;->b0(I)V

    sget-object p3, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p2, p3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    :goto_0
    instance-of v0, p3, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    instance-of v0, p3, Lf/i;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p3, Landroid/content/ContextWrapper;

    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_1
    check-cast p3, Lf/i;

    :goto_2
    invoke-virtual {p2, p1}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_3
    const v0, 0x4852b36f

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    goto :goto_2

    :goto_3
    if-eqz p3, :cond_a

    check-cast p3, Lb/o;

    iget-object v2, p3, Lb/o;->s:Lb/n;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_4

    new-instance p1, Lc/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v1, p1

    check-cast v1, Lc/a;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_5

    new-instance p1, Lc/i;

    invoke-direct {p1, v1}, Lc/i;-><init>(Lc/a;)V

    invoke-virtual {p2, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast p1, Lc/i;

    invoke-virtual {p2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p2, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p2, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_7

    if-ne v0, v7, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, p0

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v0, Lb0/d2;

    const/4 v6, 0x1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lb0/d2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_5
    check-cast v0, Li9/c;

    invoke-virtual {p2, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p0, p3

    invoke-virtual {p2, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p0, p3

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_8

    if-ne p3, v7, :cond_9

    :cond_8
    new-instance p3, Lr0/e0;

    invoke-direct {p3, v0}, Lr0/e0;-><init>(Li9/c;)V

    invoke-virtual {p2, p3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast p3, Lr0/e0;

    return-object p1

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final D(J)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long v4, v1

    shl-long v0, v4, v0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\u041e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443"

    const/4 v3, 0x3

    const-string v4, "updates"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Li3/f;

    invoke-direct {v1, p0}, Li3/f;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Li3/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lua/nav/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Li3/d;

    invoke-direct {v2, p0, v4}, Li3/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080082

    iget-object v3, v2, Li3/d;->s:Landroid/app/Notification;

    iput p0, v3, Landroid/app/Notification;->icon:I

    invoke-static {p1}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v2, Li3/d;->e:Ljava/lang/CharSequence;

    invoke-static {p2}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v2, Li3/d;->f:Ljava/lang/CharSequence;

    new-instance p0, Lg5/c;

    const/4 p1, 0x7

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lg5/c;-><init>(IZ)V

    invoke-static {p2}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Li3/d;->d(Lg5/c;)V

    iput-object v1, v2, Li3/d;->g:Landroid/app/PendingIntent;

    const/16 p0, 0x10

    invoke-virtual {v2, p0}, Li3/d;->c(I)V

    invoke-virtual {v2}, Li3/d;->a()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    :try_start_0
    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method

.method public static F(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {p0, p1}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static final G(I)I
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, La6/q;->r(ILjava/lang/String;)V

    invoke-static {p0}, Landroidx/fragment/app/t1;->d(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final H([B)Lh5/e;
    .locals 6

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Lh5/e;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh5/e;-><init>(Landroid/net/NetworkRequest;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    new-array v4, v1, [I

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4, v2}, Lr5/u0;->j([I[I)Lh5/e;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {p0, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Landroid/os/Parcel;)I
    .locals 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v1

    int-to-char v2, v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    const/16 v4, 0x4f45

    if-ne v2, v4, :cond_1

    add-int/2addr v1, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroidx/fragment/app/i0;

    const-string v2, "Size read is invalid start="

    const-string v4, " end="

    invoke-static {v2, v3, v4, v1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v1, Landroidx/fragment/app/i0;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected object header. Got 0x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method public static K(Landroid/os/Parcel;II)V
    .locals 5

    invoke-static {p0, p1}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " got "

    const-string v3, " (0x"

    const-string v4, "Expected size "

    invoke-static {v4, p2, v2, p1, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-static {p1, v1, p2}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static final a(FFFFJ)Ll1/d;
    .locals 17

    const/16 v0, 0x20

    shr-long v1, p4, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long v4, p4, v2

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    shl-long v0, v5, v0

    and-long/2addr v2, v7

    or-long v9, v0, v2

    new-instance v4, Ll1/d;

    move-wide v11, v9

    move-wide v13, v9

    move-wide v15, v9

    move/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v16}, Ll1/d;-><init>(FFFFJJJJ)V

    return-object v4
.end method

.method public static final b(Le2/j;Li9/a;La9/c;)Ljava/lang/Object;
    .locals 10

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v3, v1, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->f:Lf1/q;

    iget v3, v3, Lf1/q;->o:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    :goto_1
    if-eqz v0, :cond_a

    iget v3, v0, Lf1/q;->n:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    move-object v3, v0

    move-object v5, v2

    :goto_2
    if-eqz v3, :cond_9

    instance-of v6, v3, Lj2/a;

    if-eqz v6, :cond_2

    move-object v2, v3

    goto :goto_5

    :cond_2
    iget v6, v3, Lf1/q;->n:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_8

    instance-of v6, v3, Le2/k;

    if-eqz v6, :cond_8

    move-object v6, v3

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_7

    iget v9, v6, Lf1/q;->n:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_3

    move-object v3, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v5, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_7
    if-ne v7, v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_2

    :cond_9
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_a
    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, v1, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_b

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_b
    move-object v0, v2

    goto :goto_0

    :cond_c
    :goto_5
    check-cast v2, Lj2/a;

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p0

    new-instance v0, Ld5/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1, p0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p0, v0, p2}, Lj2/a;->U(Le2/h1;Ld5/a;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_e

    return-object p0

    :cond_e
    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final c([B)Ljava/util/LinkedHashSet;
    .locals 8

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    new-instance v6, Lx4/c;

    const-string v7, "uri"

    invoke-static {v4, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5, v4}, Lx4/c;-><init>(ZLandroid/net/Uri;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_4
    invoke-static {p0, v2}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v0

    :goto_4
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final e(Landroid/content/Context;)Lt2/e;
    .locals 4

    new-instance v0, Lt2/e;

    new-instance v1, Lmb/q;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lmb/q;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    sget-object v2, Lt2/l;->a:Lt2/l;

    invoke-virtual {v2, p0}, Lt2/l;->a(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v2, Lt2/a;

    invoke-direct {v2, p0}, Lt2/a;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lt2/e;-><init>(Lmb/q;Lt2/a;)V

    return-object v0
.end method

.method public static f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1

    invoke-static {p0, p1}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static h(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static j(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/i0;

    const-string v1, "Overread allowed size end="

    invoke-static {p1, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static k(Ljava/lang/String;)Lr8/h;
    .locals 4

    const-string v0, "string"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr8/h;->a:Lr9/i;

    invoke-virtual {v0, p0}, Lr9/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lr8/l;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x7c

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lr8/l;-><init>(Ljava/util/Set;)V

    return-object v0

    :cond_0
    new-instance v0, Lr8/g;

    new-instance v1, Lr9/i;

    invoke-direct {v1, p0}, Lr9/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lr8/g;-><init>(Lr9/i;)V

    return-object v0
.end method

.method public static l([Lpb/a;Lcc/f;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Lpb/a;->i(Lpb/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_2

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_2
    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v3, v2}, Lpb/b;->b(Lpb/a;Lpb/a;)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, -0x1

    aget-object v5, p0, v4

    aget-object v6, p0, v3

    invoke-virtual {v5, v6}, Lpb/a;->i(Lpb/a;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v4, p0, v4

    aget-object v5, p0, v3

    invoke-static {v4, v5}, Lpb/b;->b(Lpb/a;Lpb/a;)I

    move-result v4

    if-eq v4, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_4
    new-instance v3, Lwb/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lwb/a;->d:Lpb/h;

    iput-object p0, v3, Lwb/a;->a:[Lpb/a;

    iput v1, v3, Lwb/a;->b:I

    iput v2, v3, Lwb/a;->c:I

    iput-object p1, v3, Lwb/a;->e:Lcc/f;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v2, v1, :cond_5

    :goto_5
    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public static m(Landroid/view/Display;I)Lq3/h;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    invoke-static {p0, p1}, Lq2/b;->c(Landroid/view/Display;I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lq3/h;

    invoke-static {p0}, Lq2/b;->a(Landroid/view/RoundedCorner;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid position: "

    invoke-static {v0, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-static {p0}, Lq2/b;->h(Landroid/view/RoundedCorner;)I

    move-result v0

    invoke-static {p0}, Lq2/b;->b(Landroid/view/RoundedCorner;)Landroid/graphics/Point;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Lq3/h;-><init>(IILandroid/graphics/Point;)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final n(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to BackoffPolicy"

    invoke-static {p0, v1, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public static final o(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to NetworkType"

    invoke-static {p0, v1, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public static final p(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to OutOfQuotaPolicy"

    invoke-static {p0, v1, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public static final q(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to State"

    invoke-static {p0, v1, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public static final r(Ll1/d;)Z
    .locals 6

    iget-wide v0, p0, Ll1/d;->e:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Ll1/d;->f:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Ll1/d;->g:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Ll1/d;->h:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final s(Ljava/io/BufferedReader;)Lq9/h;
    .locals 2

    new-instance v0, Lf9/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lf9/l;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lq9/a;

    invoke-direct {p0, v0}, Lq9/a;-><init>(Lq9/h;)V

    return-object p0
.end method

.method public static u(Lpb/d;)D
    .locals 20

    move-object/from16 v0, p0

    invoke-interface {v0}, Lpb/d;->size()I

    move-result v1

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_0

    return-wide v3

    :cond_0
    invoke-interface {v0}, Lpb/d;->m()Lpb/a;

    move-result-object v2

    invoke-interface {v0}, Lpb/d;->m()Lpb/a;

    move-result-object v5

    invoke-interface {v0}, Lpb/d;->m()Lpb/a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v7, v5}, Lpb/d;->c(ILpb/a;)V

    const/4 v7, 0x1

    invoke-interface {v0, v7, v6}, Lpb/d;->c(ILpb/a;)V

    iget-wide v8, v5, Lpb/a;->l:D

    iget-wide v10, v6, Lpb/a;->l:D

    sub-double/2addr v10, v8

    iput-wide v10, v6, Lpb/a;->l:D

    move-wide/from16 v18, v3

    move v3, v7

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    iget-wide v10, v5, Lpb/a;->m:D

    iput-wide v10, v2, Lpb/a;->m:D

    iget-wide v10, v6, Lpb/a;->l:D

    iput-wide v10, v5, Lpb/a;->l:D

    iget-wide v10, v6, Lpb/a;->m:D

    iput-wide v10, v5, Lpb/a;->m:D

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v6}, Lpb/d;->c(ILpb/a;)V

    iget-wide v10, v6, Lpb/a;->l:D

    sub-double/2addr v10, v8

    iput-wide v10, v6, Lpb/a;->l:D

    iget-wide v10, v5, Lpb/a;->l:D

    iget-wide v12, v2, Lpb/a;->m:D

    iget-wide v14, v6, Lpb/a;->m:D

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v19}, Lm/a;->b(DDDD)D

    move-result-wide v18

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v18, v18, v0

    return-wide v18
.end method

.method public static final v(JJ)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, v0

    long-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long p1, p2, v2

    long-to-int p1, p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v0

    and-long p2, v4, v2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static w(Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lr5/h1;->K(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final x(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11

    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seq"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "from"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "to"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lm4/c;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cursor.getString(fromColumnIndex)"

    invoke-static {v8, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cursor.getString(toColumnIndex)"

    invoke-static {v9, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v8, v6, v9, v7}, Lm4/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v4, v5}, Lv8/b;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object p0

    invoke-static {p0}, Lu8/m;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Lr4/b;Ljava/lang/String;Z)Lm4/d;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA index_xinfo(`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/b;->t(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "seqno"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "desc"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v2, v4, :cond_4

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "DESC"

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const-string v8, "ASC"

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "columnName"

    invoke-static {v7, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "columnsMap.values"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "ordersMap.values"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lm4/d;

    invoke-direct {v2, p1, p2, v0, v1}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-object v2

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static z(Landroid/os/Parcel;I)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lr5/h1;->K(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract d(Lb6/i;Lt6/c;Lj6/t;)Lb6/n;
.end method

.method public abstract t(Lb6/h;Lb6/l;)Lb6/l;
.end method
