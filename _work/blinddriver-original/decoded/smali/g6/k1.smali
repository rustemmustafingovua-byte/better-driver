.class public Lg6/k1;
.super Lb6/w;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:I

.field public final m:Ljava/lang/Class;

.field public final n:Lg6/v;


# direct methods
.method public constructor <init>(ILjava/lang/Class;Lg6/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg6/k1;->l:I

    iput-object p2, p0, Lg6/k1;->m:Ljava/lang/Class;

    iput-object p3, p0, Lg6/k1;->n:Lg6/v;

    return-void
.end method


# virtual methods
.method public a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg6/k1;->m:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lg6/k1;->b(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const-class p0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lb6/i;->q:Lb6/h;

    sget-object v2, Lb6/j;->L:Lb6/j;

    invoke-virtual {p0, v2}, Lb6/h;->t(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-object v1

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v2, "not a valid representation"

    invoke-virtual {p1, v0, p2, v2, p0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "not a valid representation, problem: (%s) %s"

    invoke-virtual {p1, v0, p2, v2, p0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public b(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg6/k1;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lg6/k1;->m:Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Internal error: unknown key type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    :try_start_0
    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    iget-object v0, v0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->s:Ls5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, La6/d;

    invoke-direct {v2, v1}, La6/d;-><init>(La6/b;)V

    invoke-virtual {v0, p2, v2}, Ls5/a;->b(Ljava/lang/String;La6/d;)V

    invoke-virtual {v2}, La6/d;->n()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/k1;->c(Lb6/i;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Lb6/i;->u()Lt6/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lt6/p;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "unable to parse key as Class"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, p0, v0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_2
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/k1;->c(Lb6/i;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_3
    :try_start_3
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/k1;->c(Lb6/i;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_4
    :try_start_4
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p0

    :catch_4
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/k1;->c(Lb6/i;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_5
    invoke-virtual {p1, p2}, Lb6/i;->r0(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iget-object p1, p1, Lb6/i;->q:Lb6/h;

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ld6/a;->t:Ljava/util/TimeZone;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :pswitch_6
    invoke-virtual {p1, p2}, Lb6/i;->r0(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :pswitch_7
    :try_start_5
    iget-object v0, p0, Lg6/k1;->n:Lg6/v;

    invoke-virtual {v0, p1, p2}, Lg6/v;->Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/k1;->c(Lb6/i;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_8
    sget-object p0, Lw5/h;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lw5/h;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p2}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p2}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "can only convert 1-character Strings"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, p0, v0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_d
    invoke-static {p2}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0

    const/16 v0, -0x8000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "overflow, value cannot be represented as 16-bit value"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, p0, v0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_e
    invoke-static {p2}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0

    const/16 v0, -0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "overflow, value cannot be represented as 8-bit value"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, p0, v0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_f
    const-string p0, "true"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-string p0, "false"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    const-string p0, "value not \'true\' or \'false\'"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, p0, v0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lb6/i;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p3}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lg6/k1;->m:Ljava/lang/Class;

    const-string v0, "problem: %s"

    invoke-virtual {p1, p0, p2, v0, p3}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
