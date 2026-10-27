.class public final Ldd/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[D

.field public final b:[D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>([D[D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/v0;->a:[D

    iput-object p2, p0, Ldd/v0;->b:[D

    invoke-static {p1}, Lu8/l;->C0([D)D

    move-result-wide v0

    iput-wide v0, p0, Ldd/v0;->c:D

    invoke-static {p1}, Lu8/l;->B0([D)D

    move-result-wide v0

    iput-wide v0, p0, Ldd/v0;->d:D

    invoke-static {p2}, Lu8/l;->C0([D)D

    move-result-wide v0

    iput-wide v0, p0, Ldd/v0;->e:D

    invoke-static {p2}, Lu8/l;->B0([D)D

    move-result-wide p1

    iput-wide p1, p0, Ldd/v0;->f:D

    return-void
.end method
