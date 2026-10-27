.class public abstract Lg6/l;
.super Lg6/m1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final o:Ljava/text/DateFormat;

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg6/l;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0

    .line 4
    iget-object p1, p1, Lg6/f1;->l:Ljava/lang/Class;

    .line 5
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 6
    iput-object p2, p0, Lg6/l;->o:Ljava/text/DateFormat;

    .line 7
    iput-object p3, p0, Lg6/l;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lg6/l;->o:Ljava/text/DateFormat;

    .line 3
    iput-object p1, p0, Lg6/l;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final D(Ls5/k;Lb6/i;)Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Lg6/l;->o:Ljava/text/DateFormat;

    if-eqz v0, :cond_2

    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/t1;->d(I)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Ljava/util/Date;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lg6/l;->o:Ljava/text/DateFormat;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lg6/l;->o:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lg6/f1;->l:Ljava/lang/Class;

    const-string v3, "expected format \"%s\""

    iget-object p0, p0, Lg6/l;->p:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v2, p1, v3, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-super {p0, p1, p2}, Lg6/f1;->D(Ls5/k;Lb6/i;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public abstract Z(Ljava/text/DateFormat;Ljava/lang/String;)Lg6/l;
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 6

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p2

    iget-object p1, p1, Lb6/i;->q:Lb6/h;

    if-eqz p2, :cond_13

    iget-object v0, p2, Lr5/q;->l:Ljava/lang/String;

    iget-object v1, p2, Lr5/q;->n:Ljava/util/Locale;

    invoke-virtual {p2}, Lr5/q;->c()Ljava/util/TimeZone;

    move-result-object v2

    iget-object p2, p2, Lr5/q;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Ld6/m;->m:Ld6/a;

    iget-object v1, v1, Ld6/a;->r:Ljava/util/Locale;

    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-nez v2, :cond_1

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ld6/a;->t:Ljava/util/TimeZone;

    :cond_1
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->setLenient(Z)V

    :cond_2
    invoke-virtual {p0, v3, v0}, Lg6/l;->Z(Ljava/text/DateFormat;Ljava/lang/String;)Lg6/l;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lg6/l;->p:Ljava/lang/String;

    const-class v3, Lu6/w;

    if-eqz v2, :cond_c

    iget-object v4, p1, Ld6/m;->m:Ld6/a;

    iget-object v4, v4, Ld6/a;->q:Ljava/text/DateFormat;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v3, :cond_a

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    iget-object v1, p1, Ld6/a;->r:Ljava/util/Locale;

    :goto_1
    check-cast v4, Lu6/w;

    iget-object p1, v4, Lu6/w;->l:Ljava/util/TimeZone;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lu6/w;

    iget-object v3, v4, Lu6/w;->m:Ljava/util/Locale;

    iget-object v5, v4, Lu6/w;->n:Ljava/lang/Boolean;

    iget-boolean v4, v4, Lu6/w;->q:Z

    invoke-direct {p1, v2, v3, v5, v4}, Lu6/w;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    move-object v4, p1

    :cond_6
    :goto_2
    iget-object p1, v4, Lu6/w;->m:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lu6/w;

    iget-object v2, v4, Lu6/w;->l:Ljava/util/TimeZone;

    iget-object v3, v4, Lu6/w;->n:Ljava/lang/Boolean;

    iget-boolean v4, v4, Lu6/w;->q:Z

    invoke-direct {p1, v2, v1, v3, v4}, Lu6/w;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    move-object v4, p1

    :goto_3
    if-eqz p2, :cond_b

    iget-object p1, v4, Lu6/w;->n:Ljava/lang/Boolean;

    if-ne p2, p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Lu6/w;

    iget-object v1, v4, Lu6/w;->l:Ljava/util/TimeZone;

    iget-object v2, v4, Lu6/w;->m:Ljava/util/Locale;

    iget-boolean v3, v4, Lu6/w;->q:Z

    invoke-direct {p1, v1, v2, p2, v3}, Lu6/w;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    move-object v4, p1

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/text/DateFormat;

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->setLenient(Z)V

    :cond_b
    :goto_4
    invoke-virtual {p0, v4, v0}, Lg6/l;->Z(Ljava/text/DateFormat;Ljava/lang/String;)Lg6/l;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p2, :cond_13

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    iget-object p1, p1, Ld6/a;->q:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v3, :cond_10

    check-cast p1, Lu6/w;

    iget-object v0, p1, Lu6/w;->n:Ljava/lang/Boolean;

    if-ne p2, v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance v0, Lu6/w;

    iget-object v1, p1, Lu6/w;->l:Ljava/util/TimeZone;

    iget-object v2, p1, Lu6/w;->m:Ljava/util/Locale;

    iget-boolean p1, p1, Lu6/w;->q:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lu6/w;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    move-object p1, v0

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[one of: \'yyyy-MM-dd\'T\'HH:mm:ss.SSSX\', \'EEE, dd MMM yyyy HH:mm:ss zzz\' ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p1, Lu6/w;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "strict"

    goto :goto_6

    :cond_f
    const-string v0, "lenient"

    :goto_6
    const-string v1, ")]"

    invoke-static {p2, v0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setLenient(Z)V

    instance-of p2, p1, Ljava/text/SimpleDateFormat;

    if-eqz p2, :cond_11

    move-object p2, p1

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    :cond_11
    :goto_7
    if-nez v0, :cond_12

    const-string v0, "[unknown]"

    :cond_12
    invoke-virtual {p0, p1, v0}, Lg6/l;->Z(Ljava/text/DateFormat;Ljava/lang/String;)Lg6/l;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg6/l;->D(Ls5/k;Lb6/i;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->w:Lt6/f;

    return-object p0
.end method
