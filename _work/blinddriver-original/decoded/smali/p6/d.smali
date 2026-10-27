.class public final Lp6/d;
.super Lp6/z;
.source "SourceFile"


# static fields
.field public static final m:Lp6/d;


# instance fields
.field public final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp6/d;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lp6/d;-><init>([B)V

    sput-object v0, Lp6/d;->m:Lp6/d;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/d;->l:[B

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->z:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 2

    iget-object p0, p0, Lp6/d;->l:[B

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ls5/g;->U()V

    return-void

    :cond_0
    iget-object p2, p2, Lb6/r0;->o:Lb6/p0;

    iget-object p2, p2, Ld6/m;->m:Ld6/a;

    iget-object p2, p2, Ld6/a;->s:Ls5/a;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-virtual {p1, p2, p0, v0, v1}, Ls5/g;->J(Ls5/a;[BII)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lp6/d;

    if-eqz v2, :cond_4

    check-cast p1, Lp6/d;

    iget-object p1, p1, Lp6/d;->l:[B

    iget-object p0, p0, Lp6/d;->l:[B

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp6/d;->l:[B

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    sget-object v0, Ls5/b;->a:Ls5/a;

    iget-object p0, p0, Lp6/d;->l:[B

    invoke-virtual {v0, p0}, Ls5/a;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s()[B
    .locals 0

    iget-object p0, p0, Lp6/d;->l:[B

    return-object p0
.end method
