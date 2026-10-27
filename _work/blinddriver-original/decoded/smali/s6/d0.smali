.class public final Ls6/d0;
.super Ls6/e0;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Ls6/f0;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    sget-object p0, Lm6/a;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, [S

    array-length p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lb6/f;Ljava/lang/Boolean;)Lb6/u;
    .locals 1

    new-instance v0, Ls6/d0;

    invoke-direct {v0, p0, p1, p2}, Ls6/a;-><init>(Ls6/a;Lb6/f;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final l(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    check-cast p1, [S

    array-length p0, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_0

    aget-short v0, p1, p3

    invoke-virtual {p2, v0}, Ls5/g;->X(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    check-cast p1, [S

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p3}, Ls6/a;->j(Lb6/r0;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p1

    :goto_0
    if-ge v2, p0, :cond_0

    aget-short p3, p1, v2

    invoke-virtual {p2, p3}, Ls5/g;->X(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    array-length p0, p1

    :goto_1
    if-ge v2, p0, :cond_2

    aget-short p3, p1, v2

    invoke-virtual {p2, p3}, Ls5/g;->X(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method
