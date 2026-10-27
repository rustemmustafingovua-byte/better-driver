.class public final Ls6/q;
.super Ls6/o0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# static fields
.field public static final p:Ls6/q;


# instance fields
.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls6/q;

    const-class v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Ls6/q;-><init>(Ljava/lang/Class;)V

    sput-object v0, Ls6/q;->p:Ls6/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ls6/q;->o:Z

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    iget-boolean p2, p0, Ls6/q;->o:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    const-class p2, Ljava/math/BigDecimal;

    if-ne p0, p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 1

    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-class p0, Ljava/math/BigDecimal;

    if-ne v0, p0, :cond_1

    sget-object p0, Ls6/p;->p:Ls6/p;

    return-object p0

    :cond_1
    sget-object p0, Ls6/p;->q:Ls6/p;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    instance-of p0, p1, Ljava/math/BigDecimal;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ls5/g;->a0(Ljava/math/BigDecimal;)V

    return-void

    :cond_0
    instance-of p0, p1, Ljava/math/BigInteger;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Ls5/g;->b0(Ljava/math/BigInteger;)V

    return-void

    :cond_1
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ls5/g;->Y(J)V

    return-void

    :cond_2
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ls5/g;->V(D)V

    return-void

    :cond_3
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->W(F)V

    return-void

    :cond_4
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_6

    instance-of p0, p1, Ljava/lang/Byte;

    if-nez p0, :cond_6

    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->Z(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->X(I)V

    return-void
.end method
