.class public final Ls6/p0;
.super Ls6/o0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# static fields
.field public static final p:[C


# instance fields
.field public final o:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ls6/p0;->p:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Ls6/p0;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public static final j([BII)V
    .locals 2

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method

.method public static k([CII)V
    .locals 3

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    sget-object v1, Ls6/p0;->p:[C

    aget-char v0, v1, v0

    aput-char v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, p0, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, p0, v0

    add-int/lit8 p2, p2, 0x3

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v1, p1

    aput-char p1, p0, p2

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 1

    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    sget-object p2, Lr5/p;->l:Lr5/p;

    if-ne p1, p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Lr5/p;->p:Lr5/p;

    if-ne p1, p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Ls6/p0;->o:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p0, Ls6/p0;

    invoke-direct {p0, p1}, Ls6/p0;-><init>(Ljava/lang/Boolean;)V

    :cond_2
    return-object p0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 10

    check-cast p1, Ljava/util/UUID;

    const/4 p3, 0x0

    iget-object p0, p0, Ls6/p0;->o:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lu6/z;

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Lu6/z;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, p3

    :goto_0
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/16 v2, 0x20

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    new-array v3, p0, [B

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    shr-long v8, v4, v2

    long-to-int p1, v8

    invoke-static {v3, p1, p3}, Ls6/p0;->j([BII)V

    long-to-int p1, v4

    invoke-static {v3, p1, v0}, Ls6/p0;->j([BII)V

    shr-long v4, v6, v2

    long-to-int p1, v4

    invoke-static {v3, p1, v1}, Ls6/p0;->j([BII)V

    long-to-int p1, v6

    const/16 v0, 0xc

    invoke-static {v3, p1, v0}, Ls6/p0;->j([BII)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ls5/b;->a:Ls5/a;

    invoke-virtual {p2, p1, v3, p3, p0}, Ls5/g;->J(Ls5/a;[BII)V

    return-void

    :cond_2
    const/16 p0, 0x24

    new-array v3, p0, [C

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    shr-long v6, v4, v2

    long-to-int v6, v6

    shr-int/lit8 v7, v6, 0x10

    invoke-static {v3, v7, p3}, Ls6/p0;->k([CII)V

    invoke-static {v3, v6, v0}, Ls6/p0;->k([CII)V

    const/16 v0, 0x2d

    aput-char v0, v3, v1

    long-to-int v1, v4

    ushr-int/lit8 v4, v1, 0x10

    const/16 v5, 0x9

    invoke-static {v3, v4, v5}, Ls6/p0;->k([CII)V

    const/16 v4, 0xd

    aput-char v0, v3, v4

    const/16 v4, 0xe

    invoke-static {v3, v1, v4}, Ls6/p0;->k([CII)V

    const/16 v1, 0x12

    aput-char v0, v3, v1

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    const/16 p1, 0x30

    ushr-long v6, v4, p1

    long-to-int p1, v6

    const/16 v1, 0x13

    invoke-static {v3, p1, v1}, Ls6/p0;->k([CII)V

    const/16 p1, 0x17

    aput-char v0, v3, p1

    ushr-long v0, v4, v2

    long-to-int p1, v0

    const/16 v0, 0x18

    invoke-static {v3, p1, v0}, Ls6/p0;->k([CII)V

    long-to-int p1, v4

    shr-int/lit8 v0, p1, 0x10

    const/16 v1, 0x1c

    invoke-static {v3, v0, v1}, Ls6/p0;->k([CII)V

    invoke-static {v3, p1, v2}, Ls6/p0;->k([CII)V

    invoke-virtual {p2, v3, p3, p0}, Ls5/g;->s0([CII)V

    return-void
.end method
