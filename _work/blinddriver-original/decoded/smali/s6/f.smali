.class public final Ls6/f;
.super Ls6/j;
.source "SourceFile"


# static fields
.field public static final r:Ls6/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls6/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ls6/f;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    sput-object v0, Ls6/f;->r:Ls6/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 1

    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Ls6/j;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/Boolean;Ljava/text/DateFormat;)Ls6/j;
    .locals 0

    new-instance p0, Ls6/f;

    invoke-direct {p0, p1, p2}, Ls6/f;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p3}, Ls6/j;->j(Lb6/r0;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    :goto_0
    invoke-virtual {p2, p0, p1}, Ls5/g;->Y(J)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Ls6/j;->k(Ljava/util/Date;Ls5/g;Lb6/r0;)V

    return-void
.end method
