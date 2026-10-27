.class public final Lg6/j0;
.super Lg6/p0;
.source "SourceFile"


# static fields
.field public static final s:Lg6/j0;

.field public static final t:Lg6/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/j0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lg6/j0;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    sput-object v0, Lg6/j0;->s:Lg6/j0;

    new-instance v0, Lg6/j0;

    const-class v1, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/j0;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    sput-object v0, Lg6/j0;->t:Lg6/j0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Character;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Lt6/f;->q:Lt6/f;

    invoke-direct {p0, p1, v1, p2, v0}, Lg6/p0;-><init>(Ljava/lang/Class;Lt6/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lg6/p0;->q:Ljava/lang/Object;

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v5, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/4 v6, 0x1

    if-eq v0, v6, :cond_9

    if-eq v0, v3, :cond_8

    const/16 v7, 0xb

    if-eq v0, v7, :cond_6

    const/4 v7, 0x6

    if-eq v0, v7, :cond_5

    const/4 v6, 0x7

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lg6/p0;->o:Lt6/f;

    invoke-virtual {p2, v0, v5, v3}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x2

    if-eq v6, v0, :cond_3

    if-eq v6, v3, :cond_1

    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    if-ltz p0, :cond_0

    const p1, 0xffff

    if-gt p0, p1, :cond_0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "value outside valid Character range (0x0000 - 0xFFFF)"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v5, p0, p1, v0}, Lb6/i;->j0(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    check-cast v2, Ljava/lang/Character;

    return-object v2

    :cond_2
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Integer value ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v5, v1, p1}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1

    :cond_5
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-boolean p1, p0, Lg6/p0;->r:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    :cond_7
    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_9
    invoke-virtual {p2, v5, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0, p2, p1}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_b

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_b
    const/4 v3, 0x4

    if-ne v0, v3, :cond_c

    check-cast v2, Ljava/lang/Character;

    return-object v2

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/f1;->l(Lb6/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_d
    const-string p0, "Expected either Integer value code or 1-character String"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v5, p1, p0, v0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
