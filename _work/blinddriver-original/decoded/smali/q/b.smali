.class public abstract Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz0/d;

.field public static final b:Lz0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lz0/d;

    const v2, -0x5da563b0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lz0/d;-><init>(IZLt8/e;)V

    sput-object v1, Lq/b;->a:Lz0/d;

    new-instance v0, Lod/v;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lod/v;-><init>(I)V

    new-instance v1, Lz0/d;

    const v2, -0x56bfabc5

    invoke-direct {v1, v2, v3, v0}, Lz0/d;-><init>(IZLt8/e;)V

    sput-object v1, Lq/b;->b:Lz0/d;

    return-void
.end method

.method public static final a(IIZI)I
    .locals 2

    const/4 v0, 0x0

    if-lt p1, p3, :cond_1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    sub-int/2addr p3, p1

    return p3

    :cond_1
    if-nez p2, :cond_2

    if-gt p1, p0, :cond_4

    goto :goto_0

    :cond_2
    sub-int v1, p3, p1

    if-le v1, p0, :cond_4

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr p0, p1

    return p0

    :cond_4
    if-eqz p2, :cond_5

    if-gt p1, p0, :cond_7

    goto :goto_1

    :cond_5
    sub-int v1, p3, p1

    if-le v1, p0, :cond_7

    :goto_1
    if-nez p2, :cond_6

    :goto_2
    return p0

    :cond_6
    sub-int/2addr p0, p1

    return p0

    :cond_7
    if-nez p2, :cond_8

    return v0

    :cond_8
    sub-int/2addr p3, p1

    return p3
.end method
