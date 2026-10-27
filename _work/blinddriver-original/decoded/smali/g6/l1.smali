.class public final Lg6/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/q;
.implements Ljava/io/Serializable;


# direct methods
.method public static b(Lb6/h;Lj6/h;)Lg6/k1;
    .locals 1

    instance-of v0, p1, Lj6/d;

    if-eqz v0, :cond_1

    check-cast p1, Lj6/d;

    iget-object p1, p1, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb6/x;->B:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {p1, p0}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_0
    new-instance p0, Lg6/i1;

    invoke-direct {p0, p1}, Lg6/i1;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0

    :cond_1
    check-cast p1, Lj6/i;

    iget-object p1, p1, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lb6/x;->B:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {p1, p0}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_2
    new-instance p0, Lg6/i1;

    invoke-direct {p0, p1}, Lg6/i1;-><init>(Ljava/lang/reflect/Method;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lb6/l;)Lb6/w;
    .locals 2

    iget-object p0, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lu6/h;->G(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_0
    const-class p1, Ljava/lang/Object;

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_13

    if-eq p0, p1, :cond_13

    const-class v1, Ljava/lang/CharSequence;

    if-eq p0, v1, :cond_13

    const-class v1, Ljava/io/Serializable;

    if-ne p0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-class p1, Ljava/util/UUID;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    const/16 p1, 0xc

    goto/16 :goto_0

    :cond_2
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_3

    const/4 p1, 0x5

    goto/16 :goto_0

    :cond_3
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_4

    const/4 p1, 0x6

    goto/16 :goto_0

    :cond_4
    const-class p1, Ljava/util/Date;

    if-ne p0, p1, :cond_5

    const/16 p1, 0xa

    goto/16 :goto_0

    :cond_5
    const-class p1, Ljava/util/Calendar;

    if-ne p0, p1, :cond_6

    const/16 p1, 0xb

    goto/16 :goto_0

    :cond_6
    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_8

    const/4 p1, 0x2

    goto :goto_0

    :cond_8
    const-class p1, Ljava/lang/Character;

    if-ne p0, p1, :cond_9

    const/4 p1, 0x4

    goto :goto_0

    :cond_9
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_a

    const/4 p1, 0x3

    goto :goto_0

    :cond_a
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_b

    const/4 p1, 0x7

    goto :goto_0

    :cond_b
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_c

    const/16 p1, 0x8

    goto :goto_0

    :cond_c
    const-class p1, Ljava/net/URI;

    if-ne p0, p1, :cond_d

    const/16 p1, 0xd

    goto :goto_0

    :cond_d
    const-class p1, Ljava/net/URL;

    if-ne p0, p1, :cond_e

    const/16 p1, 0xe

    goto :goto_0

    :cond_e
    const-class p1, Ljava/lang/Class;

    if-ne p0, p1, :cond_f

    const/16 p1, 0xf

    goto :goto_0

    :cond_f
    const-class p1, Ljava/util/Locale;

    if-ne p0, p1, :cond_10

    invoke-static {p1}, Lg6/v;->d0(Ljava/lang/Class;)Lg6/v;

    move-result-object p1

    new-instance v0, Lg6/k1;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    return-object v0

    :cond_10
    const-class p1, Ljava/util/Currency;

    if-ne p0, p1, :cond_11

    invoke-static {p1}, Lg6/v;->d0(Ljava/lang/Class;)Lg6/v;

    move-result-object p1

    new-instance v0, Lg6/k1;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0, p1}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    return-object v0

    :cond_11
    const-class p1, [B

    if-ne p0, p1, :cond_12

    const/16 p1, 0x11

    :goto_0
    new-instance v1, Lg6/k1;

    invoke-direct {v1, p1, p0, v0}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    return-object v1

    :cond_12
    return-object v0

    :cond_13
    :goto_1
    if-ne p0, v0, :cond_14

    sget-object p0, Lg6/j1;->o:Lg6/j1;

    return-object p0

    :cond_14
    if-ne p0, p1, :cond_15

    sget-object p0, Lg6/j1;->p:Lg6/j1;

    return-object p0

    :cond_15
    new-instance p1, Lg6/j1;

    invoke-direct {p1, p0}, Lg6/j1;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method
