.class public final Lf8/e2;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final p:Lf8/e2;

.field public static final q:Lf8/z1;


# instance fields
.field public n:Ljava/util/List;

.field public o:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/e2;

    invoke-direct {v0}, Lf8/e2;-><init>()V

    sput-object v0, Lf8/e2;->p:Lf8/e2;

    new-instance v0, Lf8/z1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/e2;->q:Lf8/z1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/e2;->o:B

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/e2;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/e2;->p:Lf8/e2;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/e2;->p:Lf8/e2;

    invoke-virtual {p0}, Lf8/e2;->v()Lf8/a2;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf8/e2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/e2;

    iget-object v1, p0, Lf8/e2;->n:Ljava/util/List;

    iget-object v2, p1, Lf8/e2;->n:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/e2;->v()Lf8/a2;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->S:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lf8/e2;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x35

    const/16 v3, 0x25

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/e2;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lf8/y3;->m:Lf8/i5;

    iget-object v1, v1, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf8/c;->l:I

    return v1
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method

.method public final p()Z
    .locals 2

    iget-byte v0, p0, Lf8/e2;->o:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lf8/e2;->o:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->T:Lf8/x3;

    const-class v0, Lf8/e2;

    const-class v1, Lf8/a2;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Lf8/a2;
    .locals 1

    sget-object v0, Lf8/e2;->p:Lf8/e2;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/a2;

    invoke-direct {p0}, Lf8/a2;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/a2;

    invoke-direct {v0}, Lf8/a2;-><init>()V

    invoke-virtual {v0, p0}, Lf8/a2;->S(Lf8/e2;)V

    return-object v0
.end method
