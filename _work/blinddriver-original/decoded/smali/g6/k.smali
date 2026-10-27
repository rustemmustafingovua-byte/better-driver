.class public final Lg6/k;
.super Lg6/l;
.source "SourceFile"


# instance fields
.field public final q:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lg6/l;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg6/k;->q:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    const-class p1, Ljava/util/GregorianCalendar;

    invoke-direct {p0, p1}, Lg6/l;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lu6/h;->k(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lg6/k;->q:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Lg6/k;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lg6/l;-><init>(Lg6/l;Ljava/text/DateFormat;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lg6/k;->q:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lg6/k;->q:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final Z(Ljava/text/DateFormat;Ljava/lang/String;)Lg6/l;
    .locals 1

    new-instance v0, Lg6/k;

    invoke-direct {v0, p0, p1, p2}, Lg6/k;-><init>(Lg6/k;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lg6/l;->D(Ls5/k;Lb6/i;)Ljava/util/Date;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lg6/k;->q:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    iget-object p0, p2, Lb6/i;->q:Lb6/h;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ld6/a;->t:Ljava/util/TimeZone;

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p2, Lb6/i;->q:Lb6/h;

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ld6/a;->t:Ljava/util/TimeZone;

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    return-object v1

    :goto_0
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method
