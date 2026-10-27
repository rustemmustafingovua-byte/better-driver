.class public final Lu2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr2/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lp2/g;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr2/c;

    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-direct {v0}, Lr2/c;-><init>()V

    iput-object p1, v0, Lr2/c;->d:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, v0, Lr2/c;->b:I

    iput v1, v0, Lr2/c;->c:I

    iput-object v0, p0, Lu2/h;->a:Lr2/c;

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v0

    iput v0, p0, Lu2/h;->b:I

    invoke-static {p2, p3}, Lp2/l0;->e(J)I

    move-result v0

    iput v0, p0, Lu2/h;->c:I

    iput v1, p0, Lu2/h;->d:I

    iput v1, p0, Lu2/h;->e:I

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result p0

    invoke-static {p2, p3}, Lp2/l0;->e(J)I

    move-result p2

    const-string p3, ") offset is outside of text region "

    if-ltz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p0, v0, :cond_2

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p0, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Do not set reversed range: "

    const-string v0, " > "

    invoke-static {p3, p0, v0, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "end ("

    invoke-static {p2, v0, p3}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "start ("

    invoke-static {p0, v0, p3}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    invoke-static {p1, p2}, Lp2/d0;->b(II)J

    move-result-wide v0

    iget-object v2, p0, Lu2/h;->a:Lr2/c;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lr2/c;->k(IILjava/lang/String;)V

    iget p1, p0, Lu2/h;->b:I

    iget p2, p0, Lu2/h;->c:I

    invoke-static {p1, p2}, Lp2/d0;->b(II)J

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Ll7/a;->B(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lp2/l0;->f(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lu2/h;->h(I)V

    invoke-static {p1, p2}, Lp2/l0;->e(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lu2/h;->g(I)V

    iget p1, p0, Lu2/h;->d:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget v2, p0, Lu2/h;->e:I

    invoke-static {p1, v2}, Lp2/d0;->b(II)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ll7/a;->B(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p2, p0, Lu2/h;->d:I

    iput p2, p0, Lu2/h;->e:I

    return-void

    :cond_0
    invoke-static {v0, v1}, Lp2/l0;->f(J)I

    move-result p1

    iput p1, p0, Lu2/h;->d:I

    invoke-static {v0, v1}, Lp2/l0;->e(J)I

    move-result p1

    iput p1, p0, Lu2/h;->e:I

    :cond_1
    return-void
.end method

.method public final b(I)C
    .locals 4

    iget-object p0, p0, Lu2/h;->a:Lr2/c;

    iget-object v0, p0, Lr2/c;->e:Ljava/lang/Object;

    check-cast v0, Ls0/l0;

    if-nez v0, :cond_0

    iget-object p0, p0, Lr2/c;->d:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    iget v1, p0, Lr2/c;->b:I

    if-ge p1, v1, :cond_1

    iget-object p0, p0, Lr2/c;->d:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_1
    iget v1, v0, Ls0/l0;->b:I

    invoke-virtual {v0}, Ls0/l0;->a()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lr2/c;->b:I

    add-int v3, v1, v2

    if-ge p1, v3, :cond_3

    sub-int/2addr p1, v2

    iget p0, v0, Ls0/l0;->c:I

    if-ge p1, p0, :cond_2

    iget-object p0, v0, Ls0/l0;->e:Ljava/lang/Object;

    check-cast p0, [C

    aget-char p0, p0, p1

    return p0

    :cond_2
    iget-object v1, v0, Ls0/l0;->e:Ljava/lang/Object;

    check-cast v1, [C

    sub-int/2addr p1, p0

    iget p0, v0, Ls0/l0;->d:I

    add-int/2addr p1, p0

    aget-char p0, v1, p1

    return p0

    :cond_3
    iget-object v0, p0, Lr2/c;->d:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Lr2/c;->c:I

    sub-int/2addr v1, p0

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final c()Lp2/l0;
    .locals 2

    iget v0, p0, Lu2/h;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lu2/h;->e:I

    invoke-static {v0, p0}, Lp2/d0;->b(II)J

    move-result-wide v0

    new-instance p0, Lp2/l0;

    invoke-direct {p0, v0, v1}, Lp2/l0;-><init>(J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(IILjava/lang/String;)V
    .locals 3

    const-string v0, ") offset is outside of text region "

    iget-object v1, p0, Lu2/h;->a:Lr2/c;

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v2

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v2

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lr2/c;->k(IILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lu2/h;->h(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lu2/h;->g(I)V

    const/4 p1, -0x1

    iput p1, p0, Lu2/h;->d:I

    iput p1, p0, Lu2/h;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, "Do not set reversed range: "

    const-string v0, " > "

    invoke-static {p3, p1, v0, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "end ("

    invoke-static {p2, p1, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start ("

    invoke-static {p1, p2, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(II)V
    .locals 3

    const-string v0, ") offset is outside of text region "

    iget-object v1, p0, Lu2/h;->a:Lr2/c;

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v2

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v2

    if-gt p2, v2, :cond_1

    if-ge p1, p2, :cond_0

    iput p1, p0, Lu2/h;->d:I

    iput p2, p0, Lu2/h;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not set reversed or empty range: "

    const-string v1, " > "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "end ("

    invoke-static {p2, p1, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start ("

    invoke-static {p1, p2, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(II)V
    .locals 3

    const-string v0, ") offset is outside of text region "

    iget-object v1, p0, Lu2/h;->a:Lr2/c;

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v2

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v2

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lu2/h;->h(I)V

    invoke-virtual {p0, p2}, Lu2/h;->g(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not set reversed range: "

    const-string v1, " > "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "end ("

    invoke-static {p2, p1, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start ("

    invoke-static {p1, p2, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set selectionEnd to a negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lu2/h;->c:I

    return-void
.end method

.method public final h(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set selectionStart to a negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lu2/h;->b:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu2/h;->a:Lr2/c;

    invoke-virtual {p0}, Lr2/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
