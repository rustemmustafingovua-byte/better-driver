.class public final Lcd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcd/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcd/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcd/j;->a:Lcd/j;

    return-void
.end method

.method public static a(Lcd/j;D)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/16 p1, 0x2e

    const/16 p2, 0x2c

    invoke-static {p0, p1, p2}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(D)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    invoke-static {}, Lcd/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide v0, 0x3fd381d7dbf487fdL    # 0.3048

    div-double v0, p1, v0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    cmpg-double p0, p1, v2

    if-gez p0, :cond_0

    const/16 p0, 0xa

    int-to-double p1, p0

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ll9/a;->y(D)I

    move-result p1

    mul-int/2addr p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ft"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x40cf6eb851eb851fL    # 16093.44

    cmpg-double p0, p1, v0

    const-string v0, " mi"

    const-wide v1, 0x409925604189374cL    # 1609.344

    if-gez p0, :cond_1

    div-double/2addr p1, v1

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ll9/a;->y(D)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v1, 0x408f400000000000L    # 1000.0

    cmpg-double v1, p1, v1

    const-string v2, " "

    if-gez v1, :cond_4

    double-to-int p0, p1

    if-eqz v0, :cond_3

    const-string p1, "m"

    goto :goto_0

    :cond_3
    const-string p1, "\u043c"

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v1, 0x3e8

    int-to-double v3, v1

    div-double/2addr p1, v3

    invoke-static {p0, p1, p2}, Lcd/j;->a(Lcd/j;D)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_5

    const-string p1, "km"

    goto :goto_1

    :cond_5
    const-string p1, "\u043a\u043c"

    :goto_1
    invoke-static {p0, v2, p1}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(D)Ljava/lang/String;
    .locals 11

    sget-object v0, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    const/16 v1, 0x3e8

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    const/16 v6, 0x32

    const/16 v7, 0xa

    if-nez v0, :cond_2

    cmpg-double v0, p1, v4

    const-string v4, " \u043c\u0435\u0442\u0440\u0456\u0432"

    const-string v5, "\u0447\u0435\u0440\u0435\u0437 "

    if-gez v0, :cond_0

    int-to-double v0, v7

    div-double/2addr p1, v0

    double-to-int p0, p1

    mul-int/2addr p0, v7

    invoke-static {p0, v5, v4}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    int-to-double v0, v6

    div-double/2addr p1, v0

    double-to-int p0, p1

    mul-int/2addr p0, v6

    invoke-static {p0, v5, v4}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-double v0, v1

    div-double/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcd/j;->a(Lcd/j;D)Ljava/lang/String;

    move-result-object p0

    const-string p1, " \u043a\u043c"

    invoke-static {v5, p0, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcd/a;->a()Z

    move-result p0

    const/4 v0, 0x1

    const-string v8, "in "

    if-eqz p0, :cond_9

    const-wide v9, 0x3fd381d7dbf487fdL    # 0.3048

    div-double v9, p1, v9

    cmpg-double p0, v9, v4

    const-string v1, " feet"

    if-gez p0, :cond_4

    int-to-double p0, v7

    div-double/2addr v9, p0

    double-to-int p0, v9

    if-ge p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    mul-int/2addr v0, v7

    invoke-static {v0, v8, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    cmpg-double p0, v9, v2

    if-gez p0, :cond_5

    int-to-double p0, v6

    div-double/2addr v9, p0

    double-to-int p0, v9

    mul-int/2addr p0, v6

    invoke-static {p0, v8, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide v1, 0x409925604189374cL    # 1609.344

    div-double/2addr p1, v1

    const-wide v1, 0x3fdccccccccccccdL    # 0.45

    cmpg-double p0, v1, p1

    if-gtz p0, :cond_6

    const-wide v1, 0x3fe199999999999aL    # 0.55

    cmpg-double p0, p1, v1

    if-gtz p0, :cond_6

    const-string p0, "in half a mile"

    return-object p0

    :cond_6
    const-wide v1, 0x3fee666666666666L    # 0.95

    cmpg-double p0, p1, v1

    const-string v1, " miles"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    if-gez p0, :cond_7

    int-to-double v4, v7

    mul-double/2addr p1, v4

    double-to-int p0, p1

    int-to-double p0, p0

    div-double/2addr p0, v2

    invoke-static {p0, p1, v0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double p0, p1, v4

    if-gez p0, :cond_8

    const-string p0, "in 1 mile"

    return-object p0

    :cond_8
    int-to-double v4, v7

    mul-double/2addr p1, v4

    double-to-int p0, p1

    int-to-double p0, p0

    div-double/2addr p0, v2

    invoke-static {p0, p1, v0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    cmpg-double p0, p1, v4

    const-string v4, " meters"

    if-gez p0, :cond_a

    int-to-double v0, v7

    div-double/2addr p1, v0

    double-to-int p0, p1

    mul-int/2addr p0, v7

    invoke-static {p0, v8, v4}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    cmpg-double p0, p1, v2

    if-gez p0, :cond_b

    int-to-double v0, v6

    div-double/2addr p1, v0

    double-to-int p0, p1

    mul-int/2addr p0, v6

    invoke-static {p0, v8, v4}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    int-to-double v1, v1

    div-double/2addr p1, v1

    invoke-static {p1, p2, v0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    const-string p1, " kilometers"

    invoke-static {v8, p0, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
