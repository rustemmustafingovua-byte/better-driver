.class public final Ldd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(III)J
    .locals 3

    int-to-long v0, p0

    const/16 p0, 0x28

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const/16 v2, 0x8

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method
