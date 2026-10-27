.class public abstract Lcd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La1/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lcd/f;->a:Lt8/o;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x430

    if-gt v3, v2, :cond_0

    const/16 v4, 0x450

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x410

    if-gt v4, v2, :cond_1

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "\u0456\u0457\u0454\u0491\u0406\u0407\u0404\u0490"

    invoke-static {v3, v2}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "s"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcd/g;->a:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcd/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcd/f;->a:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcd/e;

    iget-object v2, v1, Lcd/e;->a:Lr9/i;

    invoke-virtual {v2, p0}, Lr9/i;->e(Ljava/lang/String;)Lr9/g;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v1, Lcd/e;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lu8/a;

    invoke-virtual {v0}, Lu8/a;->a()I

    move-result v0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_4

    add-int/lit8 v3, v1, -0x1

    const-string v4, "{"

    const-string v5, "}"

    invoke-static {v3, v4, v5}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lr9/g;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Lr9/e;

    invoke-virtual {v4, v1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object p0
.end method
