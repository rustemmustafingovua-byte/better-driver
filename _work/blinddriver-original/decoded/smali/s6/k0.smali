.class public final Ls6/k0;
.super Ls6/n0;
.source "SourceFile"


# instance fields
.field public final n:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    iput p1, p0, Ls6/k0;->n:I

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    iget p0, p0, Ls6/k0;->n:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p0, p3, Lb6/r0;->o:Lb6/p0;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->s:Ls5/a;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Ls5/a;->e([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget-object p0, Lb6/q0;->z:Lb6/q0;

    iget-object v0, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    sget-object p0, Lb6/q0;->B:Lb6/q0;

    iget-object p3, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p3, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/q0;->x:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Lb6/r0;->Q()Ljava/text/DateFormat;

    move-result-object p3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lb6/q0;->x:Lb6/q0;

    iget-object v0, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p3}, Lb6/r0;->Q()Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
