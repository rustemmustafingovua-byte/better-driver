.class public abstract Lb0/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lad/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lad/s2;

    sget-object v1, Lu2/p;->a:Lu2/c0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lad/s2;-><init>(Lu2/q;II)V

    sput-object v0, Lb0/i3;->a:Lad/s2;

    return-void
.end method

.method public static final a(Lu2/d0;Lp2/g;)Lu2/b0;
    .locals 8

    invoke-interface {p0, p1}, Lu2/d0;->a(Lp2/g;)Lu2/b0;

    move-result-object p0

    iget-object v0, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lu2/b0;->a:Lp2/g;

    iget-object p0, p0, Lu2/b0;->b:Lu2/q;

    iget-object v2, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-interface {p0, v6}, Lu2/q;->s(I)I

    move-result v7

    invoke-static {v7, v2, v6}, Lb0/i3;->b(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lu2/q;->s(I)I

    move-result v4

    invoke-static {v4, v2, v0}, Lb0/i3;->b(III)V

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-interface {p0, v5}, Lu2/q;->j(I)I

    move-result v4

    invoke-static {v4, v0, v5}, Lb0/i3;->c(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Lu2/q;->j(I)I

    move-result v3

    invoke-static {v3, v0, v2}, Lb0/i3;->c(III)V

    new-instance v0, Lu2/b0;

    new-instance v2, Lad/s2;

    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v3, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, p0, p1, v3}, Lad/s2;-><init>(Lu2/q;II)V

    invoke-direct {v0, v1, v2}, Lu2/b0;-><init>(Lp2/g;Lu2/q;)V

    return-object v0
.end method

.method public static final b(III)V
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, " -> "

    const-string v1, " is not in range of transformed text [0, "

    const-string v2, "OffsetMapping.originalToTransformed returned invalid mapping: "

    invoke-static {v2, p2, v0, p0, v1}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final c(III)V
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, " -> "

    const-string v1, " is not in range of original text [0, "

    const-string v2, "OffsetMapping.transformedToOriginal returned invalid mapping: "

    invoke-static {v2, p2, v0, p0, v1}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
