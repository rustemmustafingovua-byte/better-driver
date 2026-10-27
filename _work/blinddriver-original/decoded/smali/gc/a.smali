.class public abstract Lgc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgc/a;->a:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public abstract c(Lpb/h;Lpb/h;)V
.end method

.method public final d()Z
    .locals 1

    iget p0, p0, Lgc/a;->a:I

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract f(Z)Z
.end method

.method public abstract g(III)V
.end method

.method public final h()Z
    .locals 1

    iget p0, p0, Lgc/a;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
