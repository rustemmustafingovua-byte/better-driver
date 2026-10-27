.class public abstract Lf8/s5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf8/v4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lf8/q5;->f:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lf8/q5;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lf8/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lf8/r5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf8/r5;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lf8/r5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf8/r5;-><init>(I)V

    :goto_0
    sput-object v0, Lf8/s5;->a:Lf8/v4;

    return-void
.end method

.method public static a([BII)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lf8/s5;->c(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lf8/s5;->b(II)I

    move-result p0

    return p0

    :cond_2
    const/16 p0, -0xc

    if-le v0, p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v0
.end method

.method public static b(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static c(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
