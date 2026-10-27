.class public final Led/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;

.field public static final b:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "trip_(\\d{4})(\\d{2})(\\d{2})_(\\d{2})(\\d{2})(\\d{2})\\.csv"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/i;->a:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "route_(\\d{8}_\\d{6})\\.json"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/i;->b:Lr9/i;

    return-void
.end method

.method public static a(JLjava/util/TimeZone;I)J
    .locals 0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    neg-int p1, p3

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/io/File;)Ljava/util/List;
    .locals 13

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dir"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [Ljava/io/File;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "getName(...)"

    invoke-static {v4, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Led/i;->c(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    new-instance v4, Led/g;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct/range {v4 .. v11}, Led/g;-><init>(Ljava/io/File;JJJ)V

    goto :goto_1

    :cond_1
    move-object v4, v12

    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v12, v4

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Led/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/Long;
    .locals 13

    const-string v0, "name"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Led/i;->a:Lr9/i;

    invoke-virtual {v0, p0}, Lr9/i;->e(Ljava/lang/String;)Lr9/g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    check-cast v2, Lr9/e;

    invoke-virtual {v2, v3}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    check-cast v3, Lr9/e;

    invoke-virtual {v3, v4}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x4

    check-cast v4, Lr9/e;

    invoke-virtual {v4, v5}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x5

    check-cast v5, Lr9/e;

    invoke-virtual {v5, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 v6, 0x6

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v8, p1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;JLjava/io/File;)Lt8/j;
    .locals 10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dir"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [Ljava/io/File;

    :cond_0
    array-length v2, p0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v6, p0, v1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Led/i;->c(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Led/i;->b:Lr9/i;

    invoke-virtual {v8, v7}, Lr9/i;->e(Ljava/lang/String;)Lr9/g;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lr9/g;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lr9/e;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "trip_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ".csv"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Led/i;->c(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    goto :goto_1

    :goto_3
    cmp-long v7, v7, p1

    if-gez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-long/2addr v4, v7

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lt8/j;

    invoke-direct {p2, p0, p1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
