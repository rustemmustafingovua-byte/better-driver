.class public final Lf2/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ljava/io/Serializable;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf2/s;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lf2/t1;->c:Ljava/io/Serializable;

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lf2/t1;->b:I

    .line 12
    new-instance p2, Landroid/view/GestureDetector;

    .line 13
    new-instance v0, Lf2/s1;

    invoke-direct {v0, p0}, Lf2/s1;-><init>(Lf2/t1;)V

    .line 14
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lf2/t1;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg5/s;[Ld7/c;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/t1;->d:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lf2/t1;->c:Ljava/io/Serializable;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lf2/t1;->a:Z

    iput p4, p0, Lf2/t1;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lf2/t1;->c:Ljava/io/Serializable;

    .line 6
    iput-boolean p3, p0, Lf2/t1;->a:Z

    .line 7
    new-instance p3, Lh8/c;

    invoke-direct {p3, p1, p2}, Lh8/c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p3, p0, Lf2/t1;->d:Ljava/lang/Object;

    .line 8
    iput p4, p0, Lf2/t1;->b:I

    return-void
.end method

.method public static a([[[Lk8/d;ILk8/d;)V
    .locals 3

    iget v0, p2, Lk8/d;->d:I

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget p1, p2, Lk8/d;->c:I

    aget-object p0, p0, p1

    iget-object p1, p2, Lk8/d;->a:Lj8/a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal mode "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    aget-object p1, p0, v1

    if-eqz p1, :cond_5

    iget p1, p1, Lk8/d;->f:I

    iget v0, p2, Lk8/d;->f:I

    if-le p1, v0, :cond_4

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_1
    aput-object p2, p0, v1

    return-void
.end method

.method public static c(Lj8/a;C)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk8/b;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lk8/b;->a:[I

    const/16 v1, 0x60

    const/4 v2, -0x1

    if-ge p1, v1, :cond_2

    aget p0, p0, p1

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    if-eq p0, v2, :cond_5

    goto :goto_1

    :cond_3
    const/16 p0, 0x30

    if-lt p1, p0, :cond_5

    const/16 p0, 0x39

    if-gt p1, p0, :cond_5

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static e(I)Lj8/c;
    .locals 1

    invoke-static {p0}, Landroidx/fragment/app/t1;->d(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x28

    invoke-static {p0}, Lj8/c;->a(I)Lj8/c;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    invoke-static {p0}, Lj8/c;->a(I)Lj8/c;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x9

    invoke-static {p0}, Lj8/c;->a(I)Lj8/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lj8/c;[[[Lk8/d;ILk8/d;)V
    .locals 12

    move v3, p3

    iget-object v0, p0, Lf2/t1;->c:Ljava/io/Serializable;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lf2/t1;->d:Ljava/lang/Object;

    check-cast v0, Lh8/c;

    iget-object v2, v0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    iget-object v9, v0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    array-length v2, v2

    iget v0, v0, Lh8/c;->b:I

    const-string v10, ""

    if-ltz v0, :cond_0

    invoke-virtual {v8, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-object v5, v9, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v0, 0x1

    :goto_0
    move v11, v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move v4, v0

    :goto_2
    if-ge v4, v11, :cond_2

    invoke-virtual {v8, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-object v2, v9, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lk8/d;

    sget-object v2, Lj8/a;->p:Lj8/a;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lk8/d;-><init>(Lf2/t1;Lj8/a;IIILk8/d;Lj8/c;)V

    invoke-static {p2, p3, v0}, Lf2/t1;->a([[[Lk8/d;ILk8/d;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v8, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lj8/a;->r:Lj8/a;

    invoke-static {v2, v0}, Lf2/t1;->c(Lj8/a;C)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lk8/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lk8/d;-><init>(Lf2/t1;Lj8/a;IIILk8/d;Lj8/c;)V

    invoke-static {p2, p3, v0}, Lf2/t1;->a([[[Lk8/d;ILk8/d;)V

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lj8/a;->o:Lj8/a;

    invoke-static {v2, v0}, Lf2/t1;->c(Lj8/a;C)Z

    move-result v0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    new-instance v0, Lk8/d;

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v9, :cond_5

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Lf2/t1;->c(Lj8/a;C)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v5, v10

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v11

    :goto_4
    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lk8/d;-><init>(Lf2/t1;Lj8/a;IIILk8/d;Lj8/c;)V

    invoke-static {p2, p3, v0}, Lf2/t1;->a([[[Lk8/d;ILk8/d;)V

    :cond_6
    invoke-virtual {v8, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lj8/a;->n:Lj8/a;

    invoke-static {v2, v0}, Lf2/t1;->c(Lj8/a;C)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lk8/d;

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v9, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Lf2/t1;->c(Lj8/a;C)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v3, 0x2

    if-ge v1, v9, :cond_9

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Lf2/t1;->c(Lj8/a;C)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v10, 0x3

    :cond_9
    :goto_5
    move v5, v10

    goto :goto_7

    :cond_a
    :goto_6
    move v5, v11

    :goto_7
    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lk8/d;-><init>(Lf2/t1;Lj8/a;IIILk8/d;Lj8/c;)V

    invoke-static {p2, p3, v0}, Lf2/t1;->a([[[Lk8/d;ILk8/d;)V

    :cond_b
    return-void
.end method

.method public d(Lj8/c;)Lg5/m;
    .locals 12

    iget-object v0, p0, Lf2/t1;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lf2/t1;->d:Ljava/lang/Object;

    check-cast v3, Lh8/c;

    iget-object v4, v3, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    iget-object v3, v3, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    array-length v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x2

    const/4 v7, 0x4

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v2, v5, v4

    const-class v2, Lk8/d;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lk8/d;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v4, v5}, Lf2/t1;->b(Lj8/c;[[[Lk8/d;ILk8/d;)V

    :goto_0
    if-gt v6, v1, :cond_3

    move v5, v4

    :goto_1
    array-length v8, v3

    if-ge v5, v8, :cond_2

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v2, v6

    aget-object v9, v9, v5

    aget-object v9, v9, v8

    if-eqz v9, :cond_0

    if-ge v6, v1, :cond_0

    invoke-virtual {p0, p1, v2, v6, v9}, Lf2/t1;->b(Lj8/c;[[[Lk8/d;ILk8/d;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    const v6, 0x7fffffff

    move v9, v4

    move v8, v6

    move v6, v5

    :goto_3
    array-length v10, v3

    if-ge v9, v10, :cond_6

    move v10, v4

    :goto_4
    if-ge v10, v7, :cond_5

    aget-object v11, v2, v1

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    if-eqz v11, :cond_4

    iget v11, v11, Lk8/d;->f:I

    if-ge v11, v8, :cond_4

    move v5, v9

    move v6, v10

    move v8, v11

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    if-ltz v5, :cond_7

    new-instance v0, Lg5/m;

    aget-object v1, v2, v1

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    invoke-direct {v0, p0, p1, v1}, Lg5/m;-><init>(Lf2/t1;Lj8/c;Lk8/d;)V

    return-object v0

    :cond_7
    new-instance p0, Ld1/h;

    const-string p1, "Internal error: failed to encode \""

    const-string v1, "\""

    invoke-static {p1, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
