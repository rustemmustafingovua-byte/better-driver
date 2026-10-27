.class public final Lp6/x;
.super Lp6/z;
.source "SourceFile"


# static fields
.field public static final m:Lp6/x;


# instance fields
.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp6/x;

    const-string v1, ""

    invoke-direct {v0, v1}, Lp6/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp6/x;->m:Lp6/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/x;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final F()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final H(Ls5/a;)[B
    .locals 3

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x4

    new-instance v1, La6/d;

    const/high16 v2, 0x10000

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, La6/d;-><init>(La6/b;I)V

    :try_start_0
    invoke-virtual {p1, p0, v1}, Ls5/a;->b(Ljava/lang/String;La6/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, La6/d;->n()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot access contents of TextNode as binary due to broken Base64 encoding: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lh6/c;

    invoke-direct {v0, v2, p1, p0}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->A:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ls5/g;->U()V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lp6/x;

    if-eqz v1, :cond_2

    check-cast p1, Lp6/x;

    iget-object p1, p1, Lp6/x;->l:Ljava/lang/String;

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    return v0
.end method

.method public final l()D
    .locals 3

    sget-object v0, Lw5/h;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public final n()I
    .locals 0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    invoke-static {p0}, Lw5/h;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final p()J
    .locals 2

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    invoke-static {p0}, Lw5/h;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp6/x;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final s()[B
    .locals 1

    sget-object v0, Ls5/b;->a:Ls5/a;

    invoke-virtual {p0, v0}, Lp6/x;->H(Ls5/a;)[B

    move-result-object p0

    return-object p0
.end method
