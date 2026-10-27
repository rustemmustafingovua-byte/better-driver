.class public final Ld1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Ld1/c0;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Lx/i;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 66
    iput-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 1
    iput p1, p0, Ld1/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Ld1/c0;->a:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Ld1/c0;->c:Ljava/lang/Object;

    .line 69
    iput p1, p0, Ld1/c0;->b:I

    return-void
.end method

.method public constructor <init>(Lf2/p2;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ld1/c0;->a:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/v;Lf7/h;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld1/c0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ld1/c0;->d:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ld1/c0;->c:Ljava/lang/Object;

    iput p3, p0, Ld1/c0;->b:I

    return-void
.end method

.method public constructor <init>(Lj6/n;[Lg5/m;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld1/c0;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ld1/c0;->c:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Ld1/c0;->d:Ljava/lang/Object;

    .line 9
    iput p3, p0, Ld1/c0;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Serializable;ILjava/lang/Object;I)V
    .locals 0

    .line 5
    iput p4, p0, Ld1/c0;->a:I

    iput-object p1, p0, Ld1/c0;->c:Ljava/lang/Object;

    iput p2, p0, Ld1/c0;->b:I

    iput-object p3, p0, Ld1/c0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILandroid/view/MotionEvent;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Ld1/c0;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Ld1/c0;->c:Ljava/lang/Object;

    .line 12
    iput p2, p0, Ld1/c0;->b:I

    .line 13
    iput-object p3, p0, Ld1/c0;->d:Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "changes cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lk4/b;Lq3/k;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ld1/c0;->a:I

    .line 15
    iput v0, p0, Ld1/c0;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    .line 17
    iput v0, p0, Ld1/c0;->b:I

    .line 18
    iput-object p1, p0, Ld1/c0;->c:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Ld1/c0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo9/d;Lw/e;)V
    .locals 12

    const/16 v0, 0xd

    iput v0, p0, Ld1/c0;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object p2, p2, Lw/e;->a:Ld1/c0;

    .line 22
    iget v0, p1, Lo9/b;->l:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "negative nearestRange.first"

    .line 24
    invoke-static {v1}, Lt/b;->c(Ljava/lang/String;)V

    .line 25
    :goto_0
    iget p1, p1, Lo9/b;->m:I

    .line 26
    iget v1, p2, Ld1/c0;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 27
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 28
    sget-object p1, Lk/q0;->a:Lk/d0;

    const-string p2, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>"

    invoke-static {p1, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Ld1/c0;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 30
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Ld1/c0;->d:Ljava/lang/Object;

    .line 31
    iput p1, p0, Ld1/c0;->b:I

    goto/16 :goto_6

    :cond_1
    sub-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Ld1/c0;->d:Ljava/lang/Object;

    .line 33
    iput v0, p0, Ld1/c0;->b:I

    .line 34
    new-instance v2, Lk/d0;

    invoke-direct {v2, v1}, Lk/d0;-><init>(I)V

    .line 35
    iget-object v1, p2, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    .line 36
    const-string v3, ", size "

    const-string v4, "Index "

    if-ltz v0, :cond_2

    .line 37
    iget v5, p2, Ld1/c0;->b:I

    if-ge v0, v5, :cond_2

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v0, v4, v3}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 39
    iget v6, p2, Ld1/c0;->b:I

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lt/b;->e(Ljava/lang/String;)V

    :goto_1
    if-ltz p1, :cond_3

    .line 41
    iget v5, p2, Ld1/c0;->b:I

    if-ge p1, v5, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    invoke-static {p1, v4, v3}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 43
    iget p2, p2, Ld1/c0;->b:I

    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lt/b;->e(Ljava/lang/String;)V

    :goto_2
    if-lt p1, v0, :cond_4

    goto :goto_3

    .line 45
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "toIndex ("

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") should be not smaller than fromIndex ("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {p2}, Lt/b;->a(Ljava/lang/String;)V

    .line 47
    :goto_3
    invoke-static {v0, v1}, Lx/l;->e(ILt0/b;)I

    move-result p2

    .line 48
    iget-object v3, v1, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v3, v3, p2

    check-cast v3, Lx/i;

    .line 49
    iget v3, v3, Lx/i;->a:I

    :goto_4
    if-gt v3, p1, :cond_8

    .line 50
    iget-object v4, v1, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v4, v4, p2

    .line 51
    check-cast v4, Lx/i;

    .line 52
    iget-object v5, v4, Lx/i;->c:Lg5/m;

    .line 53
    iget-object v5, v5, Lg5/m;->m:Ljava/lang/Object;

    check-cast v5, Li9/c;

    .line 54
    iget v6, v4, Lx/i;->a:I

    .line 55
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 56
    iget v8, v4, Lx/i;->b:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    .line 57
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v7, v8, :cond_7

    :goto_5
    if-eqz v5, :cond_5

    sub-int v9, v7, v6

    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    .line 59
    :cond_5
    new-instance v9, Lx/g;

    invoke-direct {v9, v7}, Lx/g;-><init>(I)V

    .line 60
    :cond_6
    invoke-virtual {v2, v7, v9}, Lk/d0;->g(ILjava/lang/Object;)V

    .line 61
    iget-object v10, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    iget v11, p0, Ld1/c0;->b:I

    sub-int v11, v7, v11

    aput-object v9, v10, v11

    if-eq v7, v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 62
    :cond_7
    iget v4, v4, Lx/i;->b:I

    add-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 63
    :cond_8
    iput-object v2, p0, Ld1/c0;->c:Ljava/lang/Object;

    :goto_6
    return-void
.end method

.method public static b(Lb6/d;Lj6/n;[Lj6/v;)Ld1/c0;
    .locals 8

    invoke-virtual {p1}, Lj6/n;->u()I

    move-result v0

    new-array v1, v0, [Lg5/m;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lj6/n;->t(I)Lj6/m;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v4

    new-instance v5, Lg5/m;

    if-nez p2, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    aget-object v6, p2, v2

    :goto_1
    const/4 v7, 0x7

    invoke-direct {v5, v3, v6, v4, v7}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ld1/c0;

    invoke-direct {p0, p1, v1, v0}, Ld1/c0;-><init>(Lj6/n;[Lg5/m;I)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 7

    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lj9/n;->h(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "deleting the database file: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "delete failed: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return-void
.end method

.method public static synthetic h(Ld1/c0;IIIIIIZZZI)V
    .locals 12

    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move/from16 v7, p6

    :goto_0
    const/4 v11, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Ld1/c0;->g(IIIIIIZZZI)V

    return-void
.end method


# virtual methods
.method public a(ILg5/m;)V
    .locals 2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "size should be >=0"

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lx/i;

    iget v1, p0, Ld1/c0;->b:I

    invoke-direct {v0, v1, p1, p2}, Lx/i;-><init>(IILg5/m;)V

    iget p2, p0, Ld1/c0;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Ld1/c0;->b:I

    iget-object p0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)Lx/i;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Ld1/c0;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Index "

    const-string v1, ", size "

    invoke-static {p1, v0, v1}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ld1/c0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/b;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v0, Lx/i;

    if-eqz v0, :cond_1

    iget v1, v0, Lx/i;->a:I

    iget v2, v0, Lx/i;->b:I

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    if-gt v1, p1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-static {p1, v0}, Lx/l;->e(ILt0/b;)I

    move-result p1

    iget-object v0, v0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lx/i;

    iput-object p1, p0, Ld1/c0;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public e(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, Lk/d0;

    invoke-virtual {p0, p1}, Lk/d0;->d(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lk/d0;->c:[I

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Ld1/c0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget v0, p0, Ld1/c0;->b:I

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, p1}, Lu6/h;->s(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_0
    move v1, v3

    goto :goto_3

    :cond_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v4, p0, Ld1/c0;->d:Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public f()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ld1/c0;->b:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v2

    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-eqz v4, :cond_1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object v4

    sget-object v5, Lfa/g;->g:Lfa/g;

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v2

    if-ltz v4, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    sget-object v4, Lja/l;->a:Lja/l;

    if-eq v3, v4, :cond_2

    const-string v4, "[\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\']"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(IIIIIIZZZI)V
    .locals 9

    iget-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Ld1/c0;->b:I

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Ld1/c0;->b:I

    array-length v3, v0

    if-gt v3, v2, :cond_0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    const-string v3, "copyOf(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    iget-object v0, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ld1/c0;->d:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, [J

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    int-to-long v4, p3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 p3, v1, 0x1

    int-to-long v2, p4

    shl-long/2addr v2, p2

    int-to-long v4, p5

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, p3

    add-int/lit8 p2, v1, 0x2

    move/from16 p3, p9

    int-to-long v2, p3

    const/16 p3, 0x3f

    shl-long/2addr v2, p3

    move/from16 p3, p8

    int-to-long v4, p3

    const/16 p3, 0x3e

    shl-long/2addr v4, p3

    or-long/2addr v2, v4

    move/from16 p3, p7

    int-to-long v4, p3

    const/16 p3, 0x3d

    shl-long/2addr v4, p3

    or-long/2addr v2, v4

    const/4 p3, 0x1

    int-to-long v4, p3

    const/16 p3, 0x3c

    shl-long/2addr v4, p3

    or-long/2addr v2, v4

    const/4 p3, 0x0

    const/16 v0, 0x3ff

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-long v4, p3

    const/16 p3, 0x32

    shl-long/2addr v4, p3

    or-long/2addr v2, v4

    const v4, 0x1ffffff

    and-int v5, p6, v4

    int-to-long v6, v5

    const/16 v8, 0x19

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    and-int/2addr p1, v4

    int-to-long v6, p1

    or-long/2addr v2, v6

    aput-wide v2, p0, p2

    if-gez p6, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    move/from16 p2, p10

    if-eq p2, p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v1, -0x3

    :goto_0
    if-ltz p1, :cond_4

    add-int/lit8 p2, p1, 0x2

    aget-wide v2, p0, p2

    long-to-int v6, v2

    and-int/2addr v6, v4

    if-ne v6, v5, :cond_3

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x3

    sget-wide v4, Ln2/a;->a:J

    and-long/2addr v2, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    shl-long/2addr v0, p3

    or-long/2addr v0, v2

    aput-wide v0, p0, p2

    return-void

    :cond_3
    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public i(Lr4/b;)V
    .locals 0

    return-void
.end method

.method public j(Lr4/b;)V
    .locals 3

    iget-object p0, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast p0, Lq3/k;

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-virtual {p1, v0}, Lr4/b;->t(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    invoke-static {p1}, Lq3/k;->d(Lr4/b;)V

    if-nez v2, :cond_2

    invoke-static {p1}, Lq3/k;->o(Lr4/b;)Lg7/d0;

    move-result-object v0

    iget-boolean v1, v0, Lg7/d0;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lg7/d0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'86254750241babac4b8d52996a675549\')"

    invoke-virtual {p1, v0}, Lr4/b;->k(Ljava/lang/String;)V

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly4/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public k(Lr4/b;)V
    .locals 8

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-virtual {p1, v0}, Lr4/b;->t(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lmb/s2;

    const-string v4, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v4}, Lmb/s2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lr4/b;->w(Lq4/d;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    const-string v1, "86254750241babac4b8d52996a675549"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "1cbd3130fa23b59692c061c594c16cc0"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: 86254750241babac4b8d52996a675549, found: "

    invoke-static {p1, v3}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lq3/k;->o(Lr4/b;)Lg7/d0;

    move-result-object v1

    iget-boolean v3, v1, Lg7/d0;->a:Z

    if-eqz v3, :cond_7

    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v1}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'86254750241babac4b8d52996a675549\')"

    invoke-virtual {p1, v1}, Lr4/b;->k(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v1, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v1, Lq3/k;

    iget-object v3, v1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    iput-object p1, v3, Landroidx/work/impl/WorkDatabase;->a:Lr4/b;

    const-string v3, "PRAGMA foreign_keys = ON"

    invoke-virtual {p1, v3}, Lr4/b;->k(Ljava/lang/String;)V

    iget-object v3, v1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase;->d:Lk4/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lk4/j;->l:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-boolean v5, v3, Lk4/j;->g:Z

    if-eqz v5, :cond_5

    const-string v2, "ROOM"

    const-string v3, "Invalidation tracker is initialized twice :/."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v4

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_5
    :try_start_4
    const-string v5, "PRAGMA temp_store = MEMORY;"

    invoke-virtual {p1, v5}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v5, "PRAGMA recursive_triggers=\'ON\';"

    invoke-virtual {p1, v5}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v5, "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v5}, Lr4/b;->k(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lk4/j;->d(Lr4/b;)V

    const-string v5, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    invoke-virtual {p1, v5}, Lr4/b;->d(Ljava/lang/String;)Lr4/i;

    move-result-object v5

    iput-object v5, v3, Lk4/j;->h:Lr4/i;

    iput-boolean v2, v3, Lk4/j;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v4

    :goto_4
    iget-object v1, v1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lr4/b;->b()V

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Ly4/a;->a:Lx4/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ly4/o;->a:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lr4/b;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lr4/b;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {p1}, Lr4/b;->e()V

    goto :goto_5

    :catchall_4
    move-exception p0

    invoke-virtual {p1}, Lr4/b;->e()V

    throw p0

    :cond_6
    iput-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    return-void

    :goto_6
    monitor-exit v4

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lg7/d0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception p1

    invoke-static {v0, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public l(Lr4/b;II)V
    .locals 12

    iget-object v0, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v0, Lq3/k;

    iget-object v1, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, Lk4/b;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lk4/b;->d:Lia/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne p2, p3, :cond_0

    sget-object v1, Lu8/r;->l:Lu8/r;

    goto/16 :goto_6

    :cond_0
    const/4 v3, 0x1

    if-le p3, p2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, p2

    :cond_2
    if-eqz v4, :cond_3

    if-ge v6, p3, :cond_9

    goto :goto_1

    :cond_3
    if-le v6, p3, :cond_9

    :goto_1
    iget-object v7, v1, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TreeMap;

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v7}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v8

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const-string v10, "targetVersion"

    if-eqz v4, :cond_7

    add-int/lit8 v11, v6, 0x1

    invoke-static {v9, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v11, v10, :cond_6

    if-gt v10, p3, :cond_6

    goto :goto_3

    :cond_7
    invoke-static {v9, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt p3, v10, :cond_6

    if-ge v10, v6, :cond_6

    :goto_3
    invoke-virtual {v7, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v3

    goto :goto_4

    :cond_8
    move v7, v2

    :goto_4
    if-nez v7, :cond_2

    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    move-object v1, v5

    :goto_6
    if-eqz v1, :cond_f

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object p0

    const-string p2, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-virtual {p1, p2}, Lr4/b;->t(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_7
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lv8/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_a

    :cond_a
    invoke-interface {p2}, Ljava/io/Closeable;->close()V

    invoke-static {p0}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lv8/b;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_b
    :goto_8
    move-object p2, p0

    check-cast p2, Ld1/d0;

    invoke-virtual {p2}, Ld1/d0;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Ld1/d0;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "triggerName"

    invoke-static {p2, p3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "room_fts_content_sync_"

    invoke-static {p2, p3, v2}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_b

    const-string p3, "DROP TRIGGER IF EXISTS "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/b;->k(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/a;

    invoke-virtual {p2, p1}, Ll4/a;->a(Lr4/b;)V

    goto :goto_9

    :cond_d
    invoke-static {p1}, Lq3/k;->o(Lr4/b;)Lg7/d0;

    move-result-object p0

    iget-boolean p2, p0, Lg7/d0;->a:Z

    if-eqz p2, :cond_e

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'86254750241babac4b8d52996a675549\')"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg7/d0;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_a
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_f
    iget-object p0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, Lk4/b;

    if-eqz p0, :cond_14

    if-le p2, p3, :cond_10

    iget-boolean v1, p0, Lk4/b;->k:Z

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    iget-boolean v1, p0, Lk4/b;->j:Z

    if-eqz v1, :cond_12

    iget-object p0, p0, Lk4/b;->l:Ljava/util/Set;

    if-eqz p0, :cond_11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :cond_11
    const/4 p0, 0x1

    goto :goto_c

    :cond_12
    :goto_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_14

    const-string p0, "DROP TABLE IF EXISTS `Dependency`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `WorkName`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `WorkProgress`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `Preference`"

    invoke-virtual {p1, p0}, Lr4/b;->k(Ljava/lang/String;)V

    iget-object p0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/List;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly4/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_13
    invoke-static {p1}, Lq3/k;->d(Lr4/b;)V

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, " to "

    const-string v0, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    const-string v1, "A migration from "

    invoke-static {v1, p2, p1, p3, v0}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m()V
    .locals 5

    iget v0, p0, Ld1/c0;->b:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ld1/c0;->d:Ljava/lang/Object;

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, -0x1

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, [I

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v2, v3}, Lu8/l;->l0([I[IIII)V

    iput-object v1, p0, Ld1/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public n(IZ)V
    .locals 8

    const v0, 0x1ffffff

    and-int/2addr p1, v0

    iget-object v1, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    iget p0, p0, Ld1/c0;->b:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_1

    if-ge v2, p0, :cond_1

    add-int/lit8 v3, v2, 0x2

    aget-wide v4, v1, v3

    long-to-int v6, v4

    and-int/2addr v6, v0

    if-ne v6, p1, :cond_0

    const-wide p0, 0x6fffffffffffffffL    # 3.1050361846014175E231

    and-long/2addr p0, v4

    int-to-long v4, p2

    const-wide/high16 v6, 0x1000000000000000L

    mul-long/2addr v6, v4

    or-long/2addr p0, v6

    const-wide/high16 v6, -0x8000000000000000L

    mul-long/2addr v4, v6

    or-long/2addr p0, v4

    aput-wide p0, v1, v3

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o(IIJ)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v2, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v2, [J

    const/4 v3, 0x0

    aput-wide p3, v2, v3

    const/4 v3, 0x1

    :cond_0
    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v2, v3

    long-to-int v6, v4

    const v7, 0x1ffffff

    and-int/2addr v6, v7

    const/16 v8, 0x19

    shr-long v9, v4, v8

    long-to-int v9, v9

    and-int/2addr v9, v7

    const/16 v10, 0x32

    shr-long/2addr v4, v10

    long-to-int v4, v4

    const/16 v5, 0x3ff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    iget v4, v0, Ld1/c0;->b:I

    goto :goto_0

    :cond_1
    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v9

    :goto_0
    if-ltz v9, :cond_4

    :goto_1
    array-length v11, v1

    add-int/lit8 v11, v11, -0x2

    if-ge v9, v11, :cond_0

    if-ge v9, v4, :cond_0

    add-int/lit8 v11, v9, 0x2

    aget-wide v12, v1, v11

    shr-long v14, v12, v8

    long-to-int v14, v14

    and-int/2addr v14, v7

    if-ne v14, v6, :cond_2

    aget-wide v14, v1, v9

    add-int/lit8 v16, v9, 0x1

    move/from16 p3, v7

    move/from16 p4, v8

    aget-wide v7, v1, v16

    const/16 v17, 0x20

    move/from16 v18, v10

    move/from16 v19, v11

    shr-long v10, v14, v17

    long-to-int v10, v10

    add-int v10, v10, p1

    long-to-int v11, v14

    add-int v11, v11, p2

    int-to-long v14, v10

    shl-long v14, v14, v17

    int-to-long v10, v11

    const-wide v20, 0xffffffffL

    and-long v10, v10, v20

    or-long/2addr v10, v14

    aput-wide v10, v1, v9

    shr-long v10, v7, v17

    long-to-int v10, v10

    add-int v10, v10, p1

    long-to-int v7, v7

    add-int v7, v7, p2

    int-to-long v10, v10

    shl-long v10, v10, v17

    int-to-long v7, v7

    and-long v7, v7, v20

    or-long/2addr v7, v10

    aput-wide v7, v1, v16

    const/16 v7, 0x3f

    shr-long v7, v12, v7

    const-wide/16 v10, 0x1

    and-long/2addr v7, v10

    const/16 v10, 0x3c

    shl-long/2addr v7, v10

    or-long/2addr v7, v12

    aput-wide v7, v1, v19

    shr-long v7, v12, v18

    long-to-int v7, v7

    and-int/2addr v7, v5

    if-lez v7, :cond_3

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v9, 0x3

    sget-wide v10, Ln2/a;->b:J

    and-long/2addr v10, v12

    and-int v8, v8, p3

    int-to-long v12, v8

    shl-long v12, v12, p4

    or-long/2addr v10, v12

    aput-wide v10, v2, v3

    move v3, v7

    goto :goto_2

    :cond_2
    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 v18, v10

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x3

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, v18

    goto :goto_1

    :cond_4
    return-void
.end method

.method public p(ILi9/g;)V
    .locals 6

    const v0, 0x1ffffff

    and-int/2addr p1, v0

    iget-object v1, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    iget p0, p0, Ld1/c0;->b:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_1

    if-ge v2, p0, :cond_1

    add-int/lit8 v3, v2, 0x2

    aget-wide v3, v1, v3

    long-to-int v3, v3

    and-int/2addr v3, v0

    if-ne v3, p1, :cond_0

    aget-wide p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v0, v1, v2

    const/16 v2, 0x20

    shr-long v3, p0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    shr-long v4, v0, v2

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v3, p0, p1, v0}, Li9/g;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ld1/c0;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, Lla/w;

    sget-object v2, Lla/w;->n:Lla/w;

    if-ne v1, v2, :cond_0

    const-string v1, "HTTP/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Ld1/c0;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    invoke-virtual {p0}, Ld1/c0;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_2
    iget-object p0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, Lj6/n;

    invoke-virtual {p0}, Lj6/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
