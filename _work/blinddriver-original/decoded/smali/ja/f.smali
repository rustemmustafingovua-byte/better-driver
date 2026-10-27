.class public final Lja/f;
.super Lb6/g0;
.source "SourceFile"


# instance fields
.field public final n:Z


# direct methods
.method public constructor <init>(Lf7/c0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lb6/g0;-><init>(Lf7/c0;)V

    iput-boolean p2, p0, Lja/f;->n:Z

    return-void
.end method


# virtual methods
.method public final b(B)V
    .locals 1

    iget-boolean v0, p0, Lja/f;->n:Z

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/g0;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/g0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-boolean v0, p0, Lja/f;->n:Z

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb6/g0;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lb6/g0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final e(J)V
    .locals 1

    iget-boolean v0, p0, Lja/f;->n:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb6/g0;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lb6/g0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final g(S)V
    .locals 2

    iget-boolean v0, p0, Lja/f;->n:Z

    const v1, 0xffff

    if-eqz v0, :cond_0

    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/g0;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/g0;->f(Ljava/lang/String;)V

    return-void
.end method
