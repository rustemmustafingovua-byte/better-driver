.class public final Lg6/i0;
.super Lg6/p0;
.source "SourceFile"


# static fields
.field public static final s:Lg6/i0;

.field public static final t:Lg6/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/i0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lg6/i0;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    sput-object v0, Lg6/i0;->s:Lg6/i0;

    new-instance v0, Lg6/i0;

    const-class v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/i0;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    sput-object v0, Lg6/i0;->t:Lg6/i0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Byte;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Lt6/f;->q:Lt6/f;

    invoke-direct {p0, p1, v1, p2, v0}, Lg6/p0;-><init>(Ljava/lang/Class;Lt6/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ls5/k;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->P()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lg6/p0;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->C(Ls5/k;Lb6/i;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lg6/p0;->q:Ljava/lang/Object;

    const/4 v5, 0x4

    iget-object v6, p0, Lg6/f1;->l:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    if-eq v0, v2, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-static {p1, p2, v6}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_2
    if-ne v0, v5, :cond_3

    check-cast v4, Ljava/lang/Byte;

    return-object v4

    :cond_3
    invoke-virtual {p1}, Ls5/k;->P()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v3

    :cond_5
    invoke-virtual {p1}, Ls5/k;->P()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_9
    invoke-virtual {p2, v6, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_a

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_a
    if-ne v0, v5, :cond_b

    check-cast v4, Ljava/lang/Byte;

    return-object v4

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/f1;->l(Lb6/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lw5/h;->k(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_d

    const/16 v1, 0xff

    if-gt v0, v1, :cond_d

    int-to-byte p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "overflow, value cannot be represented as 8-bit value"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p2, v6, p1, v0, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :catch_0
    const-string v0, "not a valid Byte value"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p2, v6, p1, v0, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method
