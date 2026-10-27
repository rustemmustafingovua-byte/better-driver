.class public final Lc2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/t0;
.implements Lc2/p;


# instance fields
.field public final synthetic l:Lc2/p;

.field public final m:Lb3/m;


# direct methods
.method public constructor <init>(Lc2/p;Lb3/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/t;->l:Lc2/p;

    iput-object p2, p0, Lc2/t;->m:Lb3/m;

    return-void
.end method


# virtual methods
.method public final H(F)J
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1}, Lb3/c;->H(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final M(I)F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1}, Lb3/c;->M(I)F

    move-result p0

    return p0
.end method

.method public final P(F)F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1}, Lb3/c;->P(F)F

    move-result p0

    return p0
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final T()Z
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0}, Lc2/p;->T()Z

    move-result p0

    return p0
.end method

.method public final V(F)F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1}, Lb3/c;->V(F)F

    move-result p0

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Lc2/t;->m:Lb3/m;

    return-object p0
.end method

.method public final h0(F)I
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1}, Lb3/c;->h0(F)I

    move-result p0

    return p0
.end method

.method public final l0(J)J
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1, p2}, Lb3/c;->l0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final m(F)J
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1}, Lb3/c;->m(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final n(J)J
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1, p2}, Lb3/c;->n(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final p0(J)F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1, p2}, Lb3/c;->p0(J)F

    move-result p0

    return p0
.end method

.method public final v(J)F
    .locals 0

    iget-object p0, p0, Lc2/t;->l:Lc2/p;

    invoke-interface {p0, p1, p2}, Lb3/c;->v(J)F

    move-result p0

    return p0
.end method

.method public final y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;
    .locals 0

    const/4 p0, 0x0

    if-gez p1, :cond_0

    move p1, p0

    :cond_0
    if-gez p2, :cond_1

    move p2, p0

    :cond_1
    const/high16 p0, -0x1000000

    and-int p5, p1, p0

    if-nez p5, :cond_2

    and-int/2addr p0, p2

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p5, "Size("

    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " x "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    new-instance p0, Lc2/s;

    invoke-direct {p0, p1, p2, p3, p4}, Lc2/s;-><init>(IILjava/util/Map;Li9/c;)V

    return-object p0
.end method
