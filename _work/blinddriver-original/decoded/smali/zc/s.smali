.class public abstract Lzc/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;

.field public static final b:Lr9/i;

.field public static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr9/i;

    sget-object v1, Lr9/j;->l:[Lr9/j;

    const/4 v1, 0x0

    const-string v2, "https?://[^\\s<>\"\']*waze\\.com/[^\\s<>\"\']*"

    invoke-direct {v0, v2, v1}, Lr9/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzc/s;->a:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "[A-Za-z0-9_-]{8,64}"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/s;->b:Lr9/i;

    const-string v0, "na"

    const-string v1, "il"

    const-string v2, "row"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lzc/s;->c:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lzc/r;
    .locals 4

    const-string v0, "text"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lzc/s;->a:Lr9/i;

    invoke-static {v0, p0}, Lr9/i;->c(Lr9/i;Ljava/lang/String;)Lf9/h;

    move-result-object p0

    new-instance v0, Lk/k0;

    invoke-direct {v0, p0}, Lk/k0;-><init>(Lf9/h;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lk/k0;->hasNext()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Lk/k0;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr9/g;

    invoke-virtual {p0}, Lr9/g;->c()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-static {p0, v2}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    const-string v2, "a=share_drive"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/live-map/meeting"

    invoke-static {p0, v2, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, "sd"

    invoke-static {p0, v2}, Lzc/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "token"

    invoke-static {p0, v2}, Lzc/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    sget-object v3, Lzc/s;->b:Lr9/i;

    invoke-virtual {v3, v2}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "env"

    invoke-static {p0, v0}, Lzc/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lzc/s;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v1, p0

    :cond_5
    if-nez v1, :cond_7

    :cond_6
    const-string v1, "row"

    :cond_7
    new-instance p0, Lzc/r;

    invoke-direct {p0, v2, v1}, Lzc/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_8
    return-object v1

    :array_0
    .array-data 2
        0x2es
        0x2cs
        0x29s
        0x5ds
        0x21s
        0x3bs
    .end array-data
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[?&]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=([^&#\\s]+)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "matcher(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    check-cast p0, Lr9/e;

    invoke-virtual {p0, p1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lzc/q;)Ljava/util/ArrayList;
    .locals 15

    iget-object p0, p0, Lzc/q;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v4, Lua/nav/routing/GeoPoint;

    new-instance v6, Lid/j1;

    iget-wide v7, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v4, Lua/nav/routing/GeoPoint;->b:D

    int-to-long v11, v2

    const-wide/16 v13, 0xbb8

    mul-long/2addr v11, v13

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lid/j1;-><init>(DDJLjava/lang/Float;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lg5/f;->P()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-object v0
.end method
