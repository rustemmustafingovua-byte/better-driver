.class public final Lw5/j;
.super Ljava/io/Writer;
.source "SourceFile"

# interfaces
.implements La6/a;


# instance fields
.field public final l:La6/s;


# direct methods
.method public constructor <init>(La6/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, La6/s;

    invoke-direct {v0, p1}, La6/s;-><init>(La6/b;)V

    iput-object v0, p0, Lw5/j;->l:La6/s;

    return-void
.end method


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lw5/j;->write(I)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 3

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lw5/j;->l:La6/s;

    invoke-virtual {v2, v0, v1, p1}, La6/s;->b(IILjava/lang/String;)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .line 7
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    iget-object v0, p0, Lw5/j;->l:La6/s;

    invoke-virtual {v0, p2, p3, p1}, La6/s;->b(IILjava/lang/String;)V

    return-object p0
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lw5/j;->write(I)V

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lw5/j;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lw5/j;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    return-object p0
.end method

.method public final b()La6/b;
    .locals 0

    iget-object p0, p0, Lw5/j;->l:La6/s;

    iget-object p0, p0, La6/s;->a:La6/b;

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-char p1, p1

    .line 5
    iget-object p0, p0, Lw5/j;->l:La6/s;

    iget v0, p0, La6/s;->c:I

    if-ltz v0, :cond_0

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0}, La6/s;->q(I)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, La6/s;->j:Ljava/lang/String;

    .line 8
    iput-object v0, p0, La6/s;->k:[C

    .line 9
    iget-object v0, p0, La6/s;->h:[C

    .line 10
    iget v1, p0, La6/s;->i:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, La6/s;->r(I)V

    .line 12
    invoke-virtual {p0}, La6/s;->j()V

    .line 13
    iget-object v0, p0, La6/s;->h:[C

    .line 14
    :cond_1
    iget v1, p0, La6/s;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La6/s;->i:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lw5/j;->l:La6/s;

    invoke-virtual {p0, v0, v1, p1}, La6/s;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 0

    .line 4
    iget-object p0, p0, Lw5/j;->l:La6/s;

    invoke-virtual {p0, p2, p3, p1}, La6/s;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final write([C)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    iget-object p0, p0, Lw5/j;->l:La6/s;

    invoke-virtual {p0, p1, v0, v1}, La6/s;->c([CII)V

    return-void
.end method

.method public final write([CII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lw5/j;->l:La6/s;

    invoke-virtual {p0, p1, p2, p3}, La6/s;->c([CII)V

    return-void
.end method
