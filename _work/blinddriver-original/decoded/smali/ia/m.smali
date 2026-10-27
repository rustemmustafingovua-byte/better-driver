.class public abstract Lia/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lha/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.serialization.json.JsonUnquotedLiteral"

    sget-object v1, Lha/a1;->a:Lha/a1;

    invoke-static {v0, v1}, Lha/n0;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lha/x;

    move-result-object v0

    sput-object v0, Lia/m;->a:Lha/x;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lia/d0;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lia/v;->INSTANCE:Lia/v;

    return-object p0

    :cond_0
    new-instance v0, Lia/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lia/s;-><init>(Ljava/io/Serializable;Z)V

    return-object v0
.end method

.method public static final b(Lia/l;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Lia/d0;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lia/m;->g(Lia/d0;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Lja/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long p0, v3, v1

    if-gtz p0, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long p0, v1, v3

    if-gtz p0, :cond_0

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static final d(Lia/l;)Lia/e;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lia/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lia/e;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "JsonArray"

    invoke-static {p0, v0}, Lia/m;->b(Lia/l;Ljava/lang/String;)V

    throw v1
.end method

.method public static final e(Lia/l;)Lia/y;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lia/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lia/y;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "JsonObject"

    invoke-static {p0, v0}, Lia/m;->b(Lia/l;Ljava/lang/String;)V

    throw v1
.end method

.method public static final f(Lia/l;)Lia/d0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lia/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lia/d0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "JsonPrimitive"

    invoke-static {p0, v0}, Lia/m;->b(Lia/l;Ljava/lang/String;)V

    throw v1
.end method

.method public static final g(Lia/d0;)J
    .locals 5

    new-instance v0, Lja/s;

    invoke-virtual {p0}, Lia/d0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lja/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lja/s;->h()J

    move-result-wide v1

    invoke-virtual {v0}, Lja/s;->e()B

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    iget v1, v0, Lja/s;->a:I

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "EOF"

    :goto_1
    const-string v1, "Expected input to contain a single valid number, but got \'"

    const-string v3, "\' after it"

    invoke-static {v1, p0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-static {v0, p0, v2, v1}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-wide v1
.end method
