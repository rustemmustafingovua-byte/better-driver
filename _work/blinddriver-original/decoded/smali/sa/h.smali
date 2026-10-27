.class public abstract Lsa/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbb/j;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-object v0, Lbb/j;->o:Lbb/j;

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/h;->a:Lbb/j;

    const-string v9, "WINDOW_UPDATE"

    const-string v10, "CONTINUATION"

    const-string v1, "DATA"

    const-string v2, "HEADERS"

    const-string v3, "PRIORITY"

    const-string v4, "RST_STREAM"

    const-string v5, "SETTINGS"

    const-string v6, "PUSH_PROMISE"

    const-string v7, "PING"

    const-string v8, "GOAWAY"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsa/h;->b:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lsa/h;->c:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toBinaryString(...)"

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%8s"

    invoke-static {v6, v5}, Lma/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v5, v4, v6}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lsa/h;->d:[Ljava/lang/String;

    sget-object v0, Lsa/h;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "END_STREAM"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    filled-new-array {v3}, [I

    move-result-object v1

    const-string v3, "PADDED"

    const/16 v5, 0x8

    aput-object v3, v0, v5

    aget v3, v1, v2

    or-int/lit8 v6, v3, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v3

    const-string v8, "|PADDED"

    invoke-static {v7, v3, v8}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const-string v3, "END_HEADERS"

    const/4 v6, 0x4

    aput-object v3, v0, v6

    const-string v3, "PRIORITY"

    aput-object v3, v0, v4

    const-string v3, "END_HEADERS|PRIORITY"

    const/16 v7, 0x24

    aput-object v3, v0, v7

    filled-new-array {v6, v4, v7}, [I

    move-result-object v0

    move v3, v2

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    aget v6, v1, v2

    sget-object v7, Lsa/h;->c:[Ljava/lang/String;

    or-int v9, v6, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v7, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v12, v7, v4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    or-int/2addr v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v7, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v7, v4

    invoke-static {v10, v4, v8}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lsa/h;->c:[Ljava/lang/String;

    array-length v0, v0

    :goto_2
    if-ge v2, v0, :cond_3

    sget-object v1, Lsa/h;->c:[Ljava/lang/String;

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    sget-object v3, Lsa/h;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lsa/h;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "0x%02x"

    invoke-static {v0, p0}, Lma/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(IIIIZ)Ljava/lang/String;
    .locals 4

    invoke-static {p2}, Lsa/h;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    const-string p2, ""

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    sget-object v2, Lsa/h;->d:[Ljava/lang/String;

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_6

    const/4 v1, 0x4

    if-eq p2, v1, :cond_4

    const/4 v1, 0x6

    if-eq p2, v1, :cond_4

    const/4 v1, 0x7

    if-eq p2, v1, :cond_6

    const/16 v1, 0x8

    if-eq p2, v1, :cond_6

    sget-object v1, Lsa/h;->c:[Ljava/lang/String;

    array-length v3, v1

    if-ge p3, v3, :cond_1

    aget-object v1, v1, p3

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    aget-object v1, v2, p3

    :goto_0
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    const-string p2, "HEADERS"

    const-string p3, "PUSH_PROMISE"

    invoke-static {v1, p2, p3}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    and-int/lit8 p2, p3, 0x20

    if-eqz p2, :cond_3

    const-string p2, "PRIORITY"

    const-string p3, "COMPRESSED"

    invoke-static {v1, p2, p3}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v1

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    if-ne p3, p2, :cond_5

    const-string p2, "ACK"

    goto :goto_1

    :cond_5
    aget-object p2, v2, p3

    goto :goto_1

    :cond_6
    aget-object p2, v2, p3

    :goto_1
    if-eqz p4, :cond_7

    const-string p3, "<<"

    goto :goto_2

    :cond_7
    const-string p3, ">>"

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p0, p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s 0x%08x %5d %-13s %s"

    invoke-static {p1, p0}, Lma/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(ZIIJ)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lsa/h;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "<<"

    goto :goto_0

    :cond_0
    const-string p0, ">>"

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p0, p1, p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s 0x%08x %5d %-13s %d"

    invoke-static {p1, p0}, Lma/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
