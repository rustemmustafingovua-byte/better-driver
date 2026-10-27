.class public final Lw/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lx/e0;

.field public c:Z

.field public d:I

.field public e:F


# direct methods
.method public static a(Lw/k;Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lw/k;->k:Ljava/lang/Object;

    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/l;

    iget p0, p0, Lw/l;->a:I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lw/k;->k:Ljava/lang/Object;

    invoke-static {p0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/l;

    iget p0, p0, Lw/l;->a:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
